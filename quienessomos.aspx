<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quienessomos.aspx.cs" Inherits="perfecgarden1._3.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <!-- Sección Quiénes Somos -->
  <section class="about-section" id="quienes-somos">
    <div class="about-header">
      <h2>Quiénes Somos</h2>
      <p>
        En <strong>Perfect Garden</strong> nos especializamos en brindar soluciones integrales para el
        mantenimiento de espacios verdes, combinando experiencia, responsabilidad y equipamiento de última
        generación.
      </p>
    </div>

    <div class="about-grid">
      <!-- Experiencia -->
      <div class="about-card">
        <div class="about-icon experiencia-icon">🌿</div>
        <h3>Experiencia</h3>
        <p>
          Contamos con años de trayectoria en el rubro, ofreciendo servicios confiables y de calidad en
          barrios privados, empresas y campos.
        </p>
      </div>

      <!-- Equipo -->
      <div class="about-card">
        <div class="about-icon equipo-icon">👷</div>
        <h3>Equipo Capacitado</h3>
        <p>
          Nuestro personal está entrenado en el uso de herramientas modernas y en técnicas de cuidado para
          garantizar resultados profesionales.
        </p>
      </div>

      <!-- Compromiso -->
      <div class="about-card">
        <div class="about-icon compromiso-icon">🤝</div>
        <h3>Compromiso</h3>
        <p>
          Priorizamos la puntualidad, la prolijidad y la satisfacción de nuestros clientes en cada servicio
          realizado.
        </p>
      </div>
    </div>
  </section>

  <style>
    /* Sección Quiénes Somos */
    .about-section {
      padding: 4rem 1rem;
      background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
      font-family: Arial, sans-serif;
    }

    .about-header {
      text-align: center;
      margin-bottom: 3rem;
    }

    .about-header h2 {
      font-size: 2.5rem;
      font-weight: bold;
      color: #212529;
      margin-bottom: 1rem;
    }

    .about-header p {
      font-size: 1.25rem;
      color: #6c757d;
      line-height: 1.6;
      max-width: 800px;
      margin: 0 auto;
    }

    .about-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 2rem;
    }

    .about-card {
      background: white;
      border-radius: 1rem;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      padding: 2rem;
      text-align: center;
      transition: all 0.3s ease;
    }

    .about-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    }

    .about-icon {
      width: 3.5rem;
      height: 3.5rem;
      border-radius: 0.75rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2rem;
      margin: 0 auto 1rem auto;
    }

    .experiencia-icon {
      background-color: #e6f7ff;
      color: #0d6efd;
    }

    .equipo-icon {
      background-color: #dcf8e6;
      color: #4CAF50;
    }

    .compromiso-icon {
      background-color: #fff4e6;
      color: #ff6600;
    }

    .about-card h3 {
      font-size: 1.25rem;
      font-weight: 600;
      color: #212529;
      margin-bottom: 0.75rem;
    }

    .about-card p {
      color: #6c757d;
      font-size: 1rem;
      line-height: 1.5;
    }
  </style>

</asp:Content>

