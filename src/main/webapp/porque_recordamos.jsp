<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Por que recordamos</title>
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
                <img src="imagenes/porquere.jpg" alt="Por que recordamos" width="500" height="700">
            </div>
            <div class="content">
                <h1>La psicologia del dinero TD</h1>
                <div class="texto_justificado"><p>¿De qué manera el cerebro decide archivar en su memoria una experiencia u otra? Esa ha sido la gran pregunta de la neurociencia desde sus inicios y la respuesta podría ser revolucionaria. El Dr. Ranganath, uno de los científicos punteros en su campo, aborda en este libro su gran hallazgo: más que registrar el pasado, el cerebro prioriza aquella información que nos será útil en el futuro. El libro nos introduce en el mundo secreto de la memoria y su papel en aspectos como la toma de decisiones, el aprendizaje, e incluso la curación de nuestros traumas.</p></div>
                <div class="price">399.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="17">
                    <input type="hidden" name="nombre" value="Por que recordamos">
                    <input type="hidden" name="precio" value="399.00">
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