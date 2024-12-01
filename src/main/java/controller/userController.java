package controller;

import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.usuarios;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpSession;

@WebServlet(name = "userController", urlPatterns = {"/userController"})
public class userController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "delete":
                    manejoDelete(request, response);
                    break;
                case "update":
                    manejoActualizar(request, response);
                    break;
                case "new":
                    manejoAgregarUsuario(request, response);
                    break;
                default:
                    manejoLogin(request, response);
                    break;
            }
        } else {
            manejoLogin(request, response);
        }
    }

    private void manejoDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = request.getParameter("userId");

        if (userId != null && !userId.isEmpty()) {
            int id = Integer.parseInt(userId);
            if (usuarios.buscarPorId(id)) {
                usuarios.EliminarUserByID(id);
                request.setAttribute("message", "Usuario eliminado exitosamente!");
            } else {
                request.setAttribute("message", "Usuario no encontrado!");
            }
        }

        RequestDispatcher rd = request.getRequestDispatcher("removeUser.jsp");
        rd.forward(request, response);
    }

    private void manejoAgregarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String pwd = request.getParameter("pwd");
        String fechaNacStr = request.getParameter("fecha_nac");
        Date fechaNac = null;

        String errorMessage = "";
        if (nombre == null || nombre.isEmpty()) {
            errorMessage += "Nombre es requerido. <br>";
        }
        if (correo == null || correo.isEmpty() || !isValidEmail(correo)) {
            errorMessage += "Correo inválido. <br>";
        }
        if (pwd == null || pwd.isEmpty()) {
            errorMessage += "Contraseña es requerida. <br>";
        }
        if (fechaNacStr != null && !fechaNacStr.isEmpty()) {
            try {
                fechaNac = usuarios.formateoFecha(fechaNacStr);
            } catch (Exception e) {
                errorMessage += "Formato de fecha inválido. <br>";
            }
        }

        if (!errorMessage.isEmpty()) {
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);
            return;
        }

        usuarios newUser = new usuarios(correo, pwd, nombre, true, fechaNac);

        boolean success = usuarios.agregarUsuario2(newUser, null);
        if (success) {
            request.setAttribute("message", "Usuario agregado exitosamente!");
            RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Error al agregar usuario. Intente nuevamente.");
            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);
        }
    }

    public static boolean isValidEmail(String email) {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."
                + "[a-zA-Z0-9_+&*-]+)*@"
                + "(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";

        Pattern pattern = Pattern.compile(emailRegex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }

    private void manejoActualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userIdStr = request.getParameter("userId");

        if (userIdStr != null && !userIdStr.isEmpty()) {
            try {
                int userId = Integer.parseInt(userIdStr);
                if (usuarios.buscarPorId(userId)) {
                    usuarios updatedUser = new usuarios();
                    updatedUser.setUserId(userId);
                    updatedUser.setNombre(request.getParameter("nombre"));
                    updatedUser.setCorreo(request.getParameter("correo"));
                    updatedUser.setPwd(request.getParameter("pwd"));

                    String fechaNacStr = request.getParameter("fecha_nac");
                    if (fechaNacStr != null && !fechaNacStr.isEmpty()) {
                        Date fechaNac = usuarios.formateoFecha(fechaNacStr);
                        updatedUser.setFecha_nac(fechaNac);
                    }

                    updatedUser.setVigente(true);

                    usuarios.ActualizaUser(updatedUser, userId);
                    request.setAttribute("message", "Usuario actualizado!");
                } else {
                    request.setAttribute("message", "Usuario no encontrado!");
                }
            } catch (NumberFormatException e) {
                request.setAttribute("message", "Formato de ID inválido!");
            }
        }

        RequestDispatcher rd = request.getRequestDispatcher("actualizarUsuario.jsp");
        rd.forward(request, response);
    }

    private void manejoLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("user");
        String pwd = request.getParameter("pwd");
        ArrayList<usuarios> lista = usuarios.consulta();
        usuarios user = new usuarios();

        if (user.validarUsuario2(usuario, pwd)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("username", usuario);
            session.setAttribute("usuarios", lista);

            RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
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
        return "Short description";
    }
}