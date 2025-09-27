<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="perfecgarden1._3.Contact" %>


   

    

  
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">}
     <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Sección Clientes -->
<section class="clients-section" id="clientes">
  <div class="clients-header">
    <h2>Nuestros Clientes</h2>
    <p>
      En <strong>Perfect Garden</strong> ofrecemos servicios de calidad a distintos tipos de clientes,
      adaptándonos a sus necesidades y garantizando espacios verdes prolijos y bien cuidados.
    </p>
  </div>

  <div class="clients-grid">
    <!-- Empresas -->
    <div class="client-card">
      <div class="client-icon empresas-icon">🏢</div>
      <h3>Empresas</h3>
      <p>
        Brindamos mantenimiento integral de áreas verdes en <strong>parques industriales y oficinas</strong>,
        asegurando espacios presentables para colaboradores y clientes.
      </p>
    </div>

    <!-- Campos -->
    <div class="client-card">
      <div class="client-icon campos-icon">🌾</div>
      <h3>Campos</h3>
      <p>
        Realizamos <strong>trabajos a gran escala en campos</strong>, con maquinaria especializada para el
        corte de grandes superficies y mantenimiento de cercos y accesos.
      </p>
    </div>

    <!-- Countries -->
    <div class="client-card">
      <div class="client-icon countries-icon">🏡</div>
      <h3>Countries</h3>
      <p>
        Ofrecemos <strong>mantenimiento general de countries y barrios privados</strong>,
        manteniendo áreas comunes, espacios verdes y plantas en condiciones óptimas todo el año.
      </p>
    </div>
  </div>
</section>

<style>
  /* Sección Clientes */
  .clients-section {
    padding: 4rem 1rem;
    background: linear-gradient(135deg, #f8f9fa 0%, #ffffff 100%);
    font-family: Arial, sans-serif;
  }

  .clients-header {
    text-align: center;
    margin-bottom: 3rem;
  }

  .clients-header h2 {
    font-size: 2.5rem;
    font-weight: bold;
    color: #212529;
    margin-bottom: 1rem;
  }

  .clients-header p {
    font-size: 1.25rem;
    color: #6c757d;
    line-height: 1.6;
    max-width: 800px;
    margin: 0 auto;
  }

  .clients-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 2rem;
  }

  .client-card {
    background: white;
    border-radius: 1rem;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    padding: 2rem;
    transition: all 0.3s ease;
    text-align: center;
  }

  .client-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
  }

  .client-icon {
    width: 3.5rem;
    height: 3.5rem;
    border-radius: 0.75rem;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 2rem;
    margin: 0 auto 1rem auto;
  }

  .empresas-icon {
    background-color: #e6f7ff;
    color: #0d6efd;
  }

  .campos-icon {
    background-color: #dcf8e6;
    color: #4CAF50;
  }

  .countries-icon {
    background-color: #fff4e6;
    color: #ff6600;
  }

  .client-card h3 {
    font-size: 1.25rem;
    font-weight: 600;
    color: #212529;
    margin-bottom: 0.75rem;
  }

  .client-card p {
    color: #6c757d;
    font-size: 1rem;
    line-height: 1.5;
  }
</style>

</asp:Content>

