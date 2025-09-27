<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mantenimientoareasverdes.aspx.cs" Inherits="perfecgarden1._3.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Servicios - Perfect Garden</title>
  <style>
    /* Sección Servicios */
    .services-section {
      padding: 4rem 1rem;
      background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
      font-family: Arial, sans-serif;
    }

    .services-header {
      text-align: center;
      margin-bottom: 3rem;
    }

    .services-header h2 {
      font-size: 2.5rem;
      font-weight: bold;
      color: #212529;
      margin-bottom: 1rem;
    }

    .services-header p {
      font-size: 1.25rem;
      color: #6c757d;
      line-height: 1.6;
      max-width: 800px;
      margin: 0 auto;
    }

    .services-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 2rem;
    }

    .service-card {
      background: white;
      border-radius: 1rem;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      padding: 2rem;
      transition: all 0.3s ease;
      text-align: center;
    }

    .service-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    }

    .service-icon {
      width: 3.5rem;
      height: 3.5rem;
      border-radius: 0.75rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2rem;
      margin: 0 auto 1rem auto;
    }

    .tractor-icon {
      background-color: #e6f7ff;
      color: #0d6efd;
    }

    .hedge-icon {
      background-color: #dcf8e6;
      color: #4CAF50;
    }

    .plants-icon {
      background-color: #fff4e6;
      color: #ff6600;
    }

    .blower-icon {
      background-color: #f3e8ff;
      color: #9333ea;
    }

    .service-card h3 {
      font-size: 1.25rem;
      font-weight: 600;
      color: #212529;
      margin-bottom: 0.75rem;
    }

    .service-card p {
      color: #6c757d;
      font-size: 1rem;
      line-height: 1.5;
    }
  </style>
</head>
<body>
  
  <!-- Sección Servicios -->
  <section class="services-section" id="servicios">
    <div class="services-header">
      <h2>Servicios</h2>
      <p>
        En <strong>Perfect Garden</strong> contamos con equipamiento de última generación y personal especializado para el mantenimiento integral de áreas verdes.
      </p>
    </div>

    <div class="services-grid">
      <!-- Corte con Tractor Giro Cero -->
      <div class="service-card">
        <div class="service-icon tractor-icon">🚜</div>
        <h3>Corte con Tractor Giro Cero</h3>
        <p>
          Realizamos corte de grandes superficies con un <strong>tractor giro cero con plataforma a medida</strong>, 
          garantizando eficiencia y prolijidad. Además, contamos con un <strong>tractor de repuesto</strong> para asegurar continuidad en el servicio.
        </p>
      </div>

      <!-- Cercos Vivos -->
      <div class="service-card">
        <div class="service-icon hedge-icon">✂️</div>
        <h3>Mantenimiento de Cercos Vivos</h3>
        <p>
          Nos ocupamos del recorte y cuidado de tus cercos vivos, manteniéndolos siempre verdes, saludables y con una estética impecable.
        </p>
      </div>

      <!-- Sector de Plantas -->
      <div class="service-card">
        <div class="service-icon plants-icon">🌱</div>
        <h3>Cuidado de Plantas</h3>
        <p>
          Realizamos mantenimiento del sector de plantas, asegurando un entorno natural, ordenado y atractivo en tus espacios verdes.
        </p>
      </div>

      <!-- Sopladora -->
      <div class="service-card">
        <div class="service-icon blower-icon">🍂</div>
        <h3>Soplado de Hojas y Pasto</h3>
        <p>
          Disponemos de <strong>sopladoras de alto rendimiento</strong> para barrer hojas y eliminar restos de pasto de superficies como pisos y senderos.
        </p>
      </div>
    </div>
  </section>

</body>
</html>


</asp:Content>
