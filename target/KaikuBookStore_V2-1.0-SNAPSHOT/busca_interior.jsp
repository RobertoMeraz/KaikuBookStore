<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Busca en tu interior</title>
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
                <img src="imagenes/busquedaint.jpg" alt="Busca en tu interior" width="500" height="700">
            </div>
            <div class="content">
                <h1>Busca en tu interior</h1>
                <div class="texto_justificado"><p>Chade-Meng Tan fue uno de los primeros ingenieros que formaron parte de Google. Pionero en la disciplina del crecimiento personal, diseñó un curso de meditación llamado Busca en tu interior, que se imparte en Google desde 2007. Tras su gran éxito, plasmó su contenido en este libro, con la intención de «poner a disposición de la humanidad los beneficios de la meditación y difundirlos como uno de los regalos de Google para el mundo».


                        Busca en tu interior es una obra amena que nos ofrece las herramientas necesarias para ser más productivos y creativos, y nos enseña a alimentar
                        nuestra felicidad interior. Como dice el autor: «Hay libros que enseñan a caer bien y otros a tener éxito. Este enseña ambas cosas. Elegiste bien». Descubre el poder de la meditación para aumentar tu productividad, tu creatividad y tu felicidad interior.  </p></div>
                <div class="price">328.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="6"> 
                    <input type="hidden" name="nombre" value="Busca en tu interior">
                    <input type="hidden" name="precio" value="328.00">
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