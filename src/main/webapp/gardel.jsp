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
                <div class="texto_justificado"><p>GARDEL es una biografía magistral que está a la altura de un artista brillante. Un trabajo minucioso y extraordinario que, manufacturado con la destreza y el sello prestigioso de Felipe Pigna, relata la vida de un artista único, que, por si fuera poco, tuvo una vida fascinante. La gloria y la tragedia. El talento y las historias inolvidables. La música del alma. Como bien anticipa el autor en la introducción: ?Tenía muchas ganas de escribir esta historia, quizás una historia argentina entre 1890 y 1935, des-de Gardel, desde su vida y su obra, hablando necesariamente de la historia del tango, pero también de todo lo que nos pasó y lo que le pasó al mundo en esos años fundamentales. Me parece mucho más interesante hablar del hombre que cambió la historia del tango, del que fue, como bien él decía, su primer «intérprete», es decir, el primero en entenderlo plenamente, en traducir claramente lo que cada poeta quiso decir, viviéndolo intensamente. El primer argentino del siglo XX en trascender a niveles poco comunes en España, Francia, los Estados Unidos y casi toda Latinoamérica?. Gardel incluye los misterios de su vida del hombre que cambió al tango para siempre, al artista que trascendió a niveles desconocidos en un tiempo de largas distancias. También al Gardel actor, filmando en París y en Nueva York, atento a los guiones y creando melodías para sus películas, dando lo mejor de sí para su público que se extendía cada día. Y al mito popular que provocó una psicosis con su muerte accidentada, el periplo de su cuerpo que pasó por la selva colombiana, tuvo un velorio en Nueva York y también en el Luna Park. El homenaje que el genio, dueño de una sonrisa y una voz inigualables, merecía.
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