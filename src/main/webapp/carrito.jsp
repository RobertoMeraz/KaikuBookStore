<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Carrito de Compras</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
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
        <div class="container">
            <h1 class="text-center mb-4">Carrito de Compras</h1>

            <%-- Mensaje de información --%>
            <%
                String message = (String) request.getAttribute("message");
                if (message != null) {
            %>
            <div class="alert alert-info" role="alert"><%= message%></div>
            <%
                }
            %>

            <%-- Validar carrito --%>
            <%
                ArrayList<model.Producto> carrito = (ArrayList<model.Producto>) request.getAttribute("carrito");
                Double total = (Double) request.getAttribute("total");

                if (carrito == null || carrito.isEmpty()) {
            %>
            <p class="text-center">Tu carrito está vacío.</p>
            <% } else { %>

            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (model.Producto producto : carrito) {%>
                        <tr>
                            <td><%= producto.getId()%></td>
                            <td><%= producto.getNombre()%></td>
                            <td><%= producto.getPrecio()%></td>
                            <td><%= producto.getCantidad()%></td>
                            <td><%= producto.getPrecio() * producto.getCantidad()%></td>
                        </tr>
                        <% }%>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" class="text-right"><strong>Total a Pagar:</strong></td>
                            <td><%= total%></td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <% }%>

            <div class="text-center mt-4">
                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="checkout">
                    <button type="submit" class="btn btn-primary">Realizar Compra</button>
                </form>

                <!-- Botón para regresar a la página anterior -->
                <button onclick="history.back()" class="btn btn-secondary mt-2">Regresar</button>
            </div>
        </div>
    </body>
</html>
