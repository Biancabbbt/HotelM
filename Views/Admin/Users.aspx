<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="HotelM.Views.Admin.Users" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
      <div class ="container-fluid" style="padding-bottom: 20px;">
           <div class="row"><div class="col-md-5"></div><div class="col-md-2"><label id="LogedUser" runat="server" class="text-success"></label></div></div>
        <div class ="row">
            <div class ="col-4"></div>
            <div class ="col-4"><h1 class =" text-center">Clienti </h1></div>
            <div class ="col-4"></div>
            </div>
          
        <div class ="row">
            <div class ="col-md-3 card-section">
                 <div class="card">
  <div class="card-body"> 
  <div class="mb-3">
    <label for="UNameTb" class="form-label">Adresa de Email client</label>
    <input type="text" class="form-control" id="UNameTb" runat="server" >
  </div>
                       <div class="mb-3">
    <label for="PhoneTb" class="form-label">Numar de telefon</label>
    <input type="text" class="form-control" id="PhoneTb"  runat="server">
                             </div>
                          <div class="mb-3">
    <label for="GenCb" class="form-label">Gen</label>
 <asp:DropDownList ID="GenCb" runat="server" class="form-control">
      <asp:ListItem>Feminin</asp:ListItem>
          <asp:ListItem>Masculin</asp:ListItem>
      </asp:DropDownList>
  </div>
                       <div class="mb-3">
    <label for="AdressTb" class="form-label">Adresa</label>
    <input type="text" class="form-control" id="AdressTb" runat="server">
                             </div>
                       <div class="mb-3">
    <label for="PasswordTb" class="form-label">Parola</label>
    <input type="text" class="form-control" id="PasswordTb" runat="server">
                             </div>
                       <div class="row">
                          <div class="container-button" style="margin-left: 100px">
                
       <asp:Button ID="SaveBtn" runat="server" Text="Salveaza" class="btn btn-dark" OnClick="SaveBtn_Click"/>
                              <asp:Button ID="EditBtn" runat="server" Text="Editeaza" class="btn btn-dark"  OnClick="EditBtn_Click" />       
                              <asp:Button ID="DeleteBtn" runat="server" Text="Sterge" class="btn btn-dark"  OnClick="DeleteBtn_Click" />
                      <label id="ErrMsg" runat="server" class="text-danger"></label>
                              </div>
                  </div>
                <br />    
              </div>
             </div>
          </div>
            <div class ="col-md-9  table-section">
                <asp:GridView ID="UserGV" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="UserGV_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"/>
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"/>
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center"/>
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"/>
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingCellStyle BackColor="#15524A" />
                </asp:GridView>
            </div>
        </div>
     </div>
</asp:Content>
