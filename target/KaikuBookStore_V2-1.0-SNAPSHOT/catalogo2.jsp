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
            <div class="logo">
                <img src="imagenes/logo 1.png" alt="Book icon">
                <span>KAIKUBOOKSTORE</span>
            </div>
            <nav>
                <ul>
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="acercade.html">Acerca de</a></li>
                    <li><a href="editoriales.html">Editoriales</a></li>
                    <li><a href="catalogo.jsp">Comprar</a></li>
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
                    <a href="lovecraft.html"><img src="imagenes/lovecraft_2.jpg" alt="lovecraft"></a>
                    <h3>El morador de las tinieblas - Lovecraft</h3>
                    <div class="author">Gou Tanabe</div>
                    <div class="price">$318.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <a href="starwars.html"><img src="imagenes/colorealagalaxia_2.jpg" alt="star wars"></a>
                    <h3>Star Wars. Colorea la galaxia</h3>
                    <div class="author">LucasfilmLTD</div>
                    <div class="price">$248.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <a href="mexico.html"><img src="imagenes/mexicolaobra_2.jpg" alt="Mexico la obra maestra del diablo"></a>
                    <h3>México, la obra maestra del diablo.</h3>
                    <div class="author">Alberto Montt</div>
                    <div class="price">$248.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>



                <div class="book-card">
                    <a href="mandalorian.html"><img src="imagenes/mandalorian_2.jpg" alt="The mandalorian cuaderno galactico"></a>
                    <h3>The Mandalorian 2. Cuaderno Galáctico</h3>
                    <div class="author">Marí­a Eugenio Blanco</div>
                    <div class="price">$98.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <a href="palabras_sanar.html"><img src="imagenes/palabrasparasanar_2.jpg" alt="Palabras para sanar"></a>
                    <h3>Palabras para sanar</h3>
                    <div class="author">Rupi Kaur</div>
                    <div class="price">$368.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <a href="solo_gato.html"><img src="imagenes/sologato_2.jpg" alt="Solo necesito un gato"></a>
                    <h3>Solo necesito un gato</h3>
                    <div class="author">Alberto Montt</div>
                    <div class="price">$268.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/camaralucida_2.jpg" alt="La camara lucida">
                    <h3>La camara lucida</h3>
                    <div class="author">Roland Barthes</div>
                    <div class="price">$209.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/freeplay_2.jpg" alt="Free Play">
                    <h3>Free Play</h3>
                    <div class="author">Stephen Nachmanovitch</div>
                    <div class="price">$299.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/vidaabejas_2.jpg" alt="La vida de las abajes">
                    <h3>La vida de las abejas</h3>
                    <div class="author">Maurice Maeterlinck</div>
                    <div class="price">$349.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/gardel_2.jpg" alt="Gardel">
                    <h3>Gardel</h3>
                    <div class="author">Felipe Pigna</div>
                    <div class="price">$338.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/hechaenmexico_2.jpg" alt="Hecha en México">
                    <h3>Hecha en México</h3>
                    <div class="author">Daniel Herranz | Paola Palazón Seguel</div>
                    <div class="price">$308.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/mentirascuanticas_2.jpg" alt="Mentiras Cuanticas">
                    <h3>Mentiras cuánticas</h3>
                    <div class="author">Chris Ferrie</div>
                    <div class="price">$299.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/guiatodo_2.jpg" alt="La guí­a completa de absolutamente todo">
                    <h3>La guí­a completa de absolutamente todo</h3>
                    <div class="author">Adam Rutherford | Hannah Fry</div>
                    <div class="price">$329.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/buendormir_2.jpg" alt="La ciencia del buen dormir">
                    <h3>La ciencia del buen dormir</h3>
                    <div class="author">Dr. Javier Albares</div>
                    <div class="price">$298.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
                </div>

                <div class="book-card">
                    <img src="imagenes/todaslasmuertes_2.jpg" alt="Todas las muertes">
                    <h3>Todas las muertes</h3>
                    <div class="author">Ricard Solé</div>
                    <div class="price">$239.00 MXN</div>
                    <a href="#" class="add-to-cart">AÑADIR AL CARRITO</a>
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