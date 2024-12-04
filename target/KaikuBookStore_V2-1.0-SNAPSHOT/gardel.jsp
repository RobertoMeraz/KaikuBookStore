<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Gardel</title>
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
                <img src="imagenes/gardel_2.jpg" alt="gardel" width="500" height="700">
            </div>
            <div class="content">
                <h1>Gardel</h1>
                <div class="texto_justificado"><p>GARDEL es una biograf�a magistral que est� a la altura de un artista brillante. Un trabajo minucioso y extraordinario que, manufacturado con la destreza y el sello prestigioso de Felipe Pigna, relata la vida de un artista �nico, que, por si fuera poco, tuvo una vida fascinante. La gloria y la tragedia. El talento y las historias inolvidables. La m�sica del alma. Como bien anticipa el autor en la introducci�n: ?Ten�a muchas ganas de escribir esta historia, quiz�s una historia argentina entre 1890 y 1935, des-de Gardel, desde su vida y su obra, hablando necesariamente de la historia del tango, pero tambi�n de todo lo que nos pas� y lo que le pas� al mundo en esos a�os fundamentales. Me parece mucho m�s interesante hablar del hombre que cambi� la historia del tango, del que fue, como bien �l dec�a, su primer �int�rprete�, es decir, el primero en entenderlo plenamente, en traducir claramente lo que cada poeta quiso decir, vivi�ndolo intensamente. El primer argentino del siglo XX en trascender a niveles poco comunes en Espa�a, Francia, los Estados Unidos y casi toda Latinoam�rica?. Gardel incluye los misterios de su vida del hombre que cambi� al tango para siempre, al artista que trascendi� a niveles desconocidos en un tiempo de largas distancias. Tambi�n al Gardel actor, filmando en Par�s y en Nueva York, atento a los guiones y creando melod�as para sus pel�culas, dando lo mejor de s� para su p�blico que se extend�a cada d�a. Y al mito popular que provoc� una psicosis con su muerte accidentada, el periplo de su cuerpo que pas� por la selva colombiana, tuvo un velorio en Nueva York y tambi�n en el Luna Park. El homenaje que el genio, due�o de una sonrisa y una voz inigualables, merec�a.
                    </p></div>
                <div class="price">$338.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="7">
                    <input type="hidden" name="nombre" value="Gardel">
                    <input type="hidden" name="precio" value="338.00">
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