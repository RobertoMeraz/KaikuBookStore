<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Desapegarse sin anestesia</title>
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
                <img src="imagenes/desape.jpg" alt="Desapegarse sin anestesia" width="500" height="700">
            </div>
            <div class="content">
                <h1>Desapegarse sin anestesia</h1>
                <div class="texto_justificado"><p>El psicólogo Walter Riso nos explica en qué consiste el apego y sus causas, y nos proporciona las claves para enfrentarlo y prevenirlo, sin perder la pasión por alcanzar nuestros sueños y metas personales. Mediante un lenguaje claro, con ejemplos y casos concretos, el autor nos invita a fortalecer la independencia emocional y crear un estilo de vida más libre y saludable. Riso nos presenta una obra ambiciosa en la línea de su bestseller ¿Amar o depender?, en la que nos invita a fortalecer la independencia emocional para encontrar nuestro verdadero camino en la vida.</p></div>
                <div class="price">298.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="11"> 
                    <input type="hidden" name="nombre" value="Desapegarse sin anestesia"> 
                    <input type="hidden" name="precio" value="298.00"> 
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