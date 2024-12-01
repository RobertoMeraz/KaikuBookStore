<%@page import="java.util.ArrayList"%>
<%@page import="model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Carrito de Compras</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
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

    <div class="container">
        <h1 class="text-center mb-4">Carrito de Compras</h1>

        <%
            String message = (String) request.getAttribute("message");
            if (message != null && !message.isEmpty()) {
        %>
        <div class="alert alert-info" role="alert">
            <%= message %>
        </div>
        <%
            }
        %>

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
                    <%
                        ArrayList<Producto> carrito = (ArrayList<Producto>) request.getAttribute("carrito");
                        double total = 0;
                        if (carrito != null && !carrito.isEmpty()) {
                            for (Producto producto : carrito) {
                                double subtotal = producto.getPrecio() * producto.getCantidad();
                                total += subtotal;
                    %>
                    <tr>
                        <td><%= producto.getId() %></td>
                        <td><%= producto.getNombre() %></td>
                        <td><%= producto.getPrecio() %></td>
                        <td><%= producto.getCantidad() %></td>
                        <td><%= subtotal %></td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="4" class="text-right"><strong>Total:</strong></td>
                        <td><%= total %></td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <div class="text-center mt-4">
            <form action="CarritoController" method="post">
                <input type="hidden" name="action" value="checkout">
                <button type="submit" class="btn btn-primary">Realizar Compra</button>
            </form>
        </div>
    </div>
</body>
</html>