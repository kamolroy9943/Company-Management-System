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
                            <%--  <table class="table table-bordered data-table">
                                <thead>
                                    <tr>
                                        <th>Rendering engine</th>
                                        <th>Browser</th>
                                        <th>Platform(s)</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% foreach (DataRow row in Data.Tables[0].Rows)
                                        { %>
                                    <tr>
                                        <td><%= row["FullName"] %></td>
                                        <td><%= row["FirstName"] %></td>
                                        <td><%= row["EmployeeId"] %></td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>--%>

                            <%--  <asp:Repeater id="rptRoles" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered data-table">
                                    <tr>
                                        <td>Role ID</td>
                                        <td>Title</td>
                                         
                                    </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("FullName")%></td>
                                        <td><%#Eval("FirstName")%></td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater> 
                            --%>

                            <table>
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
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
