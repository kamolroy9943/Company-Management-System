<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeEntry.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.EmployeeEntry" EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <link href="~/Content/Site.css" rel="stylesheet" />
    <style>
        .textbox {
            width: 311px;
            height: 20px;
            border-radius: 15px;
        }
    </style>

    }
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                            <h5>Employe-info</h5>
                        </div>

                        <div class="widget-content nopadding" style="margin-left: 50px; margin-top: 40px;">
                            <div class="alert alert-success" style="height: 20px; width: 336px; border-radius: 20px;">
                                <strong><asp:Label ID="message" runat="server" Text=""></asp:Label></strong>  
                            </div>
                            <form action="#" method="get" class="form-horizontal" style="padding: 40px 0px">
                                <div class="control-group">
                                    <label class="control-label">Full Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="fullNameTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">First Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="firstNameTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Last Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="lastNameTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Email :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="emailTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Mobile :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="mobileTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Section :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="sectionTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Designation :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="DesignationTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Salary :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="salaryTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Gander</label>
                                    <div class="controls">
                                        <asp:TextBox ID="genderTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Date Of Birth :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="dateOfBirthTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Join Date :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="joinDateTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Address :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="addressTextBox" class="textArea" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <asp:Button ID="btnEmployeeSave" runat="server" CssClass=" save btn btn-success" Text="Save" OnClick="btnEmployeeSave_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

