<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" href="estilos/estilo_registro.css">
  <title>Registrarse</title>
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
  <br> <br>
  <div class="container">
    <div class="d-flex justify-content-center h-100">
      <div class="card">
        <div class="card text-center">
          <h3>Registrarse</h3>
        </div>
        <div class="card-body">
          <form action="userController" method="post">
            <input type="hidden" name="action" value="new">
            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-user"></i></span>
              </div>
              <input type="text" class="form-control" name="nombre" placeholder="Nombre completo" id="nombre" required>
            </div>
            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
              </div>
              <input type="email" class="form-control" name="correo" placeholder="Correo electrónico" id="correo" required>
            </div>
            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-key"></i></span>
              </div>
              <input type="password" class="form-control" name="pwd" placeholder="Contraseña" id="pwd" required>
            </div>
            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-key"></i></span>
              </div>
              <input type="password" class="form-control" name="confirmPassword" placeholder="Confirmar contraseña" id="confirmPassword" required>
            </div>
            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-calendar"></i></span>
              </div>
              <input type="text" class="form-control" name="fecha_nac" placeholder="Fecha de Nacimiento (dd/MM/yyyy)" id="fecha_nac">
            </div>
            <div class="card text-center">
              <input type="submit" class="btn btn-primary btn-lg" value="Registrarse">
            </div>
          </form>
          <div style="display: flex; justify-content: center; align-items: center;">
            <a href="login.jsp">Iniciar Sesión</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null && !errorMessage.isEmpty()) {
  %>
  <div class="alert alert-danger" role="alert">
    <%= errorMessage %>
  </div>
  <%
    }
  %>

  <%
    String message = (String) request.getAttribute("message");
    if (message != null && !message.isEmpty()) {
  %>
  <div class="alert alert-success" role="alert">
    <%= message %>
  </div>
  <%
    }
  %>

</body>
</html>