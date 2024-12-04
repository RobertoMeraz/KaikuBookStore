<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>La era de la ansiedad</title>
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
                <img src="imagenes/laeraansi.jpg" alt="como dejar de preocuparte" width="500" height="700">
            </div>
            <div class="content">
                <h1>La era de la ansiedad</h1>
                <div class="texto_justificado"><p>La era de la ansiedad es un libro sobre el v�rtigo de los tiempos que corren. Vivimos bajo lo que Kierkegaard llam� la ?aflicci�n reflejada?, el latido de un mundo que sigue palpitando dentro de nosotros cuando toda acci�n ha cesado. Las nuevas pr�cticas parecieran alimentar esta ?ansiedad?: construimos nuestra identidad de manera que no nos queda m�s que esperar el ?like?; nos amamos como boxeadores, jugando a asestar el golpe s�lo para alejarnos sin saber cu�ndo volver; los artistas venden esculturas invisibles y se invierten cantidades desorbitantes en lo intocable (NFT?s). Perdimos las pistas de por qu� hacemos lo que hacemos. Cuando acudimos a las herramientas convencionales de la civilizaci�n en busca de sentido ?la educaci�n, la argumentaci�n, el conocimiento?, s�lo descubrimos que son instrumentos que han ca�do en sus propias formas de banalidad.
                        �Hay un sitio entre el cielo y la tierra en donde anclar la redenci�n (para usar la expresi�n de Nietzsche) que tanto ansiamos? En estas p�ginas se ha tomando una panor�mica de 360 grados del presente, que Palacio traza con un despliegue de ideas originales, escritas en las claves de una filosof�a no acad�mica y divulgativa, en donde se muestra que en un mundo privado verdades y utop�as, s�lo el cuidado de s� que procura el pensamiento podr� resignificar los s�ntomas de la incertidumbre.</p></div>
                <div class="price">$149.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="23">
                    <input type="hidden" name="nombre" value="La era de la ansiedad">
                    <input type="hidden" name="precio" value="149.00">
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