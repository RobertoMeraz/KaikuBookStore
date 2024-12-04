<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Solo necesito un gato</title>
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
                <img src="imagenes/sologato_2.jpg" alt="Solo necesito un gato" width="500" height="700">
            </div>
            <div class="content">
                <h1>Solo necesito un gato</h1>
                <div class="texto_justificado"><p>�S� de lo que hablo: Alberto Montt entiende a los gatos y su psicolog�a, porque sabe hablar con ellos. Es m�s, estoy seguro de que es un gato infiltrado disfrazado de dibujante, de otra manera no se explica este divertido y aterrador viaje dentro de la naturaleza de la especie que realmente gobierna este planeta�. Francisco Ortega

                        Este libro es una gu�a para entender, amar y cuidar a tu gato, un homenaje a la raza que desde tiempos inmemoriales impuls� la construcci�n de pir�mides, inspir� a dioses, propici� memes y acompa�� a nuestros solteros y solteras empedernidos hasta el fin de los tiempos. Es un libro lleno de humor y color al mejor estilo del dibujante chileno Alberto Montt.

                        Divi�rtete con los gatos de Alberto Montt y descubre c�mo han dominado a la raza humana.</p></div>
                <div class="price">$268.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="20"> 
                    <input type="hidden" name="nombre" value="Solo necesito un gato"> 
                    <input type="hidden" name="precio" value="268.00"> 
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