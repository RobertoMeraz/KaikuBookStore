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
                    <label for="genre">Género</label>
                    <select id="genre">
                        <option value="">Todos los géneros</option>
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
                    <img src="imagenes/dandadan1_3.png" alt="dandadan1">
                    <h3>DANDADAN N.1</h3>
                    <div class="author">Yukinobu Tatsu</div>
                    <div class="price">$159.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="1">
                        <input type="hidden" name="nombre" value="DANDADAN N.1">
                        <input type="hidden" name="precio" value="159.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/JJKN1_3.png" alt="Jujutsu Kaisen N1">
                    <h3>JUJUTSU KAISEN N.1 </h3>
                    <div class="author">Gege Akutami</div>
                    <div class="price">$109.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="2">
                        <input type="hidden" name="nombre" value="JUJUTSU KAISEN N.1">
                        <input type="hidden" name="precio" value="109.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/demonn1_3.jpg" alt="Demon Slayer N.1">
                    <h3>DEMON SLAYER N.1</h3>
                    <div class="author">Koyoharu Gotouge</div>
                    <div class="price">$119.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="3">
                        <input type="hidden" name="nombre" value="DEMON SLAYER N.1">
                        <input type="hidden" name="precio" value="119.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/op1_3.png" alt="One Piece N.1">
                    <h3>ONE PIECE N.1</h3>
                    <div class="author">Eiichiro Oda</div>
                    <div class="price">$99.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="4">
                        <input type="hidden" name="nombre" value="ONE PIECE N.1">
                        <input type="hidden" name="precio" value="99.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/naruto1_3.png" alt="Naruto N.1">
                    <h3>NARUTO N.1</h3>
                    <div class="author">Masashi Kishimoto</div>
                    <div class="price">$99.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="5">
                        <input type="hidden" name="nombre" value="NARUTO N.1">
                        <input type="hidden" name="precio" value="99.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/ber1_3.png" alt="Berserk N.1">
                    <h3>BERSERK N.1</h3>
                    <div class="author">Hentaro Miura</div>
                    <div class="price">$99.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="6">
                        <input type="hidden" name="nombre" value="BERSERK N.1">
                        <input type="hidden" name="precio" value="99.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/myhero1_3.png" alt="My Hero Academia N.1">
                    <h3>MY HERO ACADEMIA N.1</h3>
                    <div class="author">Kohei Horikoshi</div>
                    <div class="price">$99.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="7">
                        <input type="hidden" name="nombre" value="MY HERO ACADEMIA N.1">
                        <input type="hidden" name="precio" value="99.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/nana1_3.png" alt="Nana N.1">
                    <h3>NANA N.1</h3>
                    <div class="author">Ai Yazawa</div>
                    <div class="price">$129.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="8">
                        <input type="hidden" name="nombre" value="NANA N.1">
                        <input type="hidden" name="precio" value="129.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/DB1_3.png" alt="Dragon Ball N.1">
                    <h3>DRAGON BALL N.1</h3>
                    <div class="author">Akira Toriyama</div>
                    <div class="price">$99.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="9">
                        <input type="hidden" name="nombre" value="DRAGON BALL N.1">
                        <input type="hidden" name="precio" value="99.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/bleach1_3.png" alt="Bleach N.1">
                    <h3>BLEACH N.1l</h3>
                    <div class="author">Tite Kubo</div>
                    <div class="price">$338.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="10">
                        <input type="hidden" name="nombre" value="BLEACH N.1">
                        <input type="hidden" name="precio" value="338.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/ragnarok1_3.png" alt="RECORD OF RAGNAROK N.1">
                    <h3>RECORD OF RAGNAROK N.1</h3>
                    <div class="author">Shumatsu no Valkyrie</div>
                    <div class="price">$169.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="11">
                        <input type="hidden" name="nombre" value="RECORD OF RAGNAROK N.1">
                        <input type="hidden" name="precio" value="169.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/DN1_3.png" alt="DEATH NOTE N. 1">
                    <h3>DEATH NOTE N. 1</h3>
                    <div class="author">Tsugumi Oba</div>
                    <div class="price">$99.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="12">
                        <input type="hidden" name="nombre" value="DEATH NOTE N. 1">
                        <input type="hidden" name="precio" value="99.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/Rent1_3.png" alt="RENT-A-GIRLFRIEND N.1">
                    <h3>RENT-A-GIRLFRIEND N.1</h3>
                    <div class="author">Reiji Miyajima</div>
                    <div class="price">$119.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="13">
                        <input type="hidden" name="nombre" value="RENT-A-GIRLFRIEND N.1">
                        <input type="hidden" name="precio" value="119.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/uzumaki1_3.png" alt="UZUMAKI N.1">
                    <h3>UZUMAKI N.1</h3>
                    <div class="author">Junji Ito</div>
                    <div class="price">$99.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="14">
                        <input type="hidden" name="nombre" value="UZUMAKI N.1">
                        <input type="hidden" name="precio" value="99.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>

                <div class="book-card">
                    <img src="imagenes/blackclover1_3.jpg" alt="BLACK CLOVER N.1">
                    <h3>BLACK CLOVER N.1</h3>
                    <div class="author">Yuki Tabata</div>
                    <div class="price">$99.00 MXN</div>
                    <form action="CarritoController" method="post">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="id" value="15">
                        <input type="hidden" name="nombre" value="BLACK CLOVER N.1">
                        <input type="hidden" name="precio" value="99.00">
                        <input type="hidden" name="cantidad" value="1">
                        <button type="submit" class="add-to-cart">AÑADIR AL CARRITO</button>
                    </form>
                </div>
            </div>

            <div class="pagination">
                <button>&#9664;</button>
                <a href="catalogo.jsp"><button>1</button></a>
                <a href="catalogo2.jsp"><button>2</button></a>
                <button class="active">3</button>
                <button>&#9654;</button>
            </div>
        </main>
    </body>
</html>