<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Procesar Pago</title>
        <link rel="stylesheet" href="estilos/estilo_checkout.css">
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

        <h1>Procesar Pago</h1>
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
        <div style="color: red; font-weight: bold;"><%= message%></div>
        <%
            }
        %>
        <form id="checkoutForm" action="CarritoController?action=pagar" method="post">
            <div>
                <label for="nombre">Nombre completo:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>

            <div>
                <label for="direccion">Dirección de envío:</label>
                <input type="text" id="direccion" name="direccion" required>
            </div>

            <div>
                <label for="telefono">Teléfono:</label>
                <input type="tel" id="telefono" name="telefono" pattern="[0-9]{10}" required>
                <small>Formato: 10 dígitos</small>
            </div>

            <div>
                <label for="tarjeta">Número de tarjeta:</label>
                <input type="text" id="tarjeta" name="tarjeta" maxlength="16" required>
            </div>

            <div>
                <label for="cvv">CVV:</label>
                <input type="password" id="cvv" name="cvv" maxlength="3" required>
            </div>

            <div>
                <label for="expiracion">Fecha de expiración:</label>
                <input type="month" id="expiracion" name="expiracion" required>
            </div>

            <div>
                <label for="total">Total a pagar:</label>
                <input type="text" id="total" name="total" value="<%= request.getAttribute("total") != null ? request.getAttribute("total") : ""%>" readonly>
            </div>

            <button type="submit">Pagar</button>
        </form>
        <button onclick="history.back()" class="btn btn-secondary mt-2">Regresar</button>   
    </body>
</html>