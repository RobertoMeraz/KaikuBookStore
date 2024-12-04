<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hecha en Mexico</title>
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
                <img src="imagenes/hechaenmexico_2.jpg" alt="Hecha en mexico" width="500" height="700">
            </div>
            <div class="content">
                <h1>Hecha en Mexico</h1>
                <div class="texto_justificado"><p>Hecha en México te invita a conocer la gran escena de la moda nacional a través de los hitos más importantes de los últimos 20 años. Nombres como Lorena Saravia, Cynthia Buttenklepper y Paola Hernández son conocidos internacionalmente; Issa Lish se convirtió en la única mexicana rankeada en el Top 50 de Models.com, la lista que compila los nombres de las mejores modelos del mundo, y Mercedes-Benz Fashion Week Mexico City se consolidó como la plataforma principal del diseño mexicano.

                        ¿Qué tienen en común Mancandy, Barragán y Malafacha? ¿Sabías que marcas mexicanas como Yakampot, Lydia Lavín y Pineda Covalin son iniciativas socialmente responsables? ¿O que actualmente más de cien universidades en el país ofrecen la licenciatura en diseño de moda?

                        Además de presentar una radiografía del «quién es quién» en la industria, Hecha en México incluye un directorio de tiendas, diseñadores, fotógrafos, maquillistas y más en todo el país para que descubras lo que la moda mexicana ofrece para ti.
                    </p></div>
                <div class="price">$308.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="7">
                    <input type="hidden" name="nombre" value="Hecha en Mexico">
                    <input type="hidden" name="precio" value="308.00">
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