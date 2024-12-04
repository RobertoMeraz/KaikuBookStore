<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Eliminar Usuario</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="estilo/estiloremove.css">
        <link rel="stylesheet" href="estilos/estilo_registro.css">
    </head>
    <body>
        <header>
        <a href="" class="logo">
            <img src="imagenes/logo 1.png" alt="LOGO KAIKU">
            <span>KAIKUBOOKSTORE</span>
        </a>
        <nav>
            <ul>
                <li><a href="index.html">Inicio</a></li>
                <li><a href="menu.jsp">Menu</a></li>
                <li><a href="acercade.html">Acerca de</a></li>
                <li><a href="editoriales.html">Editoriales</a></li>
                <li><a href="catalogo.jsp">Comprar</a></li>
                <li><a href="carrito.jsp">Carrito</a></li>
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
                        <div class="card-header text-center">
                            <h4 class="mb-0">
                                <i class="fas fa-user-minus"></i> Eliminar Usuario
                            </h4>
                        </div>
                        <div class="card-body">
                            <form action="userController" method="post" id="delete">
                                <input type="hidden" name="action" value="delete">

                                <div class="mb-3">
                                    <label for="userId" class="form-label">ID del Usuario:</label>
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-id-card"></i>
                                        </span>
                                        <input type="number" 
                                               class="form-control" 
                                               id="userId" 
                                               name="userId" 
                                               placeholder="Ingrese el ID del usuario"
                                               required
                                               min="1">
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-danger w-100">
                                    <i class="fas fa-trash-alt"></i> Eliminar Usuario
                                </button>
                            </form>

                            <% if (request.getAttribute("error") != null) {%>
                            <div class="alert alert-danger mt-3">
                                <%= request.getAttribute("error")%>
                            </div>
                            <% } %>

                            <% if (request.getAttribute("message") != null) {%>
                            <div class="alert alert-success mt-3">
                                <%= request.getAttribute("message")%>
                            </div>
                            <% }%>
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
                <h5 class="card-title">Accede a las opciones</h5>
                <p class="card-text">Inicia sesión para realizar la eliminación de usuarios.</p>
                <a href="login.jsp" class="btn btn-primary">Iniciar sesión</a>
            </div>
        </div>
        <%
            }
        %>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
