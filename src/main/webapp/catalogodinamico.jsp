<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KAIKUBOOKSTORE - Catálogo Dinámico</title>
    <link rel="stylesheet" href="estilos/estilo_catalogo.css">
</head>
<body>
<header>
    <div class="logo">
        <img src="imagenes/logo 1.png" alt="Logo">
        <span>KAIKUBOOKSTORE</span>
    </div>
    <nav>
        <ul>
            <li><a href="index.html">Inicio</a></li>
            <li><a href="acercade.html">Acerca de</a></li>
            <li><a href="editoriales.html">Editoriales</a></li>
            <li><a href="catalogodinamico.jsp">Comprar</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
    </nav>
    <a href="login.jsp">
        <img src="imagenes/login.png" alt="Login" height="30" width="30">
    </a>
</header>
<main>
    <h1>Catálogo Completo</h1>
    <div class="catalog-grid">
        <% 
            // Obtén la lista de libros del atributo pasado por el controlador
            List<model.Libro> libros = (List<model.Libro>) request.getAttribute("libros");

            // Verifica que la lista no sea nula o vacía
            if (libros != null && !libros.isEmpty()) {
                for (model.Libro libro : libros) {
        %>
                    <div class="book-card">
                        <img src="imagenes/<%= libro.getImagen() %>" alt="<%= libro.getTitulo() %>">
                        <h3><%= libro.getTitulo() %></h3>
                        <div class="author"><%= libro.getAutor() %></div>
                        <div class="price">$<%= libro.getPrecio() %></div>
                        <a href="#" class="add-to-cart">Añadir al carrito</a>
                    </div>
        <% 
                }
            } else {
        %>
                <p>No hay libros disponibles en el catálogo.</p>
        <% 
            }
        %>
    </div>
</main>
</body>
</html>
