<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HotelM.Views.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inregistrare</title>
    <link rel="stylesheet" href="../Assets/Libraries/Bootstrap/css/bootstrap.min.css" />
    <style>
             body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-image:  url(../Assets/Images/city.jpg);
            background-size: cover;
            background-position: center;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.6); 
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            animation-name: fade-in;
            animation-duration: 1s;
            animation-timing-function: ease-in-out;
            animation-fill-mode: both;
        }

        @keyframes fade-in {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }


        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #666;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 20px;
        }

      .btn {
    display: block;
    margin: 0 auto;
    padding: 10px 20px;
    background-color: #7fd6ff;
    color: #fff;
    text-decoration: none;
    border-radius: 4px;
    transition: background-color 0.3s ease;
}

.btn:hover {
    background-color: #69b4e2; 
}


        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Inregistreaza-te</h2>
            <div>
                <label for="UNameTb">Adresa Email:</label>
                <input type="text" id="UNameTb" runat="server" />
            </div>
            <div>
                <label for="PhoneTb">Numar telefon:</label>
                <input type="text" id="PhoneTb" runat="server" />
            </div>
            <div>
                <label for="GenCb">Gen:</label>
                <select id="GenCb" runat="server">
                    <option value="Male">Masculin</option>
                    <option value="Female">Feminin</option>
                </select>
            </div>
            <div>
                <label for="AdressTb">Adresa:</label>
                <input type="text" id="AdressTb" runat="server" />
            </div>
            <div>
                <label for="PasswordTb">Parola:</label>
                <input type="password" id="PasswordTb" runat="server" />
            </div>
            <div>
                <asp:Button ID="SaveBtn" runat="server" Text="Inregistrare" OnClick="SaveBtn_Click" CssClass="btn" />
            </div>
            <div>
                <asp:Label ID="ErrMsg" runat="server" CssClass="error-message"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
