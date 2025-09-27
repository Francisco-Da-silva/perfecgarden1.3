<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="perfecgarden1._3.Contact" %>


   
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

   <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Sección Contacto -->
  <section class="contact-section" id="contacto">
    <div class="contact-header">
      <h2>Contacto</h2>
      <p>
        ¿Querés comunicarte con nosotros? Estas son nuestras vías de contacto:
      </p>
    </div>

    <div class="contact-grid">
      <!-- WhatsApp -->
      <div class="contact-card">
        <div class="contact-icon whatsapp-icon">📱</div>
        <h3>WhatsApp</h3>
        <p>Contactanos directamente</p>
        <a href="https://wa.me/5491128062636" target="_blank" class="contact-link whatsapp-link">
          +54 9 11 2806-2636
        </a>
      </div>

      <!-- Email -->
      <div class="contact-card">
        <div class="contact-icon email-icon">📧</div>
        <h3>Email</h3>
        <p>Escribinos un correo</p>
        <a href="mailto:perfectgarden98@gmail.com" class="contact-link email-link">
          perfectgarden98@gmail.com
        </a>
      </div>

      <!-- LinkedIn -->
      <div class="contact-card">
        <div class="contact-icon linkedin-icon">🔗</div>
        <h3>LinkedIn</h3>
        <p>Conectá con nosotros</p>
        <a href="https://www.linkedin.com/company/perfec-garden" target="_blank" class="contact-link linkedin-link">
          Ver perfil
        </a>
      </div>
    </div>
  </section>

  <style>
    /* Sección Contacto */
    .contact-section {
      padding: 4rem 1rem;
      background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
      font-family: Arial, sans-serif;
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
      max-width: 800px;
      margin: 0 auto;
    }

    .contact-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 2rem;
    }

    .contact-card {
      background: white;
      border-radius: 1rem;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      padding: 2rem;
      text-align: center;
      transition: all 0.3s ease;
    }

    .contact-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    }

    .contact-icon {
      width: 3.5rem;
      height: 3.5rem;
      border-radius: 0.75rem;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2rem;
      margin: 0 auto 1rem auto;
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
      background-color: #e6f7ff;
      color: #0077b5;
    }

    .contact-card h3 {
      font-size: 1.25rem;
      font-weight: 600;
      color: #212529;
      margin-bottom: 0.75rem;
    }

    .contact-card p {
      color: #6c757d;
      font-size: 1rem;
      margin-bottom: 1rem;
    }

    .contact-link {
      font-weight: 500;
      text-decoration: none;
    }

    .whatsapp-link { color: #25d366; }
    .whatsapp-link:hover { color: #128c7e; }

    .email-link { color: #3b82f6; }
    .email-link:hover { color: #2563eb; }

    .linkedin-link { color: #0077b5; }
    .linkedin-link:hover { color: #005885; }
  </style>

</asp:Content>

