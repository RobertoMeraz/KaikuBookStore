<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cuentos de Edgar Allan Poe</title>
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
                <img src="imagenes/cuentosedgar.jpg" alt="Cuentos de Edgar Allan Poe" width="500" height="700">
            </div>
            <div class="content">
                <h1>Cuentos de Edgar Allan Poe</h1>
                <div class="texto_justificado"><p>Edgar Allan Poe (Boston, 1809 - Baltimore, 1849), reconocido como el maestro del relato corto, dej� un legado literario que se ha convertido en un punto de referencia constante para todas las artes. Su huella en la literatura fant�stica y de terror, as� como la literatura detectivesca es incuestionable e inspir� de manera decisiva a escritores de la talla de Melville, Baudelaire, Maupassant, Cort�zar o Nabokov.

                        En el presente volumen reunimos una peque�a muestra de esas famosas piezas maestras que mantienen en vilo al lector y lo introducen en un mundo fant�stico donde lo sobrenatural y lo desconocido se convierten en protagonistas. La picadura de un extra�o insecto en El escarabajo de oro, los habitantes perturbados de una mansi�n en La ca�da de la Casa Usher, misteriosos asesinatos resueltos por el c�lebre detective Dupin en Los cr�menes de la calle Morgue y La carta robada, los horrores de una prisi�n en El pozo y el p�ndulo, o la apariencia siniestra del ojo de un anciano en El coraz�n delator son algunos de los nueve relatos seleccionados para esta edici�n.</p></div>
                <div class="price">218.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="4"> 
                    <input type="hidden" name="nombre" value="Cuentos de Edgar Allan Poe"> 
                    <input type="hidden" name="precio" value="218.00"> 
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