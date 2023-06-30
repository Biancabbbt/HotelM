<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="HotelM.Views.Admin.Booking" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-md-2">
                <label id="LogedUser" runat="server" class="text-success"></label>
            </div>
        </div>
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
                <h1 class=" text-center">Rezervari</h1>
            </div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-md-3 card-section">
                <div class="card">
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="UserTb" class="form-label">Client</label>
                            <input type="text" class="form-control" id="UserTb" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="RoomTb" class="form-label">Camera</label>
                            <input type="text" class="form-control" id="RoomTb" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="DateInTb" class="form-label">Check-in</label>
                            <input type="date" class="form-control" id="DateInTb" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="DateOutTb" class="form-label">Check-out</label>
                            <input type="date" class="form-control" id="DateOutTb" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="AmountTb" class="form-label">Suma totala</label>
                            <input type="text" class="form-control" id="AmountTb" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="NrRoomsTb" class="form-label">Numarul de Camere</label>
                            <input type="text" class="form-control" id="NrRoomsTb" runat="server">
                        </div>
                        <div class="row">
                            <div class="container-button" style="margin-left:180px">
                                <asp:Button ID="DeleteBtn"  runat="server" Text="Anuleaza" class="btn btn-dark" OnClick="DeleteBtn_Click" />
                                                                <label id="ErrMsg" runat="server" class="text-danger"></label>

                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9  table-section">
                <asp:GridView  ID="BookingGV" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BookingGV_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingCellStyle BackColor="#15524A" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

