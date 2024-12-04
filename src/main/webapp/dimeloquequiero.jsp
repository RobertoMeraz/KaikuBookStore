<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dime lo que quiero</title>
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
                <img src="imagenes/dimeloque.jpg" alt="Dime lo que quiero" width="500" height="700">
            </div>
            <div class="content">
                <h1>La era de la ansiedad</h1>
                <div class="texto_justificado"><p>Una mujer, en apariencia felizmente casada, llega a consulta el d�a de la muerte de su madre buscando la f�rmula para salvar su matrimonio; un cirujano exitoso siente que su cuerpo ha dejado de pertenecerle y busca ayuda tras sufrir varios ataques de p�nico; una joven estudiante que tiene una conducta sexual autodestructiva trata de entender por qu� no puede detenerse.

                        Los personajes de estas peculiares historias se entrecruzar�n semana a semana en el consultorio de un joven sex�logo que, al mismo tiempo, est� tratando de poner en orden su vida. Las confesiones, charlas y experiencias compartidas nos mostrar�n que cuando se trata de sexo, nada es normal.</p></div>
                <div class="price">$159.00</div>

                <div class="quantity-selector">
                    <input type="number" id="cantidad" value="1" min="1">
                </div>

                <form action="CarritoController" method="post">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="8"> 
                    <input type="hidden" name="nombre" value="Dime lo que quiero">
                    <input type="hidden" name="precio" value="159.00">
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