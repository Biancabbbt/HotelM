    <%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="HotelM.Views.Admin.Rooms" EnableEventValidation="false" %>
  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
              <script src="https://js.stripe.com/v3/"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
        <div class ="container-fluid" style="padding-bottom: 20px;">
              <div class="row"><div class="col-md-2"><label id="LogedUser" runat="server" class="text-success"></label></div></div>
            <div class ="row">
                <div class ="col-4">
                </div>
                <div class ="col-4">
                    <h1 class="text-center">Camere</h1>
                </div>
                <div class ="col-4"></div>
                </div>
            <div class ="row">
                <div class ="col-md-3 card-section">
                    <div class="card">
      <div class="card-body">
                             <div class="mb-3">
                                <label for="RNumberTb" class="form-label">Numarul camerei</label>
                                <input type="text" class="form-control" id="RNumberTb" runat="server" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="RCategoryCb" class="form-label">Categorie</label>
                                <asp:DropDownList ID="RCategoryCb" runat="server" class="form-control"></asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label for="CostTb" class="form-label">Pret</label>
                                <input type="text" class="form-control" id="CostTb" runat="server" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="RemarksTb" class="form-label">Tipul camerei</label>
                                <input type="text" class="form-control" id="RemarksTb" runat="server" required="required">
                            </div>
                            <div class="row">
                                <div class="container-button" style="margin-left: 100px">
                                    <asp:Button ID="SaveBtn" runat="server" Text="Salveaza" class="btn btn-dark" OnClick="SaveBtn_Click" />
                                    <asp:Button ID="EditBtn" runat="server" Text="Editeaza" class="btn btn-dark" OnClick="EditBtn_Click" />
                                    <asp:Button ID="DeleteBtn" runat="server" Text="Sterge" class="btn btn-dark" OnClick="DeleteBtn_Click" />
                                    <label id="ErrMsg" runat="server" class="text-danger"></label>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 table-section">
                    <asp:GridView ID="RoomsGV" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="RoomsGV_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <itemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="Server" CausesValidation="False" CommandName="Select" Text="Select" ></asp:LinkButton>
                                </itemTemplate>
                            </asp:TemplateField>
                        </Columns>
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
