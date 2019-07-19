<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeGrid.aspx.cs" Inherits="WebApplication1.EmployeeGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />

                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>Employee ID</HeaderTemplate>
                        <ItemTemplate>
                            <%--<%#Eval("EMP_ID") %>--%>
                            <asp:Label ID="txtId" runat="server" Text='<%#Eval("EMP_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Employee Name</HeaderTemplate>
                        <ItemTemplate><%#Eval("EMP_NAME") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Address</HeaderTemplate>
                        <ItemTemplate><%#Eval("EMP_ADDRESS") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAddress" runat="server" Text='<%#Bind("EMP_ADDRESS") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>City</HeaderTemplate>
                        <ItemTemplate><%#Eval("CITY") %></ItemTemplate>
                        <EditItemTemplate>
                           <asp:TextBox ID="txtCity" runat="server" Text='<%#Bind("CITY") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField>
                        <HeaderTemplate>Phone</HeaderTemplate>
                        <ItemTemplate><%#Eval("PHONE") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPhone" runat="server" Text='<%#Bind("PHONE") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Email</HeaderTemplate>
                        <ItemTemplate><%#Eval("EMAIL") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Date Of Joining</HeaderTemplate>
                        <ItemTemplate><%#Eval("DATE_OF_JOINING") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Grade</HeaderTemplate>
                        <ItemTemplate><%#Eval("GRADE") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtGrade" runat="server" Text='<%#Bind("GRADE") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Department</HeaderTemplate>
                        <ItemTemplate><%#Eval("DEPARTMENT") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDepartment" runat="server" Text='<%#Bind("DEPARTMENT") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Designation</HeaderTemplate>
                        <ItemTemplate><%#Eval("DESIGNATION") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDesignation" runat="server" Text='<%#Bind("DESIGNATION") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Gender</HeaderTemplate>
                        <ItemTemplate><%#Eval("GENDER") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Salary</HeaderTemplate>
                        <ItemTemplate><%#Eval("SALARY") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSalary" runat="server" Text='<%#Bind("SALARY") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Profile Picture</HeaderTemplate>
                        <ItemTemplate><img src ="~/Upload/"+<%#Eval("PROFILE_PIC") %> /></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Status</HeaderTemplate>
                        <ItemTemplate><%#Eval("STATUS") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlStatus" runat="server" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                                <asp:ListItem Text="Active" Value="ACT" />
                                <asp:ListItem Text="Inactive" Value="IACT" />
                                <asp:ListItem Text="Retiree" Value="RET" />
                                <asp:ListItem Text="Resigned" Value="RES" />
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Action</HeaderTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="btnUpdate" runat="server"  CommandName="Update" Text="Update" />
                            <asp:LinkButton ID="btnCancel" runat="server"  CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
