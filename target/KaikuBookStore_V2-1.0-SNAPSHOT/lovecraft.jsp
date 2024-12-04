<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>El morador de las tinieblas - Lovecraft</title>
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
                <img src="imagenes/lovecraft_2.jpg" alt="Lovecraft" width="500" height="700">
            </div>
            <div class="content">
                <h1>El morador de las tinieblas - Lovecraft</h1>
                <div class="texto_justificado"><p>Robert Blake, un joven interesado en el ocultismo, queda fascinado por una iglesia abandonada en Federal Hill. Su investigaci�n revela que la iglesia ten�a una siniestra historia relacionada con un culto llamado la Sabidur�a de las Estrellas. Atra�do por el misterio alrededor de esta iglesia, Blake entrar� para desentra�ar todos sus secretos y descubrir por qu� es un tema tan temido por los habitantes locales.</p></div>
                <div class="price">$318.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="12">
                    <input type="hidden" name="nombre" value="El morador de las tinieblas - Lovecraft"> 
                    <input type="hidden" name="precio" value="318.00">
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