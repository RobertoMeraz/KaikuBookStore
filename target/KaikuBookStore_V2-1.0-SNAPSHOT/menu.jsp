<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="estilos/estilo_registro.css">
        <link rel="stylesheet" href="estilos/estilo_menu.css">
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
        <main class="menu-container">
            <aside>
                <a href="#" class="titulo">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                    Menú Principal
                </a>

                <a href="register.jsp">
                    <i class="fa fa-user-plus" aria-hidden="true"></i>
                    Alta de Usuario
                </a>
                <a href="removeUser.jsp">
                    <i class="fa fa-user-times" aria-hidden="true"></i>
                    Baja de Usuario
                </a>
                <a href="actualizarUsuario.jsp">
                    <i class="fa fa-pencil-square" aria-hidden="true"></i>
                    Modificar Usuario
                </a>
                <a href="consulta.jsp">
                    <i class="fa fa-binoculars" aria-hidden="true"></i>
                    Consultar Usuarios
                </a>
                <a href="login.jsp">
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                    Salir
                </a>
            </aside>
        </main>
        <%
        } else {
        %>   
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Accede al sistema</h5>
                <p class="card-text">Inicia sesión para explorar las opciones disponibles.</p>
                <a href="login.jsp" class="btn btn-primary">Iniciar sesión</a>
            </div>
        </div>
        <%
            }
        %>
    </body>
</html>
