<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="testimonial.aspx.cs" Inherits="Fabricio_Fonseca_10591210.testimonials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main content">
      <div class="test-background">
        <h1>Customer Reviews</h1>
        <div class="review-box">
            <div id="carrousel">
                <div class="card">
                    <div class="profile">
                        <img src="img/augusto.jpeg" alt="Augusto Profile Picture">
                        <div>   
                            <h3>Augusto Sousa</h3>
                            <p>22/10/21</p>
                        </div>
                        </div>
    
                    <p>Was recommended by a freind to visit Fonsecar and it was the best decision I ever made! Amazing job!</p>
                </div>
                    <div class="card">
                        <div class="profile">
                            <img src="img/lucas.jpeg" alt="Augusto Profile Picture">
                            <div>   
                                <h3>Lucas Pereira</h3>
                                <p>25/11/21</p>
                            </div>
                        </div>
    
                        <p>I got a flat tire in the middle of nowhere and they come to help me in a second! Excellent Work!</p>
                    </div>
                    <div class="card">
                        <div class="profile">
                            <img src="img/maria.jpg" alt="Augusto Profile Picture">
                            <div>   
                                <h3>Maria Clara</h3>
                                <p>08/09/21</p>
                            </div>
                        </div>
    
                        <p>The attencion to detail is uncanny at Fonsecar, I alredy recommended their services to my entire family!</p>
                    </div>
                    <div class="card">
                        <div class="profile">
                            <img src="img/mario.jpeg" alt="Augusto Profile Picture">
                            <div>   
                                <h3>Mario Barboza</h3>
                                <p>23/03/22</p>
                            </div>
                        </div>
    
                        <p>I am their client since they first started. They are the best option on town I can guarantee that!</p>
                    </div>
                </div>
    
                <div class="control-bar">
                    <img src="img/up-arrow.png" alt="Up arrow" id="upArrow">
                    <img src="img/down-arrow.png" alt="Down arrow" id="downArrow">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
