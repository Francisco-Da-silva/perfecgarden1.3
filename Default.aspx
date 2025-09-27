<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="perfecgarden1._3._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            line-height: 1.6;
            color: #333;
        }

        /* Carousel Container */
        .carousel-container {
            position: relative;
            width: 100%;
            height: 600px;
            border-radius: 1rem;
            overflow: hidden;
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.15);
            margin: 2rem auto;
            max-width: 1200px;
        }

        /* Carousel Slides */
        .carousel-slide {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            opacity: 0;
            transform: translateX(100%);
            transition: all 0.7s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .carousel-slide.active {
            opacity: 1;
            transform: translateX(0);
        }

        .carousel-slide.prev {
            transform: translateX(-100%);
        }

        /* Background Images */
        .slide-background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
        }

        .slide-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            opacity: 0.9;
        }

        .slide-1 .slide-background {
            background-image:  url("imagenes/tractor-parque-la-verdad.jpeg") ;
        }

        .slide-1 .slide-overlay {
            background: linear-gradient(135deg, #10b981 0%, #059669 100%);
        }

        .slide-2 .slide-background {
            background-image: url( "imagenes/fondopj.png");
        }

        .slide-2 .slide-overlay {
            background: linear-gradient(135deg, #22c55e 0%, #16a34a 100%);
        }

        .slide-3 .slide-background {
            background-image: url("imagenes/pileta-sakura.jpeg" );
        }

        .slide-3 .slide-overlay {
            background: linear-gradient(135deg, #3b82f6 0%, #0ea5e9 100%);
        }

        /* Slide Content */
        .slide-content {
            position: relative;
            z-index: 10;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            padding: 2rem;
        }

        .slide-inner {
            max-width: 800px;
        }

        .slide-icon {
            width: 80px;
            height: 80px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem;
            backdrop-filter: blur(10px);
            font-size: 2rem;
        }

        .slide-badge {
            display: inline-block;
            padding: 0.5rem 1.5rem;
            background: rgba(255, 255, 255, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 2rem;
            font-size: 0.875rem;
            font-weight: 600;
            margin-bottom: 1rem;
            backdrop-filter: blur(10px);
        }

        .slide-title {
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 1.5rem;
            line-height: 1.2;
        }

        .slide-text {
            font-size: 1.125rem;
            line-height: 1.7;
            margin-bottom: 2rem;
            opacity: 0.95;
        }

        .slide-button {
            display: inline-flex;
            align-items: center;
            padding: 1rem 2rem;
            background: white;
            color: #333;
            text-decoration: none;
            border-radius: 2rem;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .slide-button:hover {
            background: #f8f9fa;
            transform: translateY(-2px) scale(1.05);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            text-decoration: none;
            color: #333;
        }

        .slide-button::after {
            content: '→';
            margin-left: 0.5rem;
            transition: transform 0.5s ease;
        }

        .slide-button:hover::after {
            transform: translateX(4px);
        }

        /* Navigation Arrows */
        .carousel-nav {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 50px;
            height: 50px;
            background: rgba(255, 255, 255, 0.2);
            border: none;
            border-radius: 50%;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
            z-index: 20;
        }

        .carousel-nav:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-50%) scale(1.1);
        }

        .carousel-nav.prev {
            left: 1.5rem;
        }

        .carousel-nav.next {
            right: 1.5rem;
        }

        /* Dot Indicators */
        .carousel-dots {
            position: absolute;
            bottom: 2rem;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            gap: 0.75rem;
            z-index: 20;
        }

        .carousel-dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.5);
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .carousel-dot.active {
            background: white;
            transform: scale(1.25);
        }

        .carousel-dot:hover {
            background: rgba(255, 255, 255, 0.8);
        }

        /* Progress Bar */
        .carousel-progress {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: rgba(255, 255, 255, 0.2);
            z-index: 20;
        }

        .carousel-progress-bar {
            height: 100%;
            background: white;
            transition: width 0.3s ease;
        }

        /* Info Cards */
        .info-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin-top: 3rem;
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
            padding: 0 1rem;
        }

        .info-card {
            background: white;
            border-radius: 1rem;
            padding: 1.5rem;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            cursor: pointer;
            border: 2px solid transparent;
        }

        .info-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        .info-card.active {
            border-color: #4CAF50;
            transform: translateY(-5px) scale(1.02);
        }

        .info-card-icon {
            width: 50px;
            height: 50px;
            border-radius: 0.75rem;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1rem;
            font-size: 1.5rem;
        }

        .info-card-1 .info-card-icon {
            background: linear-gradient(135deg, #10b981 0%, #059669 100%);
            color: white;
        }

        .info-card-2 .info-card-icon {
            background: linear-gradient(135deg, #22c55e 0%, #16a34a 100%);
            color: white;
        }

        .info-card-3 .info-card-icon {
            background: linear-gradient(135deg, #3b82f6 0%, #0ea5e9 100%);
            color: white;
        }

        .info-card h3 {
            font-size: 1.25rem;
            font-weight: 600;
            color: #1f2937;
            margin-bottom: 0.5rem;
        }

        .info-card p {
            color: #6b7280;
            font-size: 0.875rem;
            line-height: 1.5;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .carousel-container {
                height: 500px;
                margin: 1rem;
                border-radius: 0.75rem;
            }

            .slide-title {
                font-size: 2rem;
            }

            .slide-text {
                font-size: 1rem;
            }

            .carousel-nav {
                width: 40px;
                height: 40px;
                font-size: 1.25rem;
            }

            .carousel-nav.prev {
                left: 1rem;
            }

            .carousel-nav.next {
                right: 1rem;
            }

            .info-cards {
                grid-template-columns: 1fr;
                margin-top: 2rem;
            }
        }

        @media (max-width: 480px) {
            .slide-title {
                font-size: 1.75rem;
            }

            .slide-text {
                font-size: 0.95rem;
            }

            .slide-content {
                padding: 1rem;
            }
        }

        /* Animation Classes */
        .fade-in {
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Contact Section Styles */
       /* .contact-section {
            padding: 4rem 0;
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
        }
        
        .contact-header {
            text-align: center;
            margin-bottom: 3rem;
        }
        
        .contact-header h2 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #212529;
            margin-bottom: 1rem;
        }
        
        .contact-header p {
            font-size: 1.25rem;
            color: #6c757d;
            line-height: 1.6;
        }
        
        .contact-card {
            background: white;
            border-radius: 1rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            padding: 2rem;
            margin-bottom: 1.5rem;
            transition: all 0.3s ease;
            border: none;
            height: 100%;
        }
        
        .contact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }
        
        .contact-icon {
            width: 3rem;
            height: 3rem;
            border-radius: 0.75rem;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1rem;
            font-size: 1.5rem;
        }
        
        .whatsapp-icon {
            background-color: #dcf8e6;
            color: #25d366;
        }
        
        .email-icon {
            background-color: #dbeafe;
            color: #3b82f6;
        }
        
        .linkedin-icon {
            background-color: #dbeafe;
            color: #0077b5;
        }*/
        
        .contact-card h3 {
            font-size: 1.125rem;
            font-weight: 600;
            color: #212529;
            margin-bottom: 0.5rem;
        }
        
        .contact-card p {
            color: #6c757d;
            margin-bottom: 1rem;
        }
        
        .contact-link {
            color: #4CAF50;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        
        .contact-link:hover {
            color: #45a049;
            text-decoration: none;
        }
        
        .whatsapp-link {
            color: #25d366;
        }
        
        .whatsapp-link:hover {
            color: #128c7e;
        }
        
        .email-link {
            color: #3b82f6;
        }
        
        .email-link:hover {
            color: #2563eb;
        }
        
        .linkedin-link {
            color: #0077b5;
        }
        
        .linkedin-link:hover {
            color: #005885;
        }
        
        .info-card-contact {
            background: white;
            border-radius: 1rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            padding: 1.5rem;
            margin-bottom: 1.5rem;
        }
        
        .info-card-contact h3 {
            font-size: 1.125rem;
            font-weight: 600;
            color: #212529;
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
        }
        
        .info-icon {
            width: 2.5rem;
            height: 2.5rem;
            background-color: #dcf8e6;
            color: #4CAF50;
            border-radius: 0.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 0.75rem;
            font-size: 1.25rem;
        }
        
        .schedule-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 0.5rem;
            color: #6c757d;
        }
        
        .schedule-item span:last-child {
            font-weight: 500;
            color: #212529;
        }
        
        .service-area ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        
        .service-area li {
            color: #6c757d;
            margin-bottom: 0.25rem;
            padding-left: 1rem;
            position: relative;
        }
        
        .service-area li:before {
            content: "•";
            color: #4CAF50;
            font-weight: bold;
            position: absolute;
            left: 0;
        }
        
        .cta-section {
            margin-top: 3rem;
            text-align: center;
        }
        
        .cta-card {
            background: linear-gradient(135deg, #4CAF50 0%, #45a049 100%);
            border-radius: 1rem;
            padding: 3rem 2rem;
            color: white;
        }
        
        .cta-card h3 {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }
        
        .cta-card p {
            font-size: 1.125rem;
            margin-bottom: 2rem;
            opacity: 0.9;
        }
        
        .cta-buttons {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            justify-content: center;
        }
        
        .btn-cta-primary {
            background-color: white;
            color: #4CAF50;
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 0.5rem;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
        }
        
        .btn-cta-primary:hover {
            background-color: #f8f9fa;
            color: #45a049;
            transform: scale(1.05);
            text-decoration: none;
        }
        
        .btn-cta-secondary {
            background-color: rgba(255,255,255,0.2);
            color: white;
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 0.5rem;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
            display: inline-flex;
            align-items: center;
        }
        
        .btn-cta-secondary:hover {
            background-color: rgba(255,255,255,0.3);
            color: white;
            transform: scale(1.05);
            text-decoration: none;
        }
        
        .btn-icon {
            margin-right: 0.5rem;
            font-size: 1.25rem;
        }
    </style>

    <!-- Modern Carousel -->
    <div class="container-fluid" style="padding: 2rem 1rem;">
        <div class="carousel-container" id="perfectGardenCarousel">
            <!-- Slide 1: ¿Quiénes somos? -->
            <div class="carousel-slide slide-1 active">
                <div class="slide-background"></div>
                <div class="slide-overlay"></div>
                <div class="slide-content">
                    <div class="slide-inner">
                        <div class="slide-icon"><img src="imagenes/Logo-PG-sinfondo.png" alt="Perfect Garden" height="100"></div>
                        <div class="slide-badge">PERFECT GARDEN</div>
                        <h2 class="slide-title">¿Quiénes somos?</h2>
                        <p class="slide-text">
                            Perfect Garden es una empresa familiar con más de 10 años de experiencia en el mantenimiento profesional de espacios verdes, parques y cercos. Fundada por dos hermanos, Francisco y Leonardo Da Silva, brindamos soluciones técnicas y personalizadas a empresas, establecimientos rurales y espacios que requieren un servicio confiable, eficiente y con maquinaria propia de última generación.
                        </p>
                        <a href="quienessomos.aspx" class="slide-button">Seguir leyendo</a>
                    </div>
                </div>
            </div>

            <!-- Slide 2: Mantenimiento de Áreas Verdes -->
            <div class="carousel-slide slide-2">
                <div class="slide-background"></div>
                <div class="slide-overlay"></div>
                <div class="slide-content">
                    <div class="slide-inner">
                        <div class="slide-icon"><img src="imagenes/Logo-PG-sinfondo.png" alt="Perfect Garden" height="100"></div>
                        <div class="slide-badge">SERVICIOS</div>
                        <h2 class="slide-title">Mantenimiento de Áreas Verdes</h2>
                        <p class="slide-text">
                            En Perfect Garden nos especializamos en el mantenimiento integral de espacios verdes, brindando soluciones profesionales y personalizadas para campos, hogares y empresas. Nuestro objetivo es garantizar que cada espacio luzca prolijo, saludable y armonioso durante todo el año.
                        </p>
                        <a href="Mantenimientoareasverdes.aspx" class="slide-button">Seguir leyendo</a>
                    </div>
                </div>
            </div>

            <!-- Slide 3: Servicio de Piletas -->
            <div class="carousel-slide slide-3">
                <div class="slide-background"></div>
                <div class="slide-overlay"></div>
                <div class="slide-content">
                    <div class="slide-inner">
                        <div class="slide-icon"><img src="imagenes/Logo-PG-sinfondo.png" alt="Perfect Garden" height="100"></div>
                        <div class="slide-badge">SERVICIOS</div>
                        <h2 class="slide-title">Servicio de Piletas</h2>
                        <p class="slide-text">
                            Ofrecemos un completo servicio de mantenimiento y limpieza de piletas, asegurando que el agua se mantenga limpia, cristalina y segura durante toda la temporada. Nos encargamos del control químico, limpieza de fondos, paredes y filtrado.
                        </p>
                        <a href="Mantenimientodepileta.aspx" class="slide-button">Ver más</a>
                    </div>
                </div>
            </div>

            <!-- Navigation Arrows -->
              <button type="button" class="carousel-nav prev" onclick="prevSlide()">‹</button>
              <button type="button" class="carousel-nav next" onclick="nextSlide()">›</button>

           <!-- Dot Indicators -->
             <div class="carousel-dots">
             <button type="button" class="carousel-dot active" onclick="goToSlide(0)"></button>
             <button type="button" class="carousel-dot" onclick="goToSlide(1)"></button>
             <button type="button" class="carousel-dot" onclick="goToSlide(2)"></button>
           </div>


            <!-- Progress Bar -->
            <div class="carousel-progress">
                <div class="carousel-progress-bar" style="width: 33.33%;"></div>
            </div>
        </div>

        <!-- Info Cards -->
        <div class="info-cards">
            <div class="info-card info-card-1 active" onclick="goToSlide(0)">
                <div class="info-card-icon">👥</div>
                <h3>¿Quiénes somos?</h3>
                <p>Perfect Garden es una empresa familiar con más de 10 años de experiencia en el mantenimiento profesional...</p>
            </div>
            <div class="info-card info-card-2" onclick="goToSlide(1)">
                <div class="info-card-icon">🌳</div>
                <h3>Mantenimiento de Áreas Verdes</h3>
                <p>En Perfect Garden nos especializamos en el mantenimiento integral de espacios verdes, brindando soluciones...</p>
            </div>
            <div class="info-card info-card-3" onclick="goToSlide(2)">
                <div class="info-card-icon">🌊</div>
                <h3>Servicio de Piletas</h3>
                <p>Ofrecemos un completo servicio de mantenimiento y limpieza de piletas, asegurando que el agua se mantenga...</p>
            </div>
        </div>
    </div>

    <section>
  

                    <!-- Additional Info Cards -->
                    <div class="row mb-5">
                        <!-- Business Hours -->
                        <div class="col-md-6 mb-4">
                            <div class="info-card-contact">
                                <h3>
                                    <div class="info-icon">🕒</div>
                                    Horarios de Atención
                                </h3>
                                <div class="schedule-item">
                                    <span>Lunes - Viernes:</span>
                                    <span>8:00 - 18:00</span>
                                </div>
                                <div class="schedule-item">
                                    <span>Sábados:</span>
                                    <span>8:00 - 14:00</span>
                                </div>
                                <div class="schedule-item">
                                    <span>Domingos:</span>
                                    <span>Cerrado</span>
                                </div>
                            </div>
                        </div>

                        <!-- Service Area -->
                        <div class="col-md-6 mb-4">
                            <div class="info-card-contact">
                                <h3>
                                    <div class="info-icon">📍</div>
                                    Zona de Servicio
                                </h3>
                                <div class="service-area">
                                    <p style="margin-bottom: 0.5rem; color: #6c757d;">Brindamos servicios en:</p>
                                    <ul>
                                        <li>Buenos Aires y alrededores</li>
                                        <li>Establecimientos rurales</li>
                                        <li>Empresas y hogares</li>
                                        <li>Consultar otras zonas</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Call to Action -->
                    <div class="cta-section">
                        <div class="cta-card">
                            <h3>¿Listo para transformar tu espacio verde?</h3>
                            <p>Contactanos hoy mismo para recibir una cotización personalizada</p>
                            <div class="cta-buttons">
                                <a href="https://wa.me/5491128062636" target="_blank" class="btn-cta-primary">
                                    <span class="btn-icon">📱</span>
                                    Escribir por WhatsApp
                                </a>
                                <a href="mailto:perfectgarden98@gmail.com" class="btn-cta-secondary">
                                    <span class="btn-icon">📧</span>
                                    Enviar Email
                                </a>
                            </div>
                        </div>
                    </div>
                
    </section>

    <script>
        let currentSlide = 0;
        let isAutoPlay = true;
        let autoPlayInterval;
        const slides = document.querySelectorAll('.carousel-slide');
        const dots = document.querySelectorAll('.carousel-dot');
        const infoCards = document.querySelectorAll('.info-card');
        const progressBar = document.querySelector('.carousel-progress-bar');
        const totalSlides = slides.length;

        // Initialize carousel
        function initCarousel() {
            updateCarousel();
            startAutoPlay();

            // Pause autoplay on hover
            const carousel = document.getElementById('perfectGardenCarousel');
            carousel.addEventListener('mouseenter', stopAutoPlay);
            carousel.addEventListener('mouseleave', startAutoPlay);
        }

        // Update carousel display
        function updateCarousel() {
            // Update slides
            slides.forEach((slide, index) => {
                slide.classList.remove('active', 'prev');
                if (index === currentSlide) {
                    slide.classList.add('active');
                } else if (index < currentSlide) {
                    slide.classList.add('prev');
                }
            });

            // Update dots
            dots.forEach((dot, index) => {
                dot.classList.toggle('active', index === currentSlide);
            });

            // Update info cards
            infoCards.forEach((card, index) => {
                card.classList.toggle('active', index === currentSlide);
            });

            // Update progress bar
            const progress = ((currentSlide + 1) / totalSlides) * 100;
            progressBar.style.width = progress + '%';
        }

        // Navigation functions
        function nextSlide() {
            currentSlide = (currentSlide + 1) % totalSlides;
            updateCarousel();
        }

        function prevSlide() {
            currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
            updateCarousel();
        }

        function goToSlide(index) {
            currentSlide = index;
            updateCarousel();
        }

        // Auto-play functions
        function startAutoPlay() {
            if (isAutoPlay) {
                autoPlayInterval = setInterval(nextSlide, 5000);
            }
        }

        function stopAutoPlay() {
            clearInterval(autoPlayInterval);
        }

        // Initialize when page loads
        document.addEventListener('DOMContentLoaded', initCarousel);

        // Smooth scroll to contact section
        function scrollToContact() {
            const contactSection = document.getElementById('contacto');
            if (contactSection) {
                contactSection.scrollIntoView({ behavior: 'smooth' });
            }
        }

        // Add click handlers for info cards
        document.addEventListener('DOMContentLoaded', function () {
            infoCards.forEach((card, index) => {
                card.addEventListener('click', () => goToSlide(index));
            });
        });
    </script>
</asp:Content>