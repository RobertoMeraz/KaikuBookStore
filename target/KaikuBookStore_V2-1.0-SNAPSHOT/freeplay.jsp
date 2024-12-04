<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Free Play</title>
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
                <img src="imagenes/freeplay_2.jpg" alt="El arte de la guerra" width="500" height="700">
            </div>
            <div class="content">
                <h1>Free Play</h1>
                <div class="texto_justificado"><p>�C�mo se aprende a improvisar? �O, en todo caso, c�mo se aprende cualquier arte? �O cualquier cosa? Es una contradicci�n, un ox�moron. Vaya y d�gale a alguien: ?�S� espont�neo!?. O trate de que alguien se lo diga a usted. Nos sometemos a maestros de m�sica, de baile o de taller literario que pueden criticar o sugerir. Pero por debajo de todo eso lo que realmente nos piden es que ?seamos espont�neos?, que ?seamos creativos?. Y eso, por supuesto, es m�s f�cil decirlo que hacerlo. �C�mo se aprende a improvisar? La �nica respuesta es otra pregunta: �qu� nos lo impide? La creaci�n espont�nea surge de lo m�s profundo de nuestro ser. Lo que tenemos que expresar ya est� con nosotros, es nosotros, de manera que la obra de la creatividad no es cuesti�n de hacer venir el material sino de desbloquear los obst�culos para su flujo natural.</p></div>
                <div class="price">$299.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="5"> 
                    <input type="hidden" name="nombre" value="Free Play">
                    <input type="hidden" name="precio" value="299.00">
                    <input type="hidden" name="cantidad" id="cantidadInput" value="1"> 
                    <button type="submit" class="add-to-cart">A�adir al Carrito</button>
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