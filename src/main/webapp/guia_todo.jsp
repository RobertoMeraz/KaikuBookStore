<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>La gu�a completa de absolutamente todo</title>
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
                <img src="imagenes/guiatodo_2.jpg" alt="La gu�a completa de absolutamente todo" width="500" height="700">
            </div>
            <div class="content">
                <h1>La gu�a completa de absolutamente todo</h1>
                <div class="texto_justificado"><p>Con ingenio y humor, La gu�a completa de absolutamente todo narra la historia de la ciencia que ha creado la suma total del conocimiento humano. Hannah Fry y Adam Rutherford colaboran en esta obra para demostrar que la realidad no es lo que parece, que el sentido com�n no es ni com�n ni sensato y que nuestras mentes han evolucionado para mentirnos todo el tiempo.

                        La historia completa del universo y de absolutamente todo lo que hay en �l (menos las partes aburridas). 

                        A pesar de nuestras ingeniosas habilidades ling��sticas, es incre�ble lo mal que los humanos estamos equipados para comprender lo que ocurre en el universo. El genetista Adam Rutherford y la matem�tica Hannah Fry nos gu�an a trav�s del tiempo y el espacio, desde los inicios de la vida en la Tierra hasta los maravillosos alien�genas de otras galaxias, desde las profundidades m�s oscuras del infinito hasta los recovecos m�s brillantes de nuestras mentes, y nos muestran c�mo las emociones moldean nuestra visi�n de la realidad, c�mo nuestras mentes nos enga�an y por qu� un curioso simio semicalvo decidi� empezar a hurgar en el tejido del universo. 

                        Rutherford y Fry se lucen como detectives de la ciencia y ofrecen respuestas a algunas preguntas que son verdaderos quebraderos de cabeza: 

                        �Qu� es el tiempo y de d�nde viene?
                        �Por qu� los animales tienen el tama�o y la forma que tienen?
                        �C�mo funcionan los hor�scopos? (Spoiler: no funcionan, aunque creas que s�.)
                        �Me quiere mi perro?
                        �Por qu� nada es realmente redondo?
                        �Necesitas los ojos para ver? 

                        Rigurosa y l�dica a la vez, La gu�a completa de absolutamente todo es una celebraci�n de la rareza del cosmos, de la extra�eza de los humanos y de las alegr�as y locuras de los avances cient�ficos en la que descubriremos c�mo hemos llegado a superar las mentiras que nos cuenta nuestro cerebro y a percibir la verdadera naturaleza de la realidad.</p></div>
                <div class="price">$329.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="7">
                    <input type="hidden" name="nombre" value="La gu�a completa de absolutamente todo">
                    <input type="hidden" name="precio" value="329.00">
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