<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>La camara lucida</title>
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
                    <li><a href="acercade.jsp">Acerca de</a></li>
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
                <img src="imagenes/camaralucida_2.jpg" alt="El arte de la guerra" width="500" height="700">
            </div>
            <div class="content">
                <h1>La camara lucida</h1>
                <div class="texto_justificado"><p>Este libro no es un tratado sobre la fotografía como arte, ni mucho menos una historia sobre el tema. En este caso, Barthes se lanza a una especie de desciframiento del siglo expresivo, del objeto artístico, de la «obra» entendida como mecanismo productor de sentido. Toma como punto de partida unas cuantas fotografías, con el fin de descubrir «una ciencia nueva para cada objeto» y, a partir de ahí, deducir «el universo sin el cual no existiría la fotografía», esa «alucinación » que provoca falsedad en el ámbito de la percepción y verdad en el del tiempo.

                    </p></div>
                <div class="price">$199.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="5"> 
                    <input type="hidden" name="nombre" value="La camara lucida">
                    <input type="hidden" name="precio" value="209.00">
                    <input type="hidden" name="cantidad" id="cantidadInput" value="1"> 
                    <button type="submit" class="add-to-cart">Añadir al Carrito</button>
                </form>

            </div>
        </main>

        <script>
            document.getElementById('cantidad').addEventListener('change', function () {
                document.getElementById('cantidadInput').value = this.value;
            });
        </script>
    </body>
</html>