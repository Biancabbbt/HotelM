<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HotelM.Views.Users.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <header>
         <section class="aboutus-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-text">
                    <div class="section-title">
                        <span>Bun venit la Hotelul Golden Stay!</span>
                    </div>
                    <p class="f-para">GoldenStayHotel.com este un site de cazare online de top. Suntem pasionați de
                        călătorii. În fiecare zi, inspirăm și ajutăm milioane de călători din 90 de site-uri locale în 41
                        de limbi.</p>
                    <p class="s-para">Deci, când vine vorba de rezervarea unui hotel perfect, a unei închirieri de vacanță,
                        a unei stațiuni, a unui apartament, a unei pensiuni sau a unei case în copac, suntem aici să te
                        ajutăm.</p>
                </div>
            </div>
            <div class="col-lg-6">
                <img src="../../Assets/Images/hotel3.jpg" alt="">
            </div>
        </div>
    </div>
</section>
    </header>
   <section class="gallery-section spad" style="padding-top:30px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Despre noi</h2>
                </div>
                <p class="f-para" style="text-align:center; padding-bottom:20px">Hotelul Golden Stay oferă un cadru idilic pentru o vacanță de lux. De la o selecție inspirată de restaurante premiate până la un centru spa de lux, fiecare moment la Hotelul Golden Stay este meticulos conceput pentru a asigura o experiență sofisticată, îmbogățitoare și neobișnuită.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="gallery-item set-bg" data-setbg="../../Assets/Images/pool.jpg">
                    <div class="gi-text">
                        <h3>Piscină cu palmieri încorporați</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="gallery-item set-bg" data-setbg="../../Assets/Images/lagoon.jpeg">
                            <div class="gi-text" style="text-align:center">
                                <h3>Plaja Laguna de Twiggy</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="gallery-item set-bg" data-setbg="../../Assets/Images/fit.jpg" alt="Fitness">
                            <div class="gi-text">
                                <h3>Centru de fitness</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="gallery-item large-item set-bg" data-setbg="../../Assets/Images/spa.jpg">
                    <div class="gi-text">
                        <h3>Tratamente Spa</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
   <section class="services-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>Ce facem</span>
                    <h2>Descoperă serviciile noastre</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-036-parking"></i>
                    <h4>Planificare călătorii</h4>
                    <p>Experimentează planificarea călătoriilor fără stres și explorează destinații fascinante.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-033-dinner"></i>
                    <h4>Servicii de catering</h4>
                    <p>Bucură-te de servicii de catering delicioase și personalizate pentru evenimentele tale speciale.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-026-bed"></i>
                    <h4>Babysitting</h4>
                    <p>Asigură bunăstarea celor mici cu servicii de babysitting fiabile și atente.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-024-towel"></i>
                    <h4>Spălătorie</h4>
                    <p>Servicii eficiente și convenabile de spălătorie pentru a-ți menține hainele proaspete și curate.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-044-clock-1"></i>
                    <h4>Angajare șofer</h4>
                    <p>Relaxează-te și bucură-te de călătorie cu șoferi profesioniști și calificați la dispoziția ta.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-012-cocktail"></i>
                    <h4>Bar & Băuturi</h4>
                    <p>Răsfață-te și bucură-te de o gamă largă de băuturi răcoritoare la barul nostru.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="aboutus-restaurant-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="hero-slider owl-carousel">
                    <div class="hs-item set-bg" data-setbg="../../Assets/Images/about-4.jpg"></div>
                    <div class="hs-item set-bg" data-setbg="../../Assets/Images/rest2.jpg"></div>
                    <div class="hs-item set-bg" data-setbg="../../Assets/Images/rest3.jpg"></div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-text">
                    <div class="section-title">
                        <span>Bun venit la restaurantul nostru!</span>
                    </div>
                    <p class="f-para">Fondat în 1910, restaurantul nostru este o bijuterie culinară situată în inima Parisului. Oferim o experiență culinară deosebită, combinând arome rafinate, ambianță elegantă și servicii impecabile.</p>
                    
                    <ul class="ap-services" style="list-style: none;">
                        <li><i class="icon_check"></i> O selecție largă de preparate delicioase.</li>
                        <li><i class="icon_check"></i> Ingrediente proaspete zilnice provenite local.</li>
                        <li><i class="icon_check"></i> Bucătari pricepuți care creează creații culinare excepționale.</li>
                        <li><i class="icon_check"></i> Atmosferă caldă și primitoare pentru o experiență culinară memorabilă.</li>
                        <li><i class="icon_check"></i> Personal atent și prietenos dedicat servirii dumneavoastră.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

 <section class="blog-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>Noutăți despre hotel</span>
                    <h2>Evenimente</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="blog-item set-bg" data-setbg="../../Assets/Images/desert.jpg">
                    <div class="bi-text">
                        <span class="b-tag">Excursie</span>
                        <div class="b-time"><i class="icon_clock_alt"></i> 15 iunie 2023</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog-item set-bg" data-setbg="../../Assets/Images/sky.jpg">
                    <div class="bi-text">
                        <span class="b-tag">Sărituri cu parașuta</span>
                        <div class="b-time"><i class="icon_clock_alt"></i> 15 iulie 2023</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog-item set-bg" data-setbg="../../Assets/Images/city.jpg">
                    <div class="bi-text">
                        <span class="b-tag">Tur al orașului</span>
                        <div class="b-time"><i class="icon_clock_alt"></i> 21 iunie 2023</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
      <section class="contact-section spad">
      <div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="contact-text">
                <h2>Informații de contact</h2>
                <p>Dacă aveți întrebări, nu ezitați să le adresați.</p>
                <table>
                    <tbody>
                        <tr>
                            <td class="c-o">Adresă:</td>
                            <td>East Crescent Road The Palm Jumeirah East, Dubai 55558 Emiratele Arabe Unite</td>
                        </tr>
                        <tr>
                            <td class="c-o">Telefon:</td>
                            <td>00 971 4 275 6007</td>
                        </tr>
                        <tr>
                            <td class="c-o">Email:</td>
                            <td>goldenstayhotel@gmail.com</td>
                        </tr>
                        <tr>
                            <td class="c-o">Fax:</td>
                            <td>00 971 4 275 6054</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-lg-7 offset-lg-1">
            <div class="contact-form">
                <div class="row">
                    <div class="col-lg-6">
                        <input type="text" placeholder="Numele tău">
                    </div>
                    <div class="col-lg-6">
                        <input type="text" placeholder="Adresa ta de email">
                    </div>
                    <div class="col-lg-12">
                        <textarea placeholder="Mesajul tău"></textarea>
                        <button type="submit">Trimite acum</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
            <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3610.924842772209!2d55.12596101537436!3d25.113715437496566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f428c16a172db%3A0xa8f4f3723d9869!2sThe%20Palm%20Jumeirah%20East%2C%20Dubai%2C%20United%20Arab%20Emirates!5e0!3m2!1sen!2sus!4v1621845539264!5m2!1sen!2sus"
                    height="470" style="border:0;" allowfullscreen=""></iframe>
            </div>
    </section>
</asp:Content>
