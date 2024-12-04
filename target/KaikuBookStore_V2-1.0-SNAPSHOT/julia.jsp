<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Julia</title>
        <link rel="stylesheet" href="estilos/estilo_sinopsis.css">
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

        <main>
            <div class="image-container">
                <img src="imagenes/2.jpg" alt="El libro de Bill" width="500" height="700">
            </div>
            <div class="content">
                <h1>Julia</h1>
                <div class="texto_justificado"><p>Airstrip One, Londres, año 1984. Julia Worthing trabaja como mecánica en el Ministerio de la Verdad. Gobiernan el Partido y su líder, el Gran Hermano. Julia infringe las reglas con frecuencia, pero también coopera con el régimen cuando le conviene. Sabe cómo sobrevivir en un mundo de vigilancia constante. Pero cuando se siente intrigada por un colega, Winston Smith, todo a su alrededor se desmorona.

                        Julia, nos muestra 1984 desde una nueva perspectiva. Subversiva, sagaz y tremendamente cautivadora, va más allá de la conocida historia de Winston Smith y enseña cómo es para las mujeres sobrevivir en el mundo feroz de Gran Hermano.</p></div>
                <div class="price">$398.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="22"> 
                    <input type="hidden" name="nombre" value="Julia"> 
                    <input type="hidden" name="precio" value="398.00"> 
                    <input type="hidden" name="cantidad" id="cantidadInput" value="1">
                    <button type="submit" class="add-to-cart">Añadir al Carrito</button>
                </form>

            </div>
        </main>

        <script>
            document.getElementById('cantidad').addEventListener('change', function() {
                document.getElementById('cantidadInput').value = this.value;
            });
        </script>
    </body>
</html>