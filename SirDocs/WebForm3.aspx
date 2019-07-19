<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApp.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Country: 
             <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true" 
                 OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                  <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                 <asp:ListItem Text="India" Value="IND"></asp:ListItem>
                 <asp:ListItem Text="USA" Value="US"></asp:ListItem>
             </asp:DropDownList>
            </p>
            <p>
                State: 
             <asp:DropDownList ID="ddlState" runat="server">
             </asp:DropDownList>
            </p>
            <p>
                City: 
             <asp:DropDownList ID="ddlCity" runat="server">
             </asp:DropDownList>
            </p>
        </div>
    </form>
</body>
</html>
