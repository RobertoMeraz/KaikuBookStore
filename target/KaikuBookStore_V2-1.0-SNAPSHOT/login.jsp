<!DOCTYPE html>

    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" 
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="estilos/estilo_registro.css">
        <title>Iniciar Sesión</title>
    
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
        <br> <br>
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card text-center">
                        <h3>Iniciar Sesión</h3>
                    </div>
                    <div class="card-body">
                        <!-- Formulario que envía credenciales al controlador -->
                        <form action="userController" method="POST">
                            <!-- Campo de correo -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="email" class="form-control" name="user" placeholder="Correo" id="user" required>
                            </div>
                            <!-- Campo de contraseña -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control" name="pwd" placeholder="Contraseña" id="pwd" required>
                            </div>
                            <!-- Botón de envío -->
                            <div class="card text-center">
                                <input type="hidden" name="action" value="login"> <!-- Acción especificada -->
                                <input type="submit" class="btn btn-primary btn-lg" value="Iniciar Sesión">
                            </div>
                        </form>

                        <!-- Mostrar mensajes de error o confirmación -->
                        <div class="mt-3 text-center">
                            <%
                                String errorMessage = (String) request.getAttribute("errorMessage");
                                String successMessage = (String) request.getAttribute("message");
                                if (errorMessage != null) {
                            %>
                                <div class="alert alert-danger"><%= errorMessage %></div>
                            <%
                                } else if (successMessage != null) {
                            %>
                                <div class="alert alert-success"><%= successMessage %></div>
                            <%
                                }
                            %>
                        </div>

                        <!-- Enlace de registro -->
                        <div style="display: flex; justify-content: center; align-items: center;">
                            <a href="register.jsp">Registrarse</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

