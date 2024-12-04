<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dominio Publico N.01</title>
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
                <img src="imagenes/dominiopu.jpg" alt="Dominio Publico N.01" width="500" height="700">
            </div>
            <div class="content">
                <h1>Dominio Publico N.01</h1>
                <div class="texto_justificado"><p>Basado en el cómic de éxito»... es la frase que ha perseguido al dibujante de cómics Syd Dallas durante décadas. El Dominio, el superhéroe creado por él, ha generado películas, juguetes, videojuegos y mucho dinero.
                        Pero no es dueño de su creación. Ahora su hijo Miles está dispuesto a enfrentarse a la empresa culpable de la desgracia de su familia.

                        DOMINIO PÚBLICO es la eterna historia de la codicia empresarial, el arte y la lucha constante entre ambos, ofrecida por Chip Zdarsky, ganador de varios premios Eisner. Public Domain #1-5</p></div>
                <div class="price">218.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="9">
                    <input type="hidden" name="nombre" value="Dominio Publico N.01">
                    <input type="hidden" name="precio" value="218.00">
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