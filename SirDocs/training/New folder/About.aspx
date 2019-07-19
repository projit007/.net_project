<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
        <asp:Panel ID="panel1" runat="server" GroupingText="Personal Info" Height="300px" ScrollBars="Vertical" BorderColor="Red" BorderWidth="1">
            <p>Name: 
                <asp:TextBox ID="txtName" runat="server" TextMode="SingleLine" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ForeColor="Red" 
                    Text="*" SetFocusOnError="true" ValidationGroup="A"
                    ErrorMessage="Please enter name" ControlToValidate="txtName"></asp:RequiredFieldValidator>

            </p>
             <p>Email: 
                <asp:TextBox ID="txtEmail" runat="server" TextMode="SingleLine" ></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" 
                    Text="*" SetFocusOnError="true"   ValidationGroup="A"
                    ErrorMessage="Please enter valid email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </p>
            <p>Mobile: 
                <asp:TextBox ID="txtMobile" runat="server" TextMode="SingleLine" ></asp:TextBox><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" 
                    Text="*" SetFocusOnError="true"  ValidationGroup="A"
                    ErrorMessage="Please enter valid phone" ControlToValidate="txtMobile"
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>

            </p>
            <p>Salary: 
                <asp:TextBox ID="txtSalary" runat="server" TextMode="SingleLine" ></asp:TextBox><br />
                <asp:RangeValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" 
                    Text="*" SetFocusOnError="true" Type="Integer"  ValidationGroup="A" MinimumValue="5000" MaximumValue="10000"
                    ErrorMessage="Please enter valid salary" ControlToValidate="txtSalary"></asp:RangeValidator>

            </p>
            <p>Password: 
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" 
                    Text="please enter password" SetFocusOnError="true"  ValidationGroup="A"
                    ErrorMessage="Please enter password" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
            </p>
            <p>Confirm Password: 
                <asp:TextBox ID="txtCpwd" runat="server" TextMode="Password"></asp:TextBox></p>
             <asp:CompareValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" 
                    Text="password mismatch" SetFocusOnError="true"  ValidationGroup="A"
                    ErrorMessage="password mismatch" ControlToValidate="txtCpwd" ControlToCompare="txtPwd"></asp:CompareValidator>
            <p>
                Gender:  
                <asp:RadioButtonList ID="rdbGender" runat="server">
                    <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p>
                Country: 
             <asp:DropDownList ID="ddlCountry" runat="server" >
                 <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                 <asp:ListItem Text="India" Value="IND"></asp:ListItem>
                 <asp:ListItem Text="USA" Value="US"></asp:ListItem>
             </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" 
                    Text="please select country" SetFocusOnError="true" InitialValue="0"  ValidationGroup="A"
                    ErrorMessage="Please select country" ControlToValidate="ddlCountry"></asp:RequiredFieldValidator>
            </p>
            <p>Address:
                 <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" ></asp:TextBox>
            </p>
            <p>
                Profile picture:
                <asp:FileUpload ID="file1" runat="server" />
                <asp:Image ID="imgProfile" runat="server" />
            </p>
            <p>
                 <asp:Button ID="btbAdd" runat="server" Text="Add"  ValidationGroup="A"  />
                 <asp:LinkButton ID="lnkBtn" runat="server" Text="click me" OnClick="lnkBtn_Click" />
                  <asp:ImageButton ID="imgBtn" runat="server" ImageUrl="~/Image/icon.png"  />
                <asp:HyperLink ID="hyplnk" runat="server" 
                    Text="Go To Contact page" NavigateUrl="~/Contact.aspx"></asp:HyperLink>
            </p>
        </asp:Panel>
   <asp:ValidationSummary ID="vs1" runat="server" ShowMessageBox="true" ShowSummary="true"  ValidationGroup="A" />
</asp:Content>
