<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="HotelM.Views.Users.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>Camere</h2>
                        <div class="bt-option">
                            <a href="About.aspx">Acasa</a>
                            <span>Camere</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

  <!-- Secțiunea Camere începe -->
<section class="rooms-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="room-item">
                    <img src="../../Assets/Images/premium.jpg" alt="">
                    <div class="ri-text">
                        <h4>Premium King Room</h4>
                        <h3>359$<span>/Noapte</span></h3>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="r-o">Dimensiune:</td>
                                    <td>30 ft</td>
                                </tr>
                                <tr>
                                    <td class="r-o">Capacitate:</td>
                                    <td>Maxim 3 persoane</td>
                                </tr>
                                <tr>
                                    <td class="r-o">Pat:</td>
                                    <td>Paturi King</td>
                                </tr>
                                <tr>
                                    <td class="r-o">Servicii:</td>
                                    <td>Wi-Fi, Televizor, Baie,...</td>
                                </tr>
                            </tbody>
                        </table>
                        <a href="Premium.aspx" class="primary-btn">Mai multe detalii</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="room-item">
                    <img src="../../Assets/Images/deluxe2.jpeg" alt="">
                    <div class="ri-text">
                        <h4> Deluxe Room</h4>
                        <h3>299$<span>/Noapte</span></h3>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="r-o">Dimensiune:</td>
                                    <td>30 ft</td>
                                </tr>
                                <tr>
                                    <td class="r-o">Capacitate:</td>
                                    <td>Maxim 3 persoane</td>
                                </tr>
                                <tr>
                                    <td class="r-o">Pat:</td>
                                    <td>Paturi King</td>
                                </tr>
                                <tr>
                                    <td class="r-o">Servicii:</td>
                                    <td>Wi-Fi, Televizor, Baie,...</td>
                                </tr>
                            </tbody>
                        </table>
                        <a href="Deluxe.aspx" class="primary-btn">Mai multe detalii</a>
                    </div>
                </div>
            </div>
                <div class="col-lg-4 col-md-6">
    <div class="room-item">
        <img src="../../Assets/Images/double.jpg" alt="">
        <div class="ri-text">
            <h4>Double Room</h4>
            <h3>259$<span>/Noapte</span></h3>
            <table>
                <tbody>
                    <tr>
                        <td class="r-o">Dimensiune:</td>
                        <td>30 ft</td>
                    </tr>
                    <tr>
                        <td class="r-o">Capacitate:</td>
                        <td>Maxim 2 persoane</td>
                    </tr>
                    <tr>
                        <td class="r-o">Pat:</td>
                        <td>Paturi Double</td>
                    </tr>
                    <tr>
                        <td class="r-o">Servicii:</td>
                        <td>Wi-Fi, Televizor, Baie,...</td>
                    </tr>
                </tbody>
            </table>
            <a href="Double.aspx" class="primary-btn">Mai multe detalii</a>
        </div>
    </div>
</div>
<div class="col-lg-4 col-md-6">
    <div class="room-item">
        <img src="../../Assets/Images/twin.jpg" alt="">
        <div class="ri-text">
            <h4>Twin Room</h4>
            <h3>139$<span>/Noapte</span></h3>
            <table>
                <tbody>
                    <tr>
                        <td class="r-o">Dimensiune:</td>
                        <td>30 ft</td>
                    </tr>
                    <tr>
                        <td class="r-o">Capacitate:</td>
                        <td>Maxim 2 persoane</td>
                    </tr>
                    <tr>
                        <td class="r-o">Pat:</td>
                        <td>Paturi Twin</td>
                    </tr>
                    <tr>
                        <td class="r-o">Servicii:</td>
                        <td>Wi-Fi, Televizor, Baie,...</td>
                    </tr>
                </tbody>
            </table>
            <a href="Twin.aspx" class="primary-btn">Mai multe detalii</a>
        </div>
    </div>
</div>
               <div class="col-lg-4 col-md-6">
    <div class="room-item">
        <img src="../../Assets/Images/view.jpg" alt="">
        <div class="ri-text">
            <h4>Room With View</h4>
            <h3>189$<span>/Noapte</span></h3>
            <table>
                <tbody>
                    <tr>
                        <td class="r-o">Dimensiune:</td>
                        <td>30 ft</td>
                    </tr>
                    <tr>
                        <td class="r-o">Capacitate:</td>
                        <td>Maxim 2 persoane</td>
                    </tr>
                    <tr>
                        <td class="r-o">Pat:</td>
                        <td>Paturi King</td>
                    </tr>
                    <tr>
                        <td class="r-o">Servicii:</td>
                        <td>Wi-Fi, Televizor, Baie,...</td>
                    </tr>
                </tbody>
            </table>
            <a href="View.aspx" class="primary-btn">Mai multe detalii</a>
        </div>
    </div>
</div>
<div class="col-lg-4 col-md-6">
    <div class="room-item">
        <img src="../../Assets/Images/onep.jpg" alt="">
        <div class="ri-text">
            <h4>Small View</h4>
            <h3>119$<span>/Noapte</span></h3>
            <table>
                <tbody>
                    <tr>
                        <td class="r-o">Dimensiune:</td>
                        <td>30 ft</td>
                    </tr>
                    <tr>
                        <td class="r-o">Capacitate:</td>
                        <td>Maxim 1 persoană</td>
                    </tr>
                    <tr>
                        <td class="r-o">Pat:</td>
                        <td>Pat Single</td>
                    </tr>
                    <tr>
                        <td class="r-o">Servicii:</td>
                        <td>Wi-Fi, Televizor, Baie,...</td>
                    </tr>
                </tbody>
            </table>
            <a href="Small.aspx" class="primary-btn">Mai multe detalii</a>
        </div>
    </div>
</div>
</div>
</div>
</section>
</asp:Content>
