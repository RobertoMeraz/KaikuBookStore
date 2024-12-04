<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mentiras cuanticas</title>
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
                <img src="imagenes/mentirascuanticas_2.jpg" alt="Mentiras Cuanticas" width="500" height="700">
            </div>
            <div class="content">
                <h1>Mentiras Cuanticas</h1>
                <div class="texto_justificado"><p>Que no te digan, que no te cuenten ... Este libro te explica, de manera clara y muy divertida, lo que sí es la física cuántica.

En realidad, ¿qué es la física cuántica? Si puedes responder esta pregunta sin engañar a la persona que se encuentra junto a ti en la librería, entonces deja de leer ahora mismo. Aunque la mayoría de nosotros no entendemos realmente la física cuántica, sabemos que es mística e impresionante y creemos que si la entendiéramos tal vez seríamos ricos, hermosos y felices, ¿verdad? Después de todo, hay mucha gente que intenta venderte cristales cuánticos para alinear tu energía cuántica con tu destino cuántico. ¿Será que están todos equivocados?

Espóiler: sí lo están. No existen los cristales cuánticos. ¡Lo siento!

Por fortuna, a medida que la pseudociencia se apodera de internet y cada vez es más difícil diferenciar los hechos alternativos de la ciencia, Chris Ferrie (¡un físico cuántico real!) nos explica la física cuántica de una manera que tiene sentido para que podamos detectar a los mentirosos y merolicos a kilómetros de distancia y enseñarles lo que realmente es el entrelazamiento cuántico (no, no tiene nada que ver con el romance). Si amas la ciencia y quieres saber más que cuando despertaste esta mañana, entonces Mentiras cuánticas es EL libro para ti.
                    </p></div>
                <div class="price">$299.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="7">
                    <input type="hidden" name="nombre" value="Mentiras Cuanticas">
                    <input type="hidden" name="precio" value="299.00">
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