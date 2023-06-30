<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="HotelM.Views.Admin.Employee" EnableEventValidation="false"%>
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
                <h1  class =" text-center">Angajati </h1>
            </div>
            <div class ="col-4"></div>
            </div>
        <div class ="row">
            <div class ="col-md-3 card-section">
                <div class="card">
  <div class="card-body">
  <div class="mb-3">
    <label for="ENameTb" class="form-label"> Nume si Prenume</label>
    <input type="text" class="form-control" id="ENameTb" runat="server" >
  </div>
	 <div class="mb-3">
    <label for="EEmailTb" class="form-label"> Adresa de Email</label>
    <input type="text" class="form-control" id="EEmailTb" runat="server" placeholder="Introduceti adresa de Email" required="required" >
  </div>
                       <div class="mb-3">
    <label for="EPhoneTb" class="form-label">Numar de telefon</label>
    <input type="text" class="form-control" id="EPhoneTb"  runat="server">
                             </div>
      <div class="mb-3">
    <label for="RoleCb" class="form-label">Functie</label>
      <asp:DropDownList ID="RoleCb" runat="server" class="form-control">
          <asp:ListItem>Administrator</asp:ListItem>
          <asp:ListItem>Manager</asp:ListItem>
           <asp:ListItem>Receptioner</asp:ListItem>
           <asp:ListItem>Staff</asp:ListItem>
           <asp:ListItem>Contabil</asp:ListItem>
               </asp:DropDownList>
                             </div>

                      <div class="row">
                          <div class="col d-grid gap-2 col-6 mx-auto">
       <asp:Button ID="SaveBtn" runat="server" Text="Salveaza" class="btn btn-dark" OnClick="SaveBtn_Click" />                     
       <asp:Button ID="DeleteBtn" runat="server" Text="Sterge" class="btn btn-dark" OnClick="DeleteBtn_Click" />
           <label id="ErrMsg" runat="server" class="text-danger"></label>

                      </div>
                    </div>
             </div>
           </div>
         </div>
                <div class ="col-md-9  table-section">
                <asp:GridView ID="EmployeeGV" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="EmployeeGV_SelectedIndexChanged">
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
