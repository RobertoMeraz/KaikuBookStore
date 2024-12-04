<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cómo dejar de preocuparte</title>
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
                <img src="imagenes/comodejar.jpg" alt="como dejar de preocuparte" width="500" height="700">
            </div>
            <div class="content">
                <h1>Cómo dejar de preocuparte</h1>
                <div class="texto_justificado"><p>Todos buscamos respuestas a las grandes preguntas: ¿Cómo ser buena persona? ¿Cómo encontrar la calma? ¿Cómo vencer el FOMO? ¿Cómo descubrir lo que realmente importa? Tenemos buenas noticias: los más sabios de la historia se hicieron las mismas preguntas, ¡y encontraron respuestas! A través del estoicismo podemos descubrir que ya poseemos las herramientas para extraer esta sabiduría tan necesaria por nosotros mismos.

                        En Cómo dejar de preocuparte nos adentramos en el pasado a un tiempo que no difiere mucho del nuestro: lleno de caos, guerras, plagas, traiciones, corrupción, ansiedad, excesos e incluso el temor a un apocalipsis climático. Al aprender y vivir las enseñanzas de tres guías ancestrales, Epicteto, Séneca y Marco Aurelio, Brigid Delaney nos muestra cómo aplicar estas lecciones a nuestras vidas contemporáneas para recuperar un sentido de agencia y tranquilidad.

                        El estoicismo puede resultar un remedio difícil de asimilar, pero no en este caso: este libro rebosa de perspicacia, humor y compasión. Es oportuno y sumamente útil, y ofrece múltiples formas de retomar el control. Aquí encontrarás todas las razones para dejar de preocuparte.    </p></div>
                <div class="price">$299.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="2"> <!-- ID del producto -->
                    <input type="hidden" name="nombre" value="Cómo dejar de preocuparte"> <!-- Nombre del producto -->
                    <input type="hidden" name="precio" value="299.00"> <!-- Precio del producto -->
                    <input type="hidden" name="cantidad" id="cantidadInput" value="1"> <!-- Cantidad del producto -->
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