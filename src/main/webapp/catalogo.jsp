<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KAIKUBOOKSTORE - Catálogo Completo</title>
        <link rel="stylesheet" href="estilos/estilo_catalogo.css">
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
            <h1>Catálogo Completo</h1>

            <div class="filters">
                <div class="filter-group">
                    <label for="genre">Genero</label>
                    <select id="genre">
                        <option value="">Todos los generos</option>
                        <option value="fiction">Ficción</option>
                        <option value="nonfiction">No Ficción</option>
                        <option value="mystery">Misterio</option>
                        <option value="romance">Romance</option>
                        <option value="selfhelp">Autoayuda</option>
                    </select>
                </div>

                <div class="filter-group">
                    <label for="price">Precio</label>
                    <select id="price">
                        <option value="">Todos los precios</option>
                        <option value="0-200">$0 - $200</option>
                        <option value="201-500">$201 - $500</option>
                        <option value="501+">$501+</option>
                    </select>
                </div>

                <div class="filter-group">
                    <label for="editorial">Editorial</label>
                    <select id="editorial">
                        <option value="">Todas las editoriales</option>
                        <option value="planeta">Planeta</option>
                        <option value="penguin">Penguin House</option>
                        <option value="anagrama">Panini</option>
                    </select>
                </div>

                <div class="search-bar">
                    <input type="text" placeholder="Buscar por tí­tulo, autor o ISBN...">
                    <button>Buscar</button>
                </div>
            </div>

            <div class="catalog-grid">
                <div class="book-card">
                    <a href="comodejar.jsp"> <img src="imagenes/comodejar.jpg" alt="Cómo dejar de preocuparte"></a>
                    <h3>Cómo dejar de preocuparte</h3>
                    <div class="author">Dale Carnegie</div>
                    <div class="price">$299.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="1">
                        <input type="hidden" name="nombre" value="Cómo dejar de preocuparte">
                        <input type="hidden" name="precio" value="299.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="laera_de_ansiedad.jsp"> <img src="imagenes/laeraansi.jpg" alt="LA ERA DE LA ANSIEDAD"></a>
                    <h3>LA ERA DE LA ANSIEDAD</h3>
                    <div class="author">Roberto Palacio</div>
                    <div class="price">$149.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="2">
                        <input type="hidden" name="nombre" value="LA ERA DE LA ANSIEDAD">
                        <input type="hidden" name="precio" value="149.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="hija_relojero.jsp"><img src="imagenes/relojero (1).jpg" alt="LA HIJA DEL RELOJERO"></a>   
                    <h3>LA HIJA DEL RELOJERO</h3>
                    <div class="author">Kate Morton</div>
                    <div class="price">$249.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="3">
                        <input type="hidden" name="nombre" value="LA HIJA DEL RELOJERO">
                        <input type="hidden" name="precio" value="249.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="dimeloquequiero.jsp"><img src="imagenes/dimeloque.jpg" alt="DIME LO QUE QUIERO"></a>
                    <h3>DIME LO QUE QUIERO</h3>
                    <div class="author">Carla Celis</div>
                    <div class="price">$159.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="4">
                        <input type="hidden" name="nombre" value="DIME LO QUE QUIERO">
                        <input type="hidden" name="precio" value="159.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="arte_guerra.jsp"><img src="imagenes/arteguerra.jpg" alt="El arte de la guerra"></a>
                    <h3>El arte de la guerra</h3>
                    <div class="author">Sun Tzu</div>
                    <div class="price">$199.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="5">
                        <input type="hidden" name="nombre" value="El arte de la guerra">
                        <input type="hidden" name="precio" value="199.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="cienanios.jsp"><img src="imagenes/cienan.jpg" alt="Cien años de soledad"></a>
                    <h3>Cien años de soledad</h3>
                    <div class="author">Gabriel Garcí­a Márquez</div>
                    <div class="price">$349.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="6">
                        <input type="hidden" name="nombre" value="Cien años de soledad">
                        <input type="hidden" name="precio" value="349.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="1984.jsp"><img src="imagenes/1984.jpg" alt="1984"></a>
                    <h3>1984</h3>
                    <div class="author">George Orwell</div>
                    <div class="price">$279.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="7">
                        <input type="hidden" name="nombre" value="1984">
                        <input type="hidden" name="precio" value="279.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="principito.jsp"><img src="imagenes/princi.jpg" alt="El principito"></a>
                    <h3>El principito</h3>
                    <div class="author">Antoine de Saint-Exupéry</div>
                    <div class="price">$189.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="8">
                        <input type="hidden" name="nombre" value="El principito">
                        <input type="hidden" name="precio" value="189.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="busca_interior.jsp"><img src="imagenes/busquedaint.jpg" alt="Busca en tu interior"></a>
                    <h3>Busca en tu interior</h3>
                    <div class="author">Chade-Meng Tan</div>
                    <div class="price">$328.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="9">
                        <input type="hidden" name="nombre" value="Busca en tu interior">
                        <input type="hidden" name="precio" value="328.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="cuentos_de_edgar.jsp"><img src="imagenes/cuentosedgar.jpg" alt="Cuentos de Edgar Allan Poe"></a>
                    <h3>Cuentos de Edgar Allan Poe</h3>
                    <div class="author">Edgar Allan Poe</div>
                    <div class="price">$218.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="10">
                        <input type="hidden" name="nombre" value="Cuentos de Edgar Allan Poe">
                        <input type="hidden" name="precio" value="218.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="dominio_publico.jsp"><img src="imagenes/dominiopu.jpg" alt="Dominio Publico N. 01"></a>
                    <h3>Dominio Publico N.01</h3>
                    <div class="author">Chip Zdarsky</div>
                    <div class="price">$358.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="11">
                        <input type="hidden" name="nombre" value="Dominio Publico N.01">
                        <input type="hidden" name="precio" value="358.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="psicologia_dinero.jsp"><img src="imagenes/psicodine.jpg" alt="La psicologia del dinero"></a>
                    <h3>La psicologia del dinero TD</h3>
                    <div class="author">Morgan Housel</div>
                    <div class="price">$329.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="12">
                        <input type="hidden" name="nombre" value="La psicologia del dinero TD">
                        <input type="hidden" name="precio" value="329.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="porque_recordamos.jsp"><img src="imagenes/porquere.jpg" alt="Por que recordamos"></a>
                    <h3>Por que recordamos</h3>
                    <div class="author">Charan Ranganath</div>
                    <div class="price">$399.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="13">
                        <input type="hidden" name="nombre" value="Por que recordamos">
                        <input type="hidden" name="precio" value="399.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="desapegarse_anestesia.jsp"><img src="imagenes/desape.jpg" alt="Desapegarse sin anestesia"></a>
                    <h3>Desapegarse sin anestesia</h3>
                    <div class="author">Walter Riso</div>
                    <div class="price">$298.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="14">
                        <input type="hidden" name="nombre" value="Desapegarse sin anestesia">
                        <input type="hidden" name="precio" value="298.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="metro2034.jsp"><img src="imagenes/metro.jpg" alt="Metro 2034 NE"></a>
                    <h3>Metro 2034 (NE)</h3>
                    <div class="author">Morgan Housel</div>
                    <div class="price">$329.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="15">
                        <input type="hidden" name="nombre" value="Metro 2034 (NE)">
                        <input type="hidden" name="precio" value="329.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>
            </div>

            <div class="pagination">
                <button>&#9664;</button>
                <button class="active">1</button>
                <a href="catalogo2.jsp"><button>2</button></a>
                <a href="catalogo3.jsp"><button>3</button></a>
                <button>&#9654;</button>
            </div>
        </main>
    </body>
</html>