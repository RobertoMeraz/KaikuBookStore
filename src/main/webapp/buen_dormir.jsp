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
                <div class="texto_justificado"><p>El ser humano duerme una media de treinta años de su vida y su salud física y mental depende de lo bien que lo haga. Lograr un buen descanso es posible, necesario y puede cambiarte la vida.

Dormir bien es vivir mejor, con más energía, felicidad, creatividad y empatía. El sueño es uno de los pilares de nuestra salud y, sin embargo, es el más olvidado y descuidado. La falta de sueño puede hacer de nuestra vida una auténtica condena y, aun así, durante décadas su importancia ha sido menospreciada a causa de nuestro ajetreado estilo de vida: actividades, preocupaciones, pantallas, estrés y una lista de tareas que priorizamos por encima de la necesidad de descanso.

La ciencia del buen dormir es una obra de referencia que aúna todo el saber científico y médico que el Dr. Albares ha obtenido tras décadas atendiendo a los miles de pacientes que han recurrido a él en busca de ayuda. Una guía para poder comprender por qué necesitamos dormir, cómo podemos optimizar nuestro descanso, cómo detectar los trastornos del sueño que puedan necesitar atención médica y, en definitiva, cómo dormir más y mejor.
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
                    <button type="submit" class="add-to-cart">Añadir al Carrito</button>
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