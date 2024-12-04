<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Conduciendo a ciegas</title>
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
                <img src="imagenes/3.jpg" alt="El libro de Bill" width="500" height="700">
            </div>
            <div class="content">
                <h1>Conduciendo a ciegas</h1>
                <div class="texto_justificado"><p>En estos veintid�s relatos, Bradbury nos transporta una vez m�s a estos lugares incre�bles, los destinos del coraz�n, revelados como no los hemos visto nunca antes, ni en la luz brillante del d�a ni en la oscuridad de la noche. Inolvidables excursiones a lo fant�stico, viajes gloriosos a trav�s del tiempo y la memoria, intercalados con extra�os e inesperados desv�os a lo inc�modo y desconcertante, donde las sorpresas esperan detr�s de cada curva y m�s all� de cada se�al del camino.

                        Sobre el dise�o de portada:

                        Al ser una antolog�a de relatos variados, se ha usado una imagen que hace referencia al t�tulo y que tambi�n es uno de las historias. Se ha trabajado la imagen de un coche retro americano y una carretera imposible. Es un concepto de corte fant�stico que podr�a ilustrar el trasfondo del cuento del vendedor de coches ambulante, atormentado por la deformidad su cara.</p></div>
                <div class="price">$398.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="3">
                    <input type="hidden" name="nombre" value="Conduciendo a ciegas"> 
                    <input type="hidden" name="precio" value="398.00"> 
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