<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>La psicologia del dinero TD</title>
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
                <img src="imagenes/psicodine.jpg" alt="La psicologia del dinero TD" width="500" height="700">
            </div>
            <div class="content">
                <h1>La psicologia del dinero TD</h1>
                <div class="texto_justificado"><p>En cuestiones de dinero, lo que importa no es lo listo que seas sino c�mo te comportas. Tendemos a pensar en la inversi�n o la gesti�n de las finanzas personales como una disciplina matem�tica, en la que los datos y las f�rmulas nos dicen exactamente qu� hacer. Sin embargo, el rasgo que define a las personas que logran enriquecerse no es su destreza con los n�meros, ni su salario o su talento, sino su historia personal, sus motivaciones y su visi�n �nica del mundo.

                        Un genio que pierde el control de sus emociones puede ser un desastre financiero. Y lo mismo vale en caso contrario: gente de a pie sin formaci�n en finanzas puede enriquecerse si cuenta con unos cuantos patrones de comportamiento. Esto, impensable en otras disciplinas como la arquitectura o la medicina, es fundamental en el campo de las finanzas.

                        Este libro, llamado a convertirse en un cl�sico de las finanzas personales, nos provee del conocimiento esencial para entender la psicolog�a del dinero y nos invita a hacernos una pregunta fundamental que raramente nos hacemos, cu�l es nuestra relaci�n con el dinero y qu� queremos realmente de �l.</p></div>
                <div class="price">329.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="19"> 
                    <input type="hidden" name="nombre" value="La psicologia del dinero TD"> 
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