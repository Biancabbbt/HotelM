<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Twin.aspx.cs" Inherits="HotelM.Views.Users.Twin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
   <section class="room-details-section spad" style="	padding-top: 40px;" >
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="room-details-item">
  <img class="card-img-top" src="../../Assets/Images/twin.jpg" >
                                 <div class="rd-text">
                            <div class="rd-title">
                                <h3>Twin Room</h3>
                                <div class="rdt-right">
                                    <div class="rating">
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                    </div>
                                     </div>
                            </div>
                      <h2>139$<span>/Per noapte</span></h2>
                            <table>
                                <tbody>
                                    <tr>
                                       <td class="r-o">Dimensiune:</td>
                                        <td>30 ft</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Capacitate:</td>
                                        <td>Max persoane 2</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Pat:</td>
                                        <td>Twin Beds</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Servicii:</td>
                                        <td>Wifi, TV, Baie,...</td>
                                    </tr>
                                </tbody>
                            </table>
                             </div>
                    </div>
                    </div>
           <div class="col-lg-4">
                    <div class="room-booking">
          <div class="card mx-auto" >
            <div class="card-body" >
                 <h3 style=text-align:center;>Rezervare</h3>
                      <div class="container-fluid">
                                  <div class="Room">
    <label for="RoomTb" class="form-label">Camera</label>
    <input type="text" class="form-control" id="RoomTb" runat="server" >
  </div>
                         <div class="mb-3">
                            <label for="DateInTb" class="form-label">Check-In</label>
                            <input type="date" class="form-control" id="DateInTb" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="DateOutTb" class="form-label">Check-Out</label>
                            <input type="date" class="form-control" id="DateOutTb" runat="server">
                        </div>
                       <div class="amount">
    <label for="AmountTb" class="form-label">Total de plata</label>
    <input type="text" class="form-control" id="AmountTb" runat="server" >
  </div>
                              <div class="select-option">
    <label for="NrRoomsTb" class="form-label">Numarul camerelor</label>
    <select class="form-control" id="NrRoomsTb" runat="server">
        <option value="1">1 Camera</option>
        <option value="2">2 Camere</option>
        <option value="3">3 Camere</option>
        <option value="4">4 Camere</option>
    </select>
</div>
                                 <div class="button">
    <asp:Button ID="BookBtn" style="display: block;font-size: 14px;	text-transform: uppercase;	border: 1px solid #dfa974;border-radius: 2px;color: #dfa974;font-weight: 500;background: transparent;width: 100%;height: 46px;margin-top: 30px;" runat="server" Text="Verifica disponibiliatea" OnClick="BookBtn_Click" />
    <label id="ErrMsg" runat="server" class="text-danger"></label>
</div>
        </div>
              </div>
     </div>
   </div>
 </div> 
   </div>
               </div>
 </section>
</asp:Content>
