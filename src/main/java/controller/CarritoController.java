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
                case "pagar":
                    pagar(request, response);
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

        double total = 0;
        if (carrito != null && !carrito.isEmpty()) {
            for (Producto p : carrito) {
                total += p.getPrecio() * p.getCantidad();
            }
        }
        request.setAttribute("total", total);

        RequestDispatcher rd = request.getRequestDispatcher("checkout.jsp");
        rd.forward(request, response);
    }

    private void pagar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        // Verificar si el usuario ha iniciado sesión
        if (session.getAttribute("username") == null) {
            request.setAttribute("message", "Debes iniciar sesión para realizar el pago.");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
            return;
        }

        ArrayList<Producto> carrito = (ArrayList<Producto>) session.getAttribute("carrito");

        if (carrito == null || carrito.isEmpty()) {
            request.setAttribute("message", "El carrito está vacío. Agrega productos antes de pagar.");
        } else {
            String nombre = request.getParameter("nombre");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String tarjeta = request.getParameter("tarjeta");
            String cvv = request.getParameter("cvv");
            String expiracion = request.getParameter("expiracion");

            if (nombre == null || direccion == null || telefono == null
                    || tarjeta == null || cvv == null || expiracion == null
                    || nombre.isEmpty() || direccion.isEmpty() || telefono.isEmpty()
                    || tarjeta.isEmpty() || cvv.isEmpty() || expiracion.isEmpty()) {
                request.setAttribute("message", "Todos los campos son obligatorios para procesar el pago.");
            } else if (!telefono.matches("\\d{10}")) {
                request.setAttribute("message", "El número de teléfono debe contener 10 dígitos.");
            } else if (!tarjeta.matches("\\d{16}")) {
                request.setAttribute("message", "El número de tarjeta debe contener 16 dígitos.");
            } else if (!cvv.matches("\\d{3}")) {
                request.setAttribute("message", "El CVV debe contener 3 dígitos.");
            } else {
                boolean pagoExitoso = procesarPago(carrito, tarjeta, cvv, expiracion);

                if (pagoExitoso) {
                    carrito.clear();
                    session.setAttribute("carrito", carrito);
                    request.setAttribute("message", "¡Pago realizado con éxito! Gracias por tu compra.");
                } else {
                    request.setAttribute("message", "Hubo un problema al procesar el pago. Inténtalo nuevamente.");
                }
            }
        }

        RequestDispatcher rd = request.getRequestDispatcher("checkout.jsp");
        rd.forward(request, response);
    }

    private boolean procesarPago(ArrayList<Producto> carrito, String tarjeta, String cvv, String expiracion) {
        try {
            Thread.sleep(1000);
            return true;
        } catch (InterruptedException e) {
            return false;
        }
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