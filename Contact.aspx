<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="perfecgarden1._3.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
<style>
     /* Contact Section Styles */
        .contact-section {
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
        }

      /*  revisar */
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
        </style>


     <!-- Contact Section -->
    <section id="contacto" class="contact-section">

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Header -->
                    <div class="contact-header">
                        <h2>Contacto</h2>
                        <p>¿Querés comunicarte con nosotros? Estas son nuestras vías de contacto:</p>
                    </div>

                    <!-- Contact Cards Grid -->
                    <div class="row mb-5">
                        <!-- WhatsApp Card -->
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="contact-card">
                                <div class="contact-icon whatsapp-icon">
                                    📱
                                </div>
                                <h3>WhatsApp</h3>
                                <p>Contactanos directamente</p>
                                <a href="https://wa.me/5491128062636" target="_blank" class="contact-link whatsapp-link">
                                    +54 9 11 2806-2636
                                    <span style="margin-left: 0.5rem;">📞</span>
                                </a>
                            </div>
                        </div>

                        <!-- Email Card -->
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="contact-card">
                                <div class="contact-icon email-icon">
                                    📧
                                </div>
                                <h3>Email</h3>
                                <p>Escribinos un correo</p>
                                <a href="mailto:perfectgarden98@gmail.com" class="contact-link email-link">
                                    perfectgarden@example.com
                                    <span style="margin-left: 0.5rem;">✉️</span>
                                </a>
                            </div>
                        </div>

                        <!-- LinkedIn Card -->
                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="contact-card">
                                <div class="contact-icon linkedin-icon">
                                    🔗
                                </div>
                                <h3>LinkedIn</h3>
                                <p>Conectá con nosotros</p>
                                <a href="https://www.linkedin.com/company/perfec-garden" target="_blank" class="contact-link linkedin-link">
                                    Ver perfil
                                    <span style="margin-left: 0.5rem;">🔗</span>
                                </a>
                            </div>
                        </div>
                    </div>
                     </div>
                </div>
            </div>
    </section>
  
</asp:Content>
