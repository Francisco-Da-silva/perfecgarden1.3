<%@ Page Title="piletas " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mantenimientodepileta.aspx.cs" Inherits="perfecgarden1._3.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mantenimiento de Piletas - Perfect Garden</title>
  <style>
    /* Sección Piletas */
    .pool-section {
      padding: 4rem 1rem;
      background: linear-gradient(135deg, #e6f7ff 0%, #f0f9ff 100%);
      font-family: Arial, sans-serif;
    }

    .pool-header {
      text-align: center;
      margin-bottom: 3rem;
    }

    .pool-header h2 {
      font-size: 2.5rem;
      font-weight: bold;
      color: #212529;
      margin-bottom: 1rem;
    }

    .pool-header p {
      font-size: 1.25rem;
      color: #6c757d;
      line-height: 1.6;
      max-width: 800px;
      margin: 0 auto;
    }

    .pool-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 2rem;
    }

    .pool-card {
      background: white;
      border-radius: 1rem;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      padding: 2rem;
      transition: all 0.3s ease;
      text-align: center;
    }

    .pool-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    }

    .pool-icon {
      width: 3.5rem;
      height: 3.5rem;
      border-radius: 0.75rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2rem;
      margin: 0 auto 1rem auto;
    }

    .cleaning-icon {
      background-color: #e0f7fa;
      color: #0288d1;
    }

    .filter-icon {
      background-color: #ede7f6;
      color: #673ab7;
    }

    .chlorine-icon {
      background-color: #fff8e1;
      color: #ff9800;
    }

    .inspection-icon {
      background-color: #e8f5e9;
      color: #388e3c;
    }

    .pool-card h3 {
      font-size: 1.25rem;
      font-weight: 600;
      color: #212529;
      margin-bottom: 0.75rem;
    }

    .pool-card p {
      color: #6c757d;
      font-size: 1rem;
      line-height: 1.5;
    }
  </style>
</head>
<body>
  
  <!-- Sección Mantenimiento de Piletas -->
  <section class="pool-section" id="piletas">
    <div class="pool-header">
      <h2>Mantenimiento de Piletas</h2>
      <p>
        En <strong>Perfect Garden</strong> ofrecemos un servicio integral de <strong>mantenimiento de piletas</strong>, asegurando agua limpia, segura y cristalina durante todo el año.
      </p>
    </div>

    <div class="pool-grid">
      <!-- Limpieza -->
      <div class="pool-card">
        <div class="pool-icon cleaning-icon">🧹</div>
        <h3>Limpieza Completa</h3>
        <p>
          Retiramos hojas, residuos y suciedad de la superficie y el fondo de la pileta, manteniéndola impecable en cada visita.
        </p>
      </div>

      <!-- Filtros -->
      <div class="pool-card">
        <div class="pool-icon filter-icon">⚙️</div>
        <h3>Mantenimiento de Filtros</h3>
        <p>
          Revisamos y limpiamos el sistema de filtrado para garantizar un correcto funcionamiento y circulación del agua.
        </p>
      </div>

      <!-- Cloro y Químicos -->
      <div class="pool-card">
        <div class="pool-icon chlorine-icon">💧</div>
        <h3>Cloro y Productos</h3>
        <p>
          Proveemos y aplicamos <strong>cloro y productos químicos</strong> de alta calidad para mantener el agua segura y balanceada.
        </p>
      </div>

      <!-- Inspección -->
      <div class="pool-card">
        <div class="pool-icon inspection-icon">🔍</div>
        <h3>Inspección General</h3>
        <p>
          Controlamos el estado general de la pileta y sus instalaciones, detectando a tiempo cualquier necesidad de reparación o ajuste.
        </p>
      </div>
    </div>
  </section>

</body>
</html>


</asp:Content>
