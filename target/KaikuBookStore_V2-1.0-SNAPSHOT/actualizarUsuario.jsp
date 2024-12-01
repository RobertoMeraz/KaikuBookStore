<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Modificar Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
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

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-lg">
                        <div class="card-header text-white bg-dark">
                            <h3 class="text-center">Actualizar datos de usuario</h3>
                        </div>
                        <div class="card-body">
                            <form action="userController" method="POST">
                                <input type="hidden" name="action" value="update">

                                <div class="mb-3">
                                    <label for="userId" class="form-label">ID del Usuario: </label>
                                    <input type="number" class="form-control" id="userId" name="userId" placeholder="Ingrese el ID" required>
                                </div>

                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre completo: </label>
                                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre del usuario">
                                </div>

                                <div class="mb-3">
                                    <label for="correo" class="form-label">Correo electrónico: </label>
                                    <input type="email" class="form-control" id="correo" name="correo" placeholder="Correo del usuario">
                                </div>

                                <div class="mb-3">
                                    <label for="pwd" class="form-label">Nueva contraseña: </label>
                                    <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Ingrese nueva contraseña">
                                </div>

                                <div class="mb-3">
                                    <label for="fecha_nac" class="form-label">Fecha de nacimiento: </label>
                                    <input type="text" class="form-control" id="fecha_nac" name="fecha_nac" placeholder="DD/MM/YYYY">
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-success">
                                        <i class="fa fa-check"></i> Aplicar cambios
                                    </button>
                                </div>
                            </form>

                            <% if (request.getAttribute("message") != null) {%>
                            <div class="alert alert-info mt-3">
                                <%= request.getAttribute("message")%>
                            </div>
                            <% } %>

                            <div class="mt-3 text-center">
                                <a href="consulta.jsp" class="btn btn-secondary">Mostrar usuarios</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%
        } else {
        %>   
        <div class="card text-center">
            <div class="card-body">
                <h5 class="card-title">Acceso limitado</h5>
                <p class="card-text">Para poder actualizar los datos de usuario debe inicia sesión.</p>
                <a href="login.jsp" class="btn btn-primary"><i class="fa fa-sign-in-alt"></i> Iniciar sesión</a>
            </div>
        </div>
        <%
            }
        %>
    </body>
</html>
