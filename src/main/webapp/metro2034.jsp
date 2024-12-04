<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Metro 2034 NE</title>
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
                <img src="imagenes/metro.jpg" alt="Metro 2034 NE" width="500" height="700">
            </div>
            <div class="content">
                <h1>Metro 2034 NE</h1>
                <div class="texto_justificado"><p>A�o 2034. Tras una guerra devastadora, gran parte del mundo ha quedado reducida a cenizas. Mosc� se ha convertido en una ciudad fantasma y los pocos supervivientes se han refugiado en las profundidades de la red de metro donde han creado una nueva civilizaci�n. Una civilizaci�n que no se parece en nada a las anteriores...

                        La estaci�n Sevastopolskaya lleva varias semanas incomunicada. En ella aparece un misterioso brigadier, Hunter, que toma la responsabilidad de luchar contra un enigm�tico peligro que amenaza a toda la red de metro y emprende una arriesgada expedici�n por el sistema de t�neles. Le acompa�ar� Homero, un hombre viejo y experimentado que conoce como nadie la red y sus leyendas, y que cree que su misi�n vital consiste en poner por escrito la historia del mundo subterr�neo. M�s adelante conocer�n a Sasha, una joven de diecisiete a�os. Homero est� convencido de que el h�roe y la muchacha podr�an ser los protagonistas ideales de su epopeya, pero antes tendr� que protegerlos de incesantes peligros.</p></div>
                <div class="price">329.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="14"> 
                    <input type="hidden" name="nombre" value="Metro 2034 NE"> 
                    <input type="hidden" name="precio" value="329.00"> 
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