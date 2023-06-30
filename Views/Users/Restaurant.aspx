<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Restaurant.aspx.cs" Inherits="HotelM.Views.Users.Restaurant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
  <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     
     
    <section class="gallery-section spad">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-start">
                                <div class="gallery-item set-bg" data-setbg="../../Assets/Images/about-1.jpg">
                            </div>
                                </div>
                            <div class="col-6 text-start">
                                <div class="gallery-item set-bg" data-setbg="../../Assets/Images/about-2.jpg" style="margin-top: 25%;">
                            </div>
                                </div>
                            <div class="col-6 text-end">
                                <div class="gallery-item set-bg" data-setbg="../../Assets/Images/about-3.jpg">
                            </div>
                                </div>
                            <div class="col-6 text-end">
                                <div class="gallery-item set-bg" data-setbg="../../Assets/Images/about-4.jpg">
                            </div>
                                </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="section-title">
                        <span>Despre noi</span>
                        <h2>Bun venit la restaurantul nostru!</h2>
                    </div>
                        <p class="f-para">La restaurantul nostru, suntem pasionați de crearea unor experiențe culinare excepționale. Echipa noastră dedicată de bucătari și personal depune eforturi susținute pentru a vă oferi cele mai fine preparate realizate cu dragoste și pricepere.</p>
                        <p class="f-para">Cu un angajament față de calitate și inovație, ne străduim să depășim așteptările dumneavoastră și să vă oferim o experiență memorabilă în materie de dining. De la momentul în care pășiți în restaurantul nostru, veți fi întâmpinați cu căldură și ospitalitate, asigurându-vă o atmosferă confortabilă și plăcută.</p>
                        <div class="row g-4 mb-4">
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center border-start border-5 border-primary px-3">
                                    <h1 class="flex-shrink-0 display-5 text-primary mb-0" data-toggle="counter-up">15</h1>
                                    <div class="ps-4">
                                        <p class="mb-0">Ani de</p>
                                        <h6 class="text-uppercase mb-0">Experienta</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center border-start border-5 border-primary px-3">
                                    <h1 class="flex-shrink-0 display-5 text-primary mb-0" data-toggle="counter-up">50</h1>
                                    <div class="ps-4">
                                        <p class="mb-0">Cei mai buni</p>
                                        <h6 class="text-uppercase mb-0">Master Chefi</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               </section>
     
 
       <section class="services-section spad">
    <div class="container">
        <div class="row g-4">
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-042-menu"></i>
                    <h4>Meniu Exquisite</h4>
                    <p>Explorați meniul nostru exquisit creat de bucătarii noștri talentați, oferind o gamă largă de delicii culinare pentru a satisface papilele gustative.</p>
                </div>
            </div>
        <div class="col-lg-4 col-sm-6">
            <div class="service-item">
                <i class="flaticon-033-dinner"></i>
                <h4>Bucătărie Gourmet</h4>
                <p>Bucurați-vă de bucătăria noastră gourmet, pregătită meticulos cu cele mai bune ingrediente și arome pentru a oferi o experiență memorabilă de dining.</p>
            </div>
        </div>

        <div class="col-lg-3 col-sm-6">
            <div class="service-item">
                <i class="flaticon-043-room-service"></i>
                <h4>Serviciu Impecabil</h4>
                <p>Experimentați serviciul nostru impecabil, în care personalul nostru atent se asigură de confortul și satisfacția dumneavoastră pe parcursul călătoriei culinare.</p>
            </div>
        </div>
    </div>
</div>
            </section>

   <section>
    <div class="container">
        <div class="section-title">
            <span>Meniu Alimente</span>
            <h2>Cele mai populare produse</h2>
            <i class="flaticon-033-dinner fa-2x text-primary"></i>
        </div>
        <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
            <ul class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
                <li class="nav-item">
                    <div class="ps-3">
                        <small class="text-body">Populare</small>
                        <h6 class="mt-n1 mb-0">Mic dejun</h6>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="d-flex align-items-center text-start mx-3 pb-3" data-bs-toggle="pill">
                        <div class="ps-3">
                            <small class="text-body">Special</small>
                            <h6 class="mt-n1 mb-0">Prânz</h6>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="d-flex align-items-center text-start mx-3 me-0 pb-3" data-bs-toggle="pill">
                        <div class="ps-3">
                            <small class="text-body">Minunat</small>
                            <h6 class="mt-n1 mb-0">Cină</h6>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
                 <div class="menu">
    <!-- Tip aliment: Aperitive -->
    <div class="menu-item">
        <img src="../../Assets/Images/starters.jpg" alt="Aperitive">
        <h2>Aperitive</h2>
        <p>Aperitive delicioase pentru a începe masa.</p>
        <p>Preț: $8.99</p>
    </div>
   <!-- Tip aliment: Salate -->
<div class="menu-item">
    <img src="../../Assets/Images/salad.jpg" alt="Salate">
    <h2>Salate</h2>
    <p>Opțiuni de salate proaspete și sănătoase.</p>
    <p>Preț: $9.99</p>
</div>

<!-- Tip aliment: Supe -->
<div class="menu-item">
    <img src="../../Assets/Images/soup.jpg" alt="Supe">
    <h2>Supe</h2>
    <p>Supe calde și reconfortante.</p>
    <p>Preț: $7.99</p>
</div>

<!-- Tip aliment: Burgeri -->
<div class="menu-item">
    <img src="../../Assets/Images/burger.jpg" alt="Burgeri">
    <h2>Burgeri</h2>
    <p>Opțiuni clasice și gourmet de burgeri.</p>
    <p>Preț: $12.99</p>
</div>

<!-- Tip aliment: Pizza -->
<div class="menu-item">
    <img src="../../Assets/Images/pizza.jpg" alt="Pizza">
    <h2>Pizza</h2>
    <p>Creații de pizza cu aluat subțire și cu blat gros.</p>
    <p>Preț: $14.99</p>
</div>

<!-- Tip aliment: Paste -->
<div class="menu-item">
    <img src="../../Assets/Images/pasta.jpg" alt="Paste">
    <h2>Paste</h2>
    <p>Mâncăruri autentice de paste italiene.</p>
    <p>Preț: $11.99</p>
</div>

<!-- Tip aliment: Fructe de mare -->
<div class="menu-item">
    <img src="../../Assets/Images/seafood.jpg" alt="Fructe de mare">
    <h2>Fructe de mare</h2>
    <p>Opțiuni de fructe de mare proaspete și pline de gust.</p>
    <p>Preț: $16.99</p>
</div>

<!-- Tip aliment: Deserturi -->
<div class="menu-item">
    <img src="../../Assets/Images/dess.jpg" alt="Deserturi">
    <h2>Deserturi</h2>
    <p>Bucurii dulci indulgente pentru a satisface pofta de dulce.</p>
    <p>Preț: $6.99</p>
</div>
    </div>
  </div>
    </section>
<!-- Sfârșit Meniu -->

      <!-- Început Rezervare -->
<section class="hero-section">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 offset-xl-3 offset-lg-3">
                <div class="restaurant-form">
                    <div class="section-title">
                        <span>Rezervare</span>
                        <h2>Rezervă o masă online</h2>
                    </div>
                    <form>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="name" placeholder="Numele tău">
                                    <label for="name">Nume</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="email" class="form-control" id="email" placeholder="Adresa ta de email">
                                    <label for="email">Adresa ta de email</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="date" placeholder="Data">
                                    <label for="date">Data</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="time" placeholder="Ora">
                                    <label for="time">Ora</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <select class="form-select" id="select1">
                                        <option value="1">1 Persoană</option>
                                        <option value="2">2 Persoane</option>
                                        <option value="3">3 Persoane</option>
                                    </select>
                                    <label for="select1">Număr de persoane</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="Cerere specială" id="message" style="height: 100px"></textarea>
                                    <label for="message">Cerere specială</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary" type="submit">Rezervă acum</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="hero-slider owl-carousel">
        <div class="hs-item set-bg" data-setbg="../../Assets/Images/restaurant.jpg"></div>
        <div class="hs-item set-bg" data-setbg="../../Assets/Images/rest2.jpg"></div>
        <div class="hs-item set-bg" data-setbg="../../Assets/Images/rest3.jpg"></div>
    </div>
</section>
<!-- Sfârșit Rezervare -->

   <!-- Echipa Start -->
<section class="team-section">
    <div class="container">
        <div class="section-title">
            <span>Membrii echipei</span>
            <h2>Master Chefii noștri</h2>
        </div>
        <div class="row g-4">
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item text-center rounded overflow-hidden">
                    <div class="rounded-circle overflow-hidden m-4">
                        <img class="img-fluid" src="../../Assets/Images/team-1.jpg" alt="">
                    </div>
                    <h5 class="mb-0">Chef Alex</h5>
                    <div class="fa-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-tripadvisor"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item text-center rounded overflow-hidden">
                    <div class="rounded-circle overflow-hidden m-4">
                        <img class="img-fluid" src="../../Assets/Images/team-2.jpg" alt="">
                    </div>
                    <h5 class="mb-0">Chef Andrew</h5>
                    <div class="fa-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-tripadvisor"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item text-center rounded overflow-hidden">
                    <div class="rounded-circle overflow-hidden m-4">
                        <img class="img-fluid" src="../../Assets/Images/team-3.jpg" alt="">
                    </div>
                    <h5 class="mb-0">Chef Chris</h5>
                    <div class="fa-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-tripadvisor"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="team-item text-center rounded overflow-hidden">
                    <div class="rounded-circle overflow-hidden m-4">
                        <img class="img-fluid" src="../../Assets/Images/team-4.jpg" alt="">
                    </div>
                    <h5 class="mb-0">Chef Dan</h5>
                    <div class="fa-social">
                        <a href="#"><i class="fa fa-facebook

"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-tripadvisor"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Echipa Sfârșit -->
      <script>
    flatpickr("#date", {
      enableTime: false,
      dateFormat: "Y-m-d",
    });

    flatpickr("#time", {
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
    });
      </script>  <script>
    flatpickr("#date", {
      enableTime: false,
      dateFormat: "Y-m-d",
    });

    flatpickr("#time", {
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
    });
      </script>
</asp:Content>
