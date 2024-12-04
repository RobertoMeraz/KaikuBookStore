<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Todas las muertes</title>
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
                <img src="imagenes/todaslasmuertes_2.jpg" alt="todas las muertes" width="500" height="700">
            </div>
            <div class="content">
                <h1>Todas las muertes</h1>
                <div class="texto_justificado"><p>Una obra sobre la muerte, sus límites y cómo desde siempre ha sido una de las grandes incógnitas para el ser humano.

No hay una sola definición de la muerte, ni una sola interpretación, aunque sí un hilo conductor basado en nuestra compresión científica de la realidad mortal. Podría decirse que no hay una, sino muchas muertes. El físico, biólogo e investigador ICREA Ricard Solé nos plantea una aproximación a algunas de estas extinciones: desde la muerte térmica del universo y de los sistemas inanimados hasta la de las ciudades y civilizaciones, los océanos o los robots, pasando por la de nuestro propio cuerpo y mente. Porque, escribir y reflexionar acerca del fin de la vida nos permite comprender mejor la naturaleza de ese principio básico e inevitable, que ha dado forma a nuestra cultura y moldeado nuestros miedos desde que surgió la conciencia y nuestra capacidad de imaginar el futuro.

Recogiendo el legado de quienes, desde la literatura, el cine, el teatro, la filosofía o la ciencia han escrito sobre el óbito, Todas las muertes se sirve de una mirada científica, crítica y abierta para replantearse los diversos escenarios en los que podemos hablar de la muerte en términos rigurosos. Esta exploración permite ofrecer algunas respuestas y nuevas aportaciones sobre preguntas esenciales sobre la existencia de la inmortalidad, sobre la posibilidad de esquivar el deceso, sobre cómo surge y evoluciona la idea de una vida humana finita, sobre si una máquina consciente puede ser eterna o sobre si podemos manipular las reglas celulares para evitar nuestro fallecimiento.</p></div>
                <div class="price">$239.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="7">
                    <input type="hidden" name="nombre" value="Todas las muertes">
                    <input type="hidden" name="precio" value="239.00">
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