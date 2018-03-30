<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeEntry.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.EmployeeEntry" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content">
        <div id="content-header">
            <div id="breadcrumb">
                <a href="Default.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a>
            </div>
            <h1>Add New Employee Info</h1>
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
                            <%--<% if (message.Text != string.Empty)
                                { %>
                            <% if (message.Text == "Fill up All the input fields" || message.Text == "Employee Insert Failed !")
                                { %>
                            <div class="alert alert-danger" style="height: 20px; width: 336px; border-radius: 20px;">
                                <strong>
                                    <asp:Label ID="message" runat="server" Text=""></asp:Label></strong>
                            </div>
                            <% }
                                else
                                {
                            %>
                            <div class="alert alert-success" style="height: 20px; width: 336px; border-radius: 20px;">
                                <strong>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></strong>
                            </div>

                            <% 
                                } %>
                            <% }
                            %>--%>

                            <div class="alert" style="height: 20px; width: 336px; border-radius: 20px;">
                                <strong>
                                    <asp:Label ID="message" runat="server" Text=""></asp:Label></strong>
                            </div>

                            <form action="#" method="get" class="form-horizontal" style="padding: 40px 0">
                                <asp:HiddenField ID="employeeIdHiddenField" runat="server" />
                                <div class="control-group">
                                    <label class="control-label">Full Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="fullNameTextBox" Style="height: 30px; width: 374px; border-radius: 20px;" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">First Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="firstNameTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Last Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="lastNameTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" runat="server" ID="emailLabel">Email :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="emailTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Role :</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="roleDropDownBox" DataTextField="RoleName" DataValueField="Id" runat="server" Style="height: 39px; width: 388px; border-radius: 20px;"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" ID="passwordLabel" runat="server">Password :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="passwordTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" ID="confirmPasswordLabel" runat="server">Confirm Password :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="confirmPasswordTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Mobile :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="mobileTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Section :</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="sectionDropDownBox" DataTextField="SectionName" DataValueField="Id" runat="server" Style="height: 39px; width: 388px; border-radius: 20px;"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Designation :</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="designationDropDownBox" DataTextField="DesignationName" DataValueField="Id" runat="server" Style="height: 39px; width: 388px; border-radius: 20px;"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Salary :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="salaryTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Gander</label>
                                    <div class="controls">
                                        <div style="padding-bottom: 15px;">
                                            <asp:RadioButton ID="maleRadioButton" class="radio inline" runat="server" Text="Male" GroupName="GenderGroup" />
                                            <asp:RadioButton ID="femaleRadioButton" class="radio inline" runat="server" Text="Female" GroupName="GenderGroup" />
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Date Of Birth :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="dateOfBirthTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="dateOfBirthTextBox_CalendarExtender" runat="server" BehaviorID="dateOfBirthTextBox_CalendarExtender" TargetControlID="dateOfBirthTextBox"></ajaxToolkit:CalendarExtender>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Join Date :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="joinDateTextBox" runat="server" Style="height: 30px; width: 374px; border-radius: 20px;"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="joinDateTextBox_CalendarExtender" runat="server" BehaviorID="joinDateTextBox_CalendarExtender" TargetControlID="joinDateTextBox"></ajaxToolkit:CalendarExtender>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Branch :</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="branchDropDownBox" DataTextField="BranchName" DataValueField="Id" runat="server" Style="height: 39px; width: 388px; border-radius: 20px;"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Address :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="addressTextBox" Style="border-radius: 20px; width: 280px" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="btnEmployeeSave" runat="server" CssClass=" save btn btn-success" Text="Save" OnClick="btnEmployeeSave_Click" />
                                    </div>
                                </div>
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

