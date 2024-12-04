<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Palabras para sanar</title>
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
                <img src="imagenes/palabrasparasanar_2.jpg" alt="Palabras para sanar" width="500" height="700">
            </div>
            <div class="content">
                <h1>Palabras para sanar</h1>
                <div class="texto_justificado"><p>rupi kaur nos introduce en su universo creativo a trav�s de palabras para sanar, una obra en la que revela el potencial terap�utico de las palabras y explica c�mo, para ella, el acto de escribir ha sido una experiencia vital para curarse.

                        Esta colecci�n de ejercicios de escritura guiada ideados por la autora invita a explorar temas como el trauma, la p�rdida, la angustia, el amor o la sanaci�n, convirti�ndose as� en una poderosa herramienta de creatividad y autoconocimiento. Solo te pide que no tengas miedo a mostrarte vulnerable y que te enfrentes con honestidad a estas p�ginas. No necesitas ning�n tipo de experiencia para emprender este camino; solo empieza a escribir y d�jate llevar.</p></div>
                <div class="price">$368.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="16">
                    <input type="hidden" name="nombre" value="Palabras para sanar">
                    <input type="hidden" name="precio" value="368.00">
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
</html>s