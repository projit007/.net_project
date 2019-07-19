<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ADMIN LOGIN</h1>
            <asp:Label ID="lblMessage" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="Red"></asp:Label>
            <asp:TextBox ID="txtuser_name" runat="server" placeholder ="abc@gmail.com" ></asp:TextBox><br /><br />
            <asp:TextBox ID="txtpwd" runat="server" placeholder ="********" ></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
