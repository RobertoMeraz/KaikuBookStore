<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>La ciencia del buen dormir</title>
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
                <img src="imagenes/buendormir_2.jpg" alt="La ciencia del buen dormir" width="500" height="700">
            </div>
            <div class="content">
                <h1>La ciencia del buen dormir</h1>
                <div class="texto_justificado"><p>El ser humano duerme una media de treinta a�os de su vida y su salud f�sica y mental depende de lo bien que lo haga. Lograr un buen descanso es posible, necesario y puede cambiarte la vida.

Dormir bien es vivir mejor, con m�s energ�a, felicidad, creatividad y empat�a. El sue�o es uno de los pilares de nuestra salud y, sin embargo, es el m�s olvidado y descuidado. La falta de sue�o puede hacer de nuestra vida una aut�ntica condena y, aun as�, durante d�cadas su importancia ha sido menospreciada a causa de nuestro ajetreado estilo de vida: actividades, preocupaciones, pantallas, estr�s y una lista de tareas que priorizamos por encima de la necesidad de descanso.

La ciencia del buen dormir es una obra de referencia que a�na todo el saber cient�fico y m�dico que el Dr. Albares ha obtenido tras d�cadas atendiendo a los miles de pacientes que han recurrido a �l en busca de ayuda. Una gu�a para poder comprender por qu� necesitamos dormir, c�mo podemos optimizar nuestro descanso, c�mo detectar los trastornos del sue�o que puedan necesitar atenci�n m�dica y, en definitiva, c�mo dormir m�s y mejor.
                    </p></div>
                <div class="price">$298.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="7">
                    <input type="hidden" name="nombre" value="La ciencia del buen dormir">
                    <input type="hidden" name="precio" value="298.00">
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