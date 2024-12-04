<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El libro de Bill</title>
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
            <img src="imagenes/1.jpg" alt="El libro de Bill" width="500" height="700">
        </div>
        <div class="content">
            <h1>El libro de Bill</h1>
            <div class="texto_justificado"><p>El demonio que aterroriz� Gravity Falls est� de vuelta desde el m�s all� para contar por fin su versi�n de la historia en El libro de Bill, escrito nada menos que por el mism�simo Bill Clave. En estas p�ginas, Bill comparte sus extra�os or�genes, su siniestro efecto en la historia de la humanidad, los secretos m�s vergonzosos de la familia Pines y la receta para conquistar el mundo (con una pr�ctica gu�a paso a paso). Este ca�tico y bello tomo ilustrado contiene confusos acertijos, claves indescifrables, p�ginas perdidas del Diario 3, maneras de enga�ar la muerte, el significado de la vida y un cap�tulo completo sobre popotes bobos con formas divertidas. Pero lo m�s importante es que El libro de Bill est� muy, muy maldito. Alex Hirsch, el autor bestseller, resucita a este infame villano e invita a los fans a ver el universo Gravity Falls desde la perspectiva de Bill. Muchos creen que este libro es demasiado peligroso para las manos humanas. Pero si no logras resistirte, debes saber esto: una vez que haces un trato con Bill, no es f�cil retractarte.</p></div>
            <div class="price">$348.00</div>
            
            <div class="quantity-selector">
                <input type="number" id="cantidad" value="1" min="1">
            </div>

            <form action="CarritoController" method="post">
                <input type="hidden" name="action" value="add">
                <input type="hidden" name="id" value="24"> 
                <input type="hidden" name="nombre" value="El libro de Bill"> 
                <input type="hidden" name="precio" value="348.00"> 
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