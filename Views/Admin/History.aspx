<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="HotelM.Views.Admin.History" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="https://js.stripe.com/v3/"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid" style="padding-bottom: 20px;">
          <div class="row"><div class="col-md-5"></div><div class="col-md-2"><label id="LogedUser" runat="server" class="text-success"></label></div></div>
        <div class ="row">
            <div class ="col-4"></div>
                <h1 class=" text-center">Istoricul rezervarilor</h1>
           <div class ="col-4"></div>
            </div>
        <div class ="row">
            <div class ="col-md-3 card-section"  >
                <div class="form-group">
                    <label for="StartDate">Data:</label>
                    <asp:Calendar ID="DateIn" runat="server" OnSelectionChanged="CalendarDateSelectionChanged"></asp:Calendar>
                </div>
                <div class="form-group">
                    <label for="DateOut">Data:</label>
                    <asp:Calendar ID="DateOut" runat="server" OnSelectionChanged="CalendarDateSelectionChanged"></asp:Calendar>
                </div>
                     </div>
                 <div class="col-md-9  table-section">
                <asp:GridView  ID="HistoryGV" runat="server" CssClass="table" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
