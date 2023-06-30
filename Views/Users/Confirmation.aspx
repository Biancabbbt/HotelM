<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="HotelM.Views.Users.Confirmation" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Confirmation</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
        <div class="container" style="padding-top:20px;padding-bottom:150px">
        <h1 style="text-align:center">Confirmarea rezervarii</h1>
        <div class="booking-details">
            <p>Room ID: <asp:Label ID="RoomIdLabel" runat="server"></asp:Label></p>
            <p>Numarul camerelor: <asp:Label ID="NrRoomsLabel" runat="server"></asp:Label></p>
            <p>Check-In: <asp:Label ID="DateInLabel" runat="server"></asp:Label></p>
            <p>Check-Out: <asp:Label ID="DateOutLabel" runat="server"></asp:Label></p>
            <p>Pret per camera: $<asp:Label ID="AmountLabel" runat="server"></asp:Label></p>
            
            <h2>Suma totala:</h2>
            <asp:Label ID="TotalAmountLabel" runat="server"></asp:Label>
        </div>
        <div class="confirmation-message">
            <asp:Label ID="ConfirmationLabel" runat="server"></asp:Label>
        </div>
        <div class="pay-now">
            <p class="pay-now-text">Doriti sa platiti acum?</p>
            <div class="paypal-button">
                <asp:Button ID="PayNowButton" runat="server" Text="Plateste acum" CssClass="btn-pay-now" OnClick="PayNowButton_Click" />
            </div>
        </div>
          </div>
   </asp:Content>
