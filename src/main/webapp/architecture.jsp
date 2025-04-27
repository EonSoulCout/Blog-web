<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arquitectura del Coliseo Romano</title>
    <link rel="stylesheet" href="css/des_architecture.css" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="contenedor-principal">
        <header class="header-banner">
            <div class="overlay">
                <h1 class="titulo-principal">ARQUITECTURA DEL COLISEO</h1>
                <p class="subtitulo">La ingeniería revolucionaria detrás del anfiteatro más famoso de Roma</p>
            </div>
        </header>
        
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="history.jsp">Historia</a></li>
                <li><a href="galery.jsp">Galería</a></li>
            </ul>
        </nav>
        
        <main class="contenido">
            <h2 class="titulo-seccion">Diseño Estructural</h2>
            
            <div class="seccion-contenido">
                <div class="columna-texto">
                    <p class="parrafo">
                        El Coliseo representa la cúspide de la ingeniería romana. Con sus 48 metros de altura, 188 metros de largo y 156 metros de ancho, fue el anfiteatro más grande jamás construido en el Imperio Romano.
                    </p>
                    
                    <p class="parrafo">
                        Su diseño elíptico permitía una excelente visibilidad desde cualquier asiento, mientras que el sofisticado sistema de arcos y bóvedas distribuía eficientemente el peso de la estructura.
                    </p>
                </div>
                <div class="columna-imagen">
                    <img src="images/totally build.jpg" alt="Estructura del Coliseo" class="imagen-articulo">
                </div>
            </div>
            
            <div class="elemento-arquitectonico">
                <h2 class="titulo-seccion">Materiales de Construcción</h2>
                <p class="parrafo">
                    Los romanos emplearon diversos materiales según su función estructural: travertino para los pilares principales, toba para los muros radiales, ladrillo para las bóvedas superiores y hormigón romano para las fundaciones.
                </p>
                
                <div class="galeria-arquitectura">
                    <div class="item-galeria">
                        <img src="images/Travertino.jpg" alt="Travertino">
                    </div>
                    <div class="item-galeria">
                        <img src="images/Hormigón romano.jpg" alt="Hormigón romano">
                    </div>
                    <div class="item-galeria">
                        <img src="images/Toba volcánica.jpg" alt="Toba volcánica">
                    </div>
                </div>
            </div>
            
            <h2 class="titulo-seccion">Innovaciones Clave</h2>
            
            <div class="timeline">
                <div class="timeline-item">
                    <div class="timeline-fecha">72 d.C.</div>
                    <div class="timeline-contenido">
                        <h3>Sistema de Vomitorios</h3>
                        <p>Permitía el rápido movimiento de 50,000 espectadores</p>
                    </div>
                </div>
                
                <div class="timeline-item">
                    <div class="timeline-fecha">80 d.C.</div>
                    <div class="timeline-contenido">
                        <h3>Hipogeo</h3>
                        <p>Sistema subterráneo para espectáculos</p>
                    </div>
                </div>
            </div>
            
            <div class="contenedor-imagen-central">
                <img src="images/structure build.jpg" alt="Vista interior del Coliseo Romano">
            </div>
        </main>
        
        <footer class="footer">
            <p>&copy; 2025 Arquitectura Romana | Todos los derechos reservados</p>
        </footer>
    </div>
</body>
</html>