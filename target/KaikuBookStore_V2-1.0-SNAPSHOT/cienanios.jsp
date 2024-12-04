<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cien a�os de soledad </title>
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
                <img src="imagenes/cienan.jpg" alt="cien a�os de soledad" width="500" height="700">
            </div>
            <div class="content">
                <h1>Cien a�os de soledad</h1>
                <div class="texto_justificado"><p>Muchos a�os despu�s, frente al pelot�n de fusilamiento, el coronel Aureliano Buend�a hab�a de recordar aquella tarde remota en que su padre lo llev� a conocer el hielo. Macondo era entonces una aldea de veinte casas de barro y ca�abrava construidas a la orilla de un r�o de aguas di�fanas que se precipitaban por un lecho de piedras pulidas, blancas y enormes como huevos prehist�ricos. El mundo era tan reciente, que muchas cosas carec�an de nombre, y para mencionarlas hab�a que se�alarlas con el dedo.�

                        Cien a�os de soledad cuenta la saga de la familia Buend�a y su maldici�n, que castiga el matrimonio entre parientes d�ndoles hijos con cola de cerdo. Como un r�o desbordante, a lo largo de un siglo se entretejer�n sus destinos por medio de sucesos maravillosos en el fant�stico pueblo de Macondo, en una narraci�n que es la cumbre indiscutible del realismo m�gico y la literatura del boom. Alegor�a universal, es tambi�n una visi�n de Latinoam�rica y una par�bola sobre la historia humana.</p></div>
                <div class="price">$349.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="7">
                    <input type="hidden" name="nombre" value="Cien a�os de soledad">
                    <input type="hidden" name="precio" value="349.00">
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