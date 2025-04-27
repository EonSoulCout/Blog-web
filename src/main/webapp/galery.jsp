<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El Coliseo Romano - Galería</title>
    <link rel="stylesheet" href="css/des_index.css" type="text/css">
    <link rel="stylesheet" href="css/des_galery.css" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <script>
        function checkAnswers() {
            const correctAnswers = ["c", "b", "a", "b", "c"];
            let score = 0;
            
            // Ocultar mensajes previos
            document.querySelectorAll('.result-message').forEach(el => {
                el.style.display = "none";
            });
            
            // Verificar respuestas
            for (let i = 1; i <= 5; i++) {
                const selectedOption = document.querySelector(`input[name="q${i}"]:checked`);
                if (selectedOption) {
                    const answer = selectedOption.value;
                    const questionResult = document.getElementById(`result-q${i}`);
                    
                    if (answer === correctAnswers[i-1]) {
                        score++;
                        questionResult.textContent = "✓ ¡Correcto!";
                        questionResult.className = "correct";
                    } else {
                        questionResult.textContent = "✗ Incorrecto";
                        questionResult.className = "incorrect";
                    }
                    questionResult.style.display = "block";
                }
            }
            
            // Mostrar resultados
            const scoreDisplay = document.getElementById("quiz-score");
            scoreDisplay.innerHTML = `Tu puntuación: <span class="puntuacion-numero">${score}</span>/5`;
            scoreDisplay.style.display = "block";
            
            const quizMessage = document.getElementById("quiz-message");
            if (score === 5) {
                quizMessage.textContent = "¡Excelente! Eres un experto en el Coliseo Romano.";
            } else if (score >= 3) {
                quizMessage.textContent = "¡Buen trabajo! Conoces bastante sobre el Coliseo Romano.";
            } else {
                quizMessage.textContent = "¡Sigue aprendiendo! El Coliseo Romano tiene muchos secretos por descubrir.";
            }
            quizMessage.style.display = "block";
            
            // Mostrar fuentes
            document.querySelector('.fuentes-informacion').style.display = "block";
            
            // Scroll a resultados
            document.getElementById("quiz-results").scrollIntoView({behavior: "smooth"});
        }
        
        function resetQuiz() {
            // Resetear selecciones
            document.querySelectorAll('input[type="radio"]').forEach(button => {
                button.checked = false;
            });
            
            // Ocultar resultados
            document.querySelectorAll('.result-message, .quiz-score, .quiz-message, .fuentes-informacion').forEach(el => {
                el.style.display = "none";
            });
            
            // Scroll al inicio
            document.querySelector('.titulo-seccion').scrollIntoView({behavior: "smooth"});
        }
    </script>
</head>
<body>
    <div class="contenedor-principal">
        <header class="header-banner">
            <div class="overlay">
                <h1 class="titulo-principal">GALERÍA DEL COLISEO</h1>
                <p class="subtitulo">Explora las imágenes y pon a prueba tus conocimientos</p>
            </div>
        </header>
        
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="history.jsp">Historia</a></li>
                <li><a href="architecture.jsp">Arquitectura</a></li>
            </ul>
        </nav>
        
        <main class="contenido">
            <h2 class="titulo-seccion">Galería Interactiva</h2>
            <p class="introduccion-galeria">Explora las impresionantes imágenes del Coliseo Romano y responde a nuestro cuestionario para poner a prueba tus conocimientos sobre este monumento histórico.</p>
            
            <section class="galeria-imagenes">
                <div class="grid-galeria">
                    <div class="item-galeria">
                        <img src="images/outside build.jpg" alt="Vista exterior del Coliseo" class="imagen-galeria">
                        <div class="caption">Vista exterior del Coliseo Romano</div>
                    </div>
                    <div class="item-galeria">
                        <img src="images/inside build.jpg" alt="Arena del Coliseo" class="imagen-galeria">
                        <div class="caption">La arena central donde se celebraban los combates</div>
                    </div>
                    <div class="item-galeria">
                        <img src="images/hypogeum.jpg" alt="Hypogeum del Coliseo" class="imagen-galeria">
                        <div class="caption">El hypogeum: sistema subterráneo de túneles y cámaras</div>
                    </div>
                    <div class="item-galeria">
                        <img src="images/roof build.jpg" alt="Arcos del Coliseo" class="imagen-galeria">
                        <div class="caption">Detalle de los arcos y órdenes arquitectónicos</div>
                    </div>
                    <div class="item-galeria">
                        <img src="images/night build.jpg" alt="Coliseo al anochecer" class="imagen-galeria">
                        <div class="caption">El Coliseo al anochecer: un espectáculo visual</div>
                    </div>
                </div>
            </section>
            
            <div class="separador"></div>
            
            <section class="quiz-seccion">
                <h2 class="titulo-seccion">Pon a Prueba tus Conocimientos</h2>
                <form id="quiz-form" class="quiz-form">
                    <!-- Pregunta 1 -->
                    <div class="pregunta-contenedor">
                        <div class="pregunta-imagen">
                            <img src="images/night build.jpg" alt="Vista exterior del Coliseo" class="quiz-imagen">
                        </div>
                        <div class="pregunta-texto">
                            <h3>Pregunta 1:</h3>
                            <p>¿En qué siglo se comenzó a construir el Coliseo Romano?</p>
                            <div class="opciones">
                                <label><input type="radio" name="q1" value="a"> Siglo I a.C.</label>
                                <label><input type="radio" name="q1" value="b"> Siglo II d.C.</label>
                                <label><input type="radio" name="q1" value="c"> Siglo I d.C.</label>
                            </div>
                            <div id="result-q1" class="result-message"></div>
                        </div>
                    </div>
                    
                    <!-- Pregunta 2 -->
                    <div class="pregunta-contenedor">
                        <div class="pregunta-imagen">
                            <img src="images/arena.jpg" alt="Arena del Coliseo" class="quiz-imagen">
                        </div>
                        <div class="pregunta-texto">
                            <h3>Pregunta 2:</h3>
                            <p>¿Cómo se llamaba originalmente el Coliseo?</p>
                            <div class="opciones">
                                <label><input type="radio" name="q2" value="a"> Teatro Romano</label>
                                <label><input type="radio" name="q2" value="b"> Anfiteatro Flavio</label>
                                <label><input type="radio" name="q2" value="c"> Circus Maximus</label>
                            </div>
                            <div id="result-q2" class="result-message"></div>
                        </div>
                    </div>
                    
                    <!-- Pregunta 3 -->
                    <div class="pregunta-contenedor">
                        <div class="pregunta-imagen">
                            <img src="images/hypogeum test.jpg" alt="Hypogeum del Coliseo" class="quiz-imagen">
                        </div>
                        <div class="pregunta-texto">
                            <h3>Pregunta 3:</h3>
                            <p>¿Qué nombre recibía el complejo sistema de túneles bajo la arena del Coliseo?</p>
                            <div class="opciones">
                                <label><input type="radio" name="q3" value="a"> Hypogeum</label>
                                <label><input type="radio" name="q3" value="b"> Criptoportico</label>
                                <label><input type="radio" name="q3" value="c"> Foro Subterráneo</label>
                            </div>
                            <div id="result-q3" class="result-message"></div>
                        </div>
                    </div>
                    
                    <!-- Pregunta 4 -->
                    <div class="pregunta-contenedor">
                        <div class="pregunta-imagen">
                            <img src="images/roof 2 build.jpg" alt="Arcos del Coliseo" class="quiz-imagen">
                        </div>
                        <div class="pregunta-texto">
                            <h3>Pregunta 4:</h3>
                            <p>¿Cuántos órdenes arquitectónicos diferentes se utilizaron en la fachada del Coliseo?</p>
                            <div class="opciones">
                                <label><input type="radio" name="q4" value="a"> Dos</label>
                                <label><input type="radio" name="q4" value="b"> Tres</label>
                                <label><input type="radio" name="q4" value="c"> Cuatro</label>
                            </div>
                            <div id="result-q4" class="result-message"></div>
                        </div>
                    </div>
                    
                    <!-- Pregunta 5 -->
                    <div class="pregunta-contenedor">
                        <div class="pregunta-imagen">
                            <img src="images/banner 1.jpg" alt="Coliseo al atardecer" class="quiz-imagen">
                        </div>
                        <div class="pregunta-texto">
                            <h3>Pregunta 5:</h3>
                            <p>¿Aproximadamente cuántos espectadores podía albergar el Coliseo en su época de esplendor?</p>
                            <div class="opciones">
                                <label><input type="radio" name="q5" value="a"> 20,000</label>
                                <label><input type="radio" name="q5" value="b"> 40,000</label>
                                <label><input type="radio" name="q5" value="c"> 50,000-80,000</label>
                            </div>
                            <div id="result-q5" class="result-message"></div>
                        </div>
                    </div>
                    
                    <div class="botones-quiz">
                        <button type="button" onclick="checkAnswers()" class="boton boton-quiz">Comprobar respuestas</button>
                        <button type="button" onclick="resetQuiz()" class="boton boton-reset">Reiniciar cuestionario</button>
                    </div>
                    
                    <div id="quiz-results" class="quiz-results">
                        <h3 id="quiz-score" class="quiz-score"></h3>
                        <p id="quiz-message" class="quiz-message"></p>
                        
                        <div class="fuentes-informacion" style="display:none;">
                            <h4>Fuentes de información:</h4>
                            <ul>
                                <li><a href="https://www.nationalgeographic.com/history/article/colosseum" target="_blank" rel="noopener noreferrer">National Geographic - Historia del Coliseo</a></li>
                                <li><a href="https://www.britannica.com/topic/Colosseum" target="_blank" rel="noopener noreferrer">Encyclopædia Britannica - Datos arquitectónicos</a></li>
                                <li><a href="https://parcocolosseo.it" target="_blank" rel="noopener noreferrer">Sitio Oficial del Parque Arqueológico</a></li>
                                <li><a href="https://whc.unesco.org/en/list/91/" target="_blank" rel="noopener noreferrer">UNESCO - Patrimonio Mundial</a></li>
                                <li><a href="https://www.rome.net/colosseum" target="_blank" rel="noopener noreferrer">Guía Oficial de Turismo de Roma</a></li>
                            </ul>
                            <p class="nota-fuentes">Las respuestas correctas del cuestionario se basan en estas fuentes académicas y oficiales.</p>
                        </div>
                    </div>
                </form>
            </section>
            
            <div class="separador"></div>
            
            <a href="architecture.jsp" class="boton">Volver a Arquitectura</a>
        </main>
        
        <footer class="footer">
            <p>&copy; 2025 Blog del Coliseo Romano | Todos los derechos reservados</p>
        </footer>
    </div>
</body>
</html>