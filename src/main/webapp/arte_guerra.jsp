<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>El arte de la guerra</title>
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
                <img src="imagenes/arteguerra.jpg" alt="El arte de la guerra" width="500" height="700">
            </div>
            <div class="content">
                <h1>El arte de la guerra</h1>
                <div class="texto_justificado"><p>Esta traducci�n del chino realizada y comentada por Ana Aranda Vasserot nos permite comprender la verdadera intenci�n y significado de este gran cl�sico de la estrategia china. Es una edici�n especial en la que se analiza el texto de una manera accesible, comparando distintas interpretaciones de t�rminos o pasajes complejos y recurriendo a personajes y libros coet�neos relacionados con el arte militar, que ayudan a aclarar el sentido de la obra.

                        El l�der Liu Jin, afirma Aranda Vasserot, comparaba El arte de la guerra con �un mont�n de perlas tintineando en un plato�; para �l, el libro no pose�a una estructura definida, sino que era una recopilaci�n de dichos. Pero estos dichos est�n ordenados de una manera concreta y con un estilo definido, y el prop�sito de esta edici�n comentada es detectar el hilo que une esas perlas.</p></div>
                <div class="price">$199.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="5"> 
                    <input type="hidden" name="nombre" value="El arte de la guerra">
                    <input type="hidden" name="precio" value="199.00">
                    <input type="hidden" name="cantidad" id="cantidadInput" value="1"> 
                    <button type="submit" class="add-to-cart">A�adir al Carrito</button>
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