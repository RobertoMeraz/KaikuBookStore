package controller;

import model.Libro;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/libroController")
public class LibroController extends HttpServlet {
    private List<Libro> libros = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Manejar la solicitud GET para listar todos los libros
        request.setAttribute("libros", libros);
        request.getRequestDispatcher("libros.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Manejar la solicitud POST para crear un nuevo libro
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        double precio = Double.parseDouble(request.getParameter("precio"));
        String imagen = request.getParameter("imagen");

        Libro nuevoLibro = new Libro(titulo, autor, precio, imagen);
        libros.add(nuevoLibro);

        response.sendRedirect(request.getContextPath() + "/libroController");
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Manejar la solicitud PUT para actualizar un libro existente
        // Aquí deberías implementar la lógica para actualizar un libro existente
        // Puedes usar un ID para identificar el libro a actualizar
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Manejar la solicitud DELETE para eliminar un libro
        // Aquí deberías implementar la lógica para eliminar un libro existente
        // Puedes usar un ID para identificar el libro a eliminar
    }
}