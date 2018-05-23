<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.EmployeeList" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"><a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Home</a> <a href="#" class="current">Tables</a> </div>
            <h1>Tables</h1>
        </div>
        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title">
                            <span class="icon"><i class="icon-th"></i></span>
                            <h5>Data table</h5>
                        </div>
                        <div class="widget-content nopadding">

                            <%--  <asp:GridView ID="employeeListGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="None" PageSize="2">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                    <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                    <asp:BoundField DataField="DesignationId" HeaderText="DesignationId" SortExpression="DesignationId" />
                                </Columns>
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CompnayDbConnectionString %>" SelectCommand="SELECT [Id], [FirstName], [LastName], [EmployeeId], [Email], [Mobile], [DesignationId] FROM [Employee]"></asp:SqlDataSource>--%>
                               <asp:Repeater id="employeeListTable" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered data-table">
                                    <tr>
                                        <td>Full Name</td>
                                        <td>Employee Code</td>
                                        <td></td>
                                    </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("FullName")%></td>
                                        <td><%#Eval("EmployeeId")%></td>
                                        <td><asp:LinkButton ID ="lnkBtnOk" runat ="server" PostBackUrl='<%# string.Format("EmployeeEntry.aspx?Id={0}", Eval("ID"))%>' Text="Edit"></asp:LinkButton></td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater> 
                            <%--  <table>
                                <tr>
                                    <td style="width: 100%">
                                        <asp:GridView ID="showGridView" runat="server" CssClass="table table-bordered data-table" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                            <Columns>
                                                <asp:TemplateField HeaderText="SL">
                                                    <ItemTemplate><%#Container.DataItemIndex + 1 %></ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Test Name">
                                                    <ItemTemplate><%#Eval("FullName") %></ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Fee">
                                                    <ItemTemplate><%#Eval("FirstName") %></ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Type">
                                                    <ItemTemplate><%#Eval("LastName") %></ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="White" ForeColor="#000066" />
                                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                            <RowStyle ForeColor="#000066" />
                                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>--%>
                            <%--   <div style="overflow: scroll">
                               
                                <asp:GridView ID="employeeListGridView" runat="server"
                                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" AllowPaging="True" PageSize="1">
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />

                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="true" />
                                        <asp:TemplateField HeaderText="Full Name">
                                            <ItemTemplate>
                                                <asp:Label ID="fullNameLabel" runat="server" Text='<%# Eval("FullName")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="fullNameTextBox" runat="server" Text='<%# Eval("FullName")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="fullNameTextBoxFooter" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="First Name">
                                            <ItemTemplate>
                                                <asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("FirstName")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Eval("FirstName")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="firstNameTextBoxFooter" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Last Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("LastName")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Eval("LastName")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="lastNameTextBoxFooter" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Email">
                                            <ItemTemplate>
                                                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("Email")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Eval("Email")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="emailTextBoxFooter" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Role">
                                            <ItemTemplate>
                                                <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("RoleId")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="roleDropDownList" runat="server"></asp:DropDownList>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:DropDownList ID="roleDropDownListFooter" runat="server"></asp:DropDownList>
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Mobile">
                                            <ItemTemplate>
                                                <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("Mobile")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Eval("Mobile")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="mobileTextBoxFooter" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Section">
                                            <ItemTemplate>
                                                <asp:Label ID="sectionLabel" runat="server" Text='<%# Eval("SectionId")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="sectionDropDownList" runat="server"></asp:DropDownList>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:DropDownList ID="sectionDropDownListFooter" runat="server"></asp:DropDownList>
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Designation">
                                            <ItemTemplate>
                                                <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("DesignationId")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="designationDropDownList" runat="server"></asp:DropDownList>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:DropDownList ID="designationDropDownListFooter" runat="server"></asp:DropDownList>
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Salary">
                                            <ItemTemplate>
                                                <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("BasicSalary")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Eval("BasicSalary")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="salaryTextBoxFooter" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gander">
                                            <ItemTemplate>
                                                <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("Gender")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="genderDropDownList" runat="server"></asp:DropDownList>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:DropDownList ID="genderDropDownListFooter" runat="server"></asp:DropDownList>
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="DateOfBirth">
                                            <ItemTemplate>
                                                <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Eval("DateOfBirth")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="dateOfBirthTextBoxFooter" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="JoinDate">
                                            <ItemTemplate>
                                                <asp:Label ID="joinDateLabel" runat="server" Text='<%# Eval("JoinDate")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="joinDateTextBox" runat="server" Text='<%# Eval("JoinDate")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="joinDateTextBoxFooter" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Branch">
                                            <ItemTemplate>
                                                <asp:Label ID="branchLabel" runat="server" Text='<%# Eval("BranchId")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="branchDropDownList" runat="server"></asp:DropDownList>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:DropDownList ID="branchDropDownListFooter" runat="server"></asp:DropDownList>
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Address">
                                            <ItemTemplate>
                                                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("Address")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Eval("Address")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Eval("Address")%>' />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
