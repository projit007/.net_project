<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>REGISTRATION</h1>
            <table class:"register">
                <tr>
                    <td><asp:Label ID="lblname" Text="Employee Name" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtname" TextMode="SingleLine" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="ldladdress" Text="Address" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtaddress" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblcity" Text="City" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblphone" Text="Phone Number" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblemail" Text="Email ID" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lbljoining" Text="Date of Joining" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtjoining" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblgrade" Text="Grade" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtgrade" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lbldept" Text="Department" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtdept" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lbldesig" Text="Designation" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtdesig" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblgender" Text="Gender" runat="server"></asp:Label></td>
                    <td><asp:RadioButtonList ID="rdbGender" runat="server">
                        <asp:ListItem Text="Male"></asp:ListItem>
                        <asp:ListItem Text="Female"></asp:ListItem>
                    </asp:RadioButtonList></td>
                </tr>

                <tr>
                    <td><asp:Label ID="lblsalary" Text="Salary" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="txtsalary" runat="server"></asp:TextBox></td>
                </tr>
            </table>

            <p><asp:FileUpload ID="fuploader" runat="server" /><br /></p>

            <asp:Button ID="btnregister" runat="server" Text="Register" Font-Bold="true" OnClick="btnregister_Click"/>
        </div>
    </form>
</body>
</html>
