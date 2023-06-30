<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelM.Views.WebForm1" EnableEventValidation="false" %>

<!DOCTYPE html>
<html>

<head runat="server">
    <title></title>
     <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="../../Assets/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="../../Assets/css/bootstrap.min.css" type="text/css"/>
    <link href="../Assets/css/login.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 login-form">
                    <h1>Golden Stay Hotel</h1>
                    <img src="../Assets/Images/image2.jpg" class="center"/>
                    <div>
                        <div class="mb-3">
                            <label for="EmailTb" class="form-label">Adresa de Email</label>
                            <input type="text" class="form-control" id="UserTb" runat="server" placeholder="Introduceti adresa de Email" required="required" />
                        </div>
                        <div class="mb-3">
                            <label for="PasswordTb" class="form-label">Parola</label>
                            <input type="password" class="form-control" id="PasswordTb" runat="server" placeholder="Introduceti parola" required="required" />
                        </div>
                        <div class="mb-3">
                            <div class="form-check form-check-inline">
                                <input type="radio" id="AdminCb" runat="server" name="Role" checked />
                                <label class="form-check-label">Admin</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input type="radio" id="UserCb" runat="server" name="Role" />
                                <label class="form-check-label">User</label>
                            </div>
                          <div class="d-grid">
                <asp:Button ID="LoginBtn" runat="server" Text="Login" CssClass="btn btn-success btn-login" OnClick="LoginBtn_Click" BorderColor="Black" />
                               <label id="ErrMsg" class="text-danger" runat="server"></label>
            </div>
            <div class="form-check remember-me">
                <input type="checkbox" checked="checked" class="form-check-input" name="remember" />
                <label class="form-check-label">Remember me</label>
            </div>
        </div>
        <br />
        <hr />
        <p class="text-center">Nu ai cont? <a href="Register.aspx">Creaza un cont</a></p>
    </div>
</div>
            </div>
        </div>
    </form>
</body>

</html>
