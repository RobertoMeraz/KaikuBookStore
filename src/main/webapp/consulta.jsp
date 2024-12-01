<%@page import="java.util.ArrayList"%>
<%@page import="model.usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios Registrados</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="estilos/estilo_registro.css">
    </head>
    <body>
        <header>
            <div class="logo">
                <img src="imagenes/logo 1.png" alt="Book icon">
                <span>KAIKUBOOKSTORE</span>
            </div>
            <nav>
                <ul>
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="acercade.html">Acerca de</a></li>
                    <li><a href="editoriales.html">Editoriales</a></li>
                    <li><a href="catalogo.jsp">Comprar</a></li>
                    <li><a href="contacto.jsp">Contacto</a></li>
                </ul>
            </nav>
            <a href="login.jsp">
                <img src="imagenes/login.png" alt="login" height="30" width="30">
            </a>    
        </header>
        <%
            if (session.getAttribute("username") != null) {
        %>
        <div class="container my-5">
            <h1 class="text-center mb-4">Usuarios Registrados</h1>

            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Nombre Completo</th>
                            <th>Correo Electrónico</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Estado Actual</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<usuarios> usuariosList = usuarios.consulta();
                            for (usuarios u : usuariosList) {
                        %>
                        <tr>
                            <td><%= u.getUserId()%></td>
                            <td><%= u.getNombre()%></td>
                            <td><%= u.getCorreo()%></td>
                            <td><%= u.getFecha_nac() != null ? u.getFecha_nac().toString() : "Sin información"%></td>
                            <td><%= u.isVigente() ? "Activo" : "Inactivo"%></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>

            <div class="text-center mt-4">
                <a href="removeUser" class="btn btn-danger me-2">Eliminar Usuario</a>
                <a href="actualizarUsuario.jsp" class="btn btn-primary">Actualizar Usuario</a>
            </div>
        </div>
        <%
        } else {
        %>   
        <div class="card text-center">
            <div class="card-body">
                <h5 class="card-title">¡Accede a tu cuenta!</h5>
                <p class="card-text">Inicia sesión para explorar más funciones.</p>
                <a href="login.jsp" class="btn btn-primary">Iniciar sesión</a>
            </div>
        </div>
        <%
            }
        %>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>