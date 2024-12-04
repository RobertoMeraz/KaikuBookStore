<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>1984</title>
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
                <li><a href="editoriales.jsp">Editoriales</a></li>
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
                <img src="imagenes/1984.jpg" alt="1984" width="500" height="700">
            </div>
            <div class="content">
                <h1>1984</h1>
                <div class="texto_justificado"><p>Es el año 1984 en Oceanía, al menos eso piensa Winston, aunque no está seguro de ello. El pasado ha sido reinventado y el presente también es susceptible de ser modificado. Winston mismo, que trabaja para el Partido en el Ministerio de la Verdad, es el encargado de reescribir los archivos que contradicen la versión del Gran Hermano, siguiendo siempre sus consignas: La guerra es la paz. La libertad es la esclavitud. La ignorancia es la fuerza. Aunque es hábil, con cada nueva mentira su conciencia comienza a pesarle, e intenta rebelarse: primero escribe un diario, luego entabla una relación secreta con Julia. Pero la Policía del Pensamiento está más cerca de lo que parece, y el Gran Hermano está siempre observando?

                        La odisea de Winston Smith en un mundo en el que resulta imposible escapar del control de una dictadura es una de las obras más célebres del siglo xx y una brillante advertencia sobre los totalitarismos. Una novela que cobra nueva vigencia en la sociedad actual, en la que los mecanismos de control social se hallan más perfeccionados que en ningún otro momento de la historia.</p></div>
                <div class="price">$279.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="1"> 
                    <input type="hidden" name="nombre" value="1984"> 
                    <input type="hidden" name="precio" value="279.00">
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