<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminEntry.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.AdminEntry" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"><a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div>
            <h1>Common Form Elements</h1>
        </div>
        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title">
                            <span class="icon"><i class="icon-align-justify"></i></span>
                            <h5>Admin-info</h5>
                        </div>

                        <div class="widget-content nopadding" style="margin-left: 50px; margin-top: 40px;">
                            <div class="alert alert-success" style="height: 20px; width: 336px; border-radius: 20px;">
                                <strong>
                                    <asp:Label ID="messageLabel" runat="server" Text=""></asp:Label></strong>
                            </div>
                            <form action="#" method="get" class="form-horizontal" style="padding: 40px 0px">
                                <div class="control-group">
                                    <label class="control-label">Employee Id :</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="employeeDropdownList" class="span4" runat="server" DataTextField="EmployeeId" DataValueField="Id" OnSelectedIndexChanged="employeeDropdownList_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">First Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="firstNameTextBox" class="span4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Last Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="lastNameTextBox" class="span4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Email Address :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="emailTextBox" class="span4" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Username :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="userNameTextBox" class="span4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Password :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="passwordTextBox" class="span4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Confirm Password :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="confirmPasswordTextBox" class="span4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Role :</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="roleDropdownlistBox" class="span4" runat="server"></asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <asp:Button ID="btnAdminSave" runat="server" CssClass=" save btn btn-success" Text="Save" OnClick="btnAdminSave_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
