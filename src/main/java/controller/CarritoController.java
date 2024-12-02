package controller;

import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Producto;

@WebServlet(name = "CarritoController", urlPatterns = {"/CarritoController"})
public class CarritoController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "add":
                    agregarProducto(request, response);
                    break;
                case "view":
                    verCarrito(request, response);
                    break;
                case "checkout":
                    realizarCompra(request, response);
                    break;
                default:
                    response.sendRedirect("catalogo.jsp");
                    break;
            }
        } else {
            response.sendRedirect("catalogo.jsp");
        }
    }

   private void agregarProducto(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    try {
        // Obtener datos del formulario
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));

        if (cantidad <= 0 || precio < 0) {
            throw new IllegalArgumentException("Cantidad o precio inválidos.");
        }

        Producto producto = new Producto(id, nombre, precio, cantidad);

        HttpSession session = request.getSession();
        ArrayList<Producto> carrito = (ArrayList<Producto>) session.getAttribute("carrito");
        if (carrito == null) {
            carrito = new ArrayList<>();
        }

        boolean productoExistente = false;
        for (Producto p : carrito) {
            if (p.getId() == id) {
                p.setCantidad(p.getCantidad() + cantidad);
                productoExistente = true;
                break;
            }
        }
        if (!productoExistente) {
            carrito.add(producto);
        }

        session.setAttribute("carrito", carrito);

        double total = 0;
        for (Producto p : carrito) {
            total += p.getPrecio() * p.getCantidad();
        }

        request.setAttribute("carrito", carrito);
        request.setAttribute("total", total);

        RequestDispatcher rd = request.getRequestDispatcher("carrito.jsp");
        rd.forward(request, response);
    } catch (NumberFormatException e) {
        request.setAttribute("message", "Error en el formato de datos numéricos: " + e.getMessage());
        RequestDispatcher rd = request.getRequestDispatcher("catalogo.jsp");
        rd.forward(request, response);
    } catch (IllegalArgumentException e) {
        request.setAttribute("message", "Datos inválidos: " + e.getMessage());
        RequestDispatcher rd = request.getRequestDispatcher("catalogo.jsp");
        rd.forward(request, response);
    }
}

    private void verCarrito(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Producto> carrito = (ArrayList<Producto>) session.getAttribute("carrito");

        if (carrito == null || carrito.isEmpty()) {
            request.setAttribute("message", "El carrito está vacío.");
        } else {
            request.setAttribute("carrito", carrito);
            double total = 0;
            for (Producto p : carrito) {
                total += p.getPrecio() * p.getCantidad();
            }
            request.setAttribute("total", total);
        }

        RequestDispatcher rd = request.getRequestDispatcher("carrito.jsp");
        rd.forward(request, response);
    }

    private void realizarCompra(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Producto> carrito = (ArrayList<Producto>) session.getAttribute("carrito");

        if (carrito == null || carrito.isEmpty()) {
            request.setAttribute("message", "El carrito está vacío.");
        } else {
            carrito.clear();
            session.setAttribute("carrito", carrito);
            request.setAttribute("message", "Compra realizada con éxito.");
        }

        RequestDispatcher rd = request.getRequestDispatcher("carrito.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "CarritoController maneja acciones del carrito de compras.";
    }
}
