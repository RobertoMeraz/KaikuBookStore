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
                <div class="texto_justificado"><p>Que no te digan, que no te cuenten ... Este libro te explica, de manera clara y muy divertida, lo que s� es la f�sica cu�ntica.

En realidad, �qu� es la f�sica cu�ntica? Si puedes responder esta pregunta sin enga�ar a la persona que se encuentra junto a ti en la librer�a, entonces deja de leer ahora mismo. Aunque la mayor�a de nosotros no entendemos realmente la f�sica cu�ntica, sabemos que es m�stica e impresionante y creemos que si la entendi�ramos tal vez ser�amos ricos, hermosos y felices, �verdad? Despu�s de todo, hay mucha gente que intenta venderte cristales cu�nticos para alinear tu energ�a cu�ntica con tu destino cu�ntico. �Ser� que est�n todos equivocados?

Esp�iler: s� lo est�n. No existen los cristales cu�nticos. �Lo siento!

Por fortuna, a medida que la pseudociencia se apodera de internet y cada vez es m�s dif�cil diferenciar los hechos alternativos de la ciencia, Chris Ferrie (�un f�sico cu�ntico real!) nos explica la f�sica cu�ntica de una manera que tiene sentido para que podamos detectar a los mentirosos y merolicos a kil�metros de distancia y ense�arles lo que realmente es el entrelazamiento cu�ntico (no, no tiene nada que ver con el romance). Si amas la ciencia y quieres saber m�s que cuando despertaste esta ma�ana, entonces Mentiras cu�nticas es EL libro para ti.
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