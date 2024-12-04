<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>La vida de las abejas</title>
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
                <img src="imagenes/vidaabejas_2.jpg" alt="la vida de las abejas" width="500" height="700">
            </div>
            <div class="content">
                <h1>La vida de las abejas</h1>
                <div class="texto_justificado"><p>La vida de las abejas, �un mundo a�reo, optimista y exterior�, es estudiada por el poeta con ciencia y paciencia de entom�logo y con exactitud e ingenio, el escritor observa la vida dentro y fuera de la colmena, y estudia sus querencias, observa sus caminos y tiene en cuenta sus misterios. La vida de ese reino del enjambre est� siempre presidida por una reina que Maeterlinck estudia con respeto y cortes�a: sus costumbres, su trato a las abejas, su custodia fiel por obreras y soldados, su lujo, sus preeminencias tir�nicas, sus vuelos nupciales y hasta su muerte est�n descritos con meticulosidad y criterio singulares. Nos muestra secretos sorprendentes de ese mundo regulado y perfecto, y logra que la lectura sea dram�tica y hasta dantesca, al mismo tiempo que comprensible. La vida de estas �criaturas casi humanas pose�das por el sentimiento del deber� nos es mostrada en toda su complejidad a trav�s del m�gico filtro de este libro prodigioso.</p></div>
                <div class="price">$349.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="7">
                    <input type="hidden" name="nombre" value="La vida de las abejas">
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