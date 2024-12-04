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
                    <a href="lovecraft.jsp"><img src="imagenes/lovecraft_2.jpg" alt="lovecraft"></a>
                    <h3>El morador de las tinieblas - Lovecraft</h3>
                    <div class="author">Gou Tanabe</div>
                    <div class="price">$318.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="1">
                        <input type="hidden" name="nombre" value="El morador de las tinieblas - Lovecraft">
                        <input type="hidden" name="precio" value="318.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="starwars.jsp"><img src="imagenes/colorealagalaxia_2.jpg" alt="star wars"></a>
                    <h3>Star Wars. Colorea la galaxia</h3>
                    <div class="author">LucasfilmLTD</div>
                    <div class="price">$248.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="2">
                        <input type="hidden" name="nombre" value="Star Wars. Colorea la galaxia">
                        <input type="hidden" name="precio" value="248.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="mexico.jsp"><img src="imagenes/mexicolaobra_2.jpg" alt="Mexico la obra maestra del diablo"></a>
                    <h3>México, la obra maestra del diablo.</h3>
                    <div class="author">Alberto Montt</div>
                    <div class="price">$248.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="3">
                        <input type="hidden" name="nombre" value="México, la obra maestra del diablo">
                        <input type="hidden" name="precio" value="248.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="mandalorian.jsp"><img src="imagenes/mandalorian_2.jpg" alt="The mandalorian cuaderno galactico"></a>
                    <h3>The Mandalorian 2. Cuaderno Galáctico</h3>
                    <div class="author">Marí­a Eugenio Blanco</div>
                    <div class="price">$98.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="4">
                        <input type="hidden" name="nombre" value="The Mandalorian 2. Cuaderno Galáctico">
                        <input type="hidden" name="precio" value="98.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="palabras_sanar.jsp"><img src="imagenes/palabrasparasanar_2.jpg" alt="Palabras para sanar"></a>
                    <h3>Palabras para sanar</h3>
                    <div class="author">Rupi Kaur</div>
                    <div class="price">$368.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="5">
                        <input type="hidden" name="nombre" value="Palabras para sanar">
                        <input type="hidden" name="precio" value="368.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="solo_gato.jsp"><img src="imagenes/sologato_2.jpg" alt="Solo necesito un gato"></a>
                    <h3>Solo necesito un gato</h3>
                    <div class="author">Alberto Montt</div>
                    <div class="price">$268.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="6">
                        <input type="hidden" name="nombre" value="Solo necesito un gato">
                        <input type="hidden" name="precio" value="268.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="camara_lucida.jsp"><img src="imagenes/camaralucida_2.jpg" alt="La camara lucida"></a>
                    <h3>La camara lucida</h3>
                    <div class="author">Roland Barthes</div>
                    <div class="price">$209.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="7">
                        <input type="hidden" name="nombre" value="La camara lucida">
                        <input type="hidden" name="precio" value="209.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="freeplay.jsp"><img src="imagenes/freeplay_2.jpg" alt="Free Play"></a>
                    <h3>Free Play</h3>
                    <div class="author">Stephen Nachmanovitch</div>
                    <div class="price">$299.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="8">
                        <input type="hidden" name="nombre" value="Free Play">
                        <input type="hidden" name="precio" value="299.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="abejas.jsp"><img src="imagenes/vidaabejas_2.jpg" alt="La vida de las abajes"></a>
                    <h3>La vida de las abejas</h3>
                    <div class="author">Maurice Maeterlinck</div>
                    <div class="price">$349.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="9">
                        <input type="hidden" name="nombre" value="La vida de las abejas">
                        <input type="hidden" name="precio" value="349.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="gardel.jsp"><img src="imagenes/gardel_2.jpg" alt="Gardel"></a>
                    <h3>Gardel</h3>
                    <div class="author">Felipe Pigna</div>
                    <div class="price">$338.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="10">
                        <input type="hidden" name="nombre" value="Gardel">
                        <input type="hidden" name="precio" value="338.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="hecha_mexico.jsp"><img src="imagenes/hechaenmexico_2.jpg" alt="Hecha en México"></a>
                    <h3>Hecha en México</h3>
                    <div class="author">Daniel Herranz | Paola Palazón Seguel</div>
                    <div class="price">$308.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="11">
                        <input type="hidden" name="nombre" value="Hecha en México">
                        <input type="hidden" name="precio" value="308.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="mentiras_cuanticas.jsp"><img src="imagenes/mentirascuanticas_2.jpg" alt="Mentiras Cuanticas"></a>
                    <h3>Mentiras cuánticas</h3>
                    <div class="author">Chris Ferrie</div>
                    <div class="price">$299.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="12">
                        <input type="hidden" name="nombre" value="Mentiras cuánticas">
                        <input type="hidden" name="precio" value="299.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="guia_todo.jsp"><img src="imagenes/guiatodo_2.jpg" alt="La guí­a completa de absolutamente todo"></a>
                    <h3>La guí­a completa de absolutamente todo</h3>
                    <div class="author">Adam Rutherford | Hannah Fry</div>
                    <div class="price">$329.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="13">
                        <input type="hidden" name="nombre" value="La guí­a completa de absolutamente todo">
                        <input type="hidden" name="precio" value="329.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="buen_dormir.jsp"><img src="imagenes/buendormir_2.jpg" alt="La ciencia del buen dormir"></a>
                    <h3>La ciencia del buen dormir</h3>
                    <div class="author">Dr. Javier Albares</div>
                    <div class="price">$298.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="14">
                        <input type="hidden" name="nombre" value="La ciencia del buen dormir">
                        <input type="hidden" name="precio" value="298.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <a href="todas_muertes.jsp"><img src="imagenes/todaslasmuertes_2.jpg" alt="Todas las muertes"></a>
                    <h3>Todas las muertes</h3>
                    <div class="author">Ricard Solé</div>
                    <div class="price">$239.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="15">
                        <input type="hidden" name="nombre" value="Todas las muertes">
                        <input type="hidden" name="precio" value="239.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>
            </div>

            <div class="pagination">
                <button>&#9664;</button>
                <a href="catalogo.jsp"><button>1</button></a>
                <button class="active">2</button>
                <a href="catalogo3.jsp"><button>3</button></a>
                <button>&#9654;</button>
            </div>
        </main>
    </body>
</html>