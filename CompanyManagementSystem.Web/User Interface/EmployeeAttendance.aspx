<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeAttendance.aspx.cs" Async="true" Inherits="CompanyManagementSystem.Web.User_Interface.EmployeeAttendance" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div id="content">
        <div id="content-header">
            <div id="breadcrumb"><a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div>
            <h1>Employee Attendance</h1>
        </div>
        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title">
                            <span class="icon"><i class="icon-align-justify"></i></span>
                            <h5>Give your Attendance</h5>
                        </div>

                        <div class="widget-content nopadding" style="margin-left: 50px; margin-top: 40px;">
                            <div class="alert alert-success" style="height: 20px; width: 238px; border-radius: 2px; font-size:14px;">
                               <asp:Label ID="message" runat="server" Text=""></asp:Label> 
                            </div>
                            <form action="#" method="get" class="form-horizontal" style="padding: 40px 0px">
                                <div class="control-group">
                                    <label class="control-label">Department:</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="departmentDropDownBox" AutoPostBack="True" DataValueField = "Id" DataTextField = "SectionName" runat="server"  style="height: 37px; width: 280px;border-radius:2px;" OnSelectedIndexChanged="departmentDropDownBox_SelectedIndexChanged"></asp:DropDownList>
                               </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Employee Id :</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="employeeDropDownBox" DataValueField = "Id" DataTextField = "Email" runat="server" style="height: 37px; width: 280px;border-radius:2px;" OnSelectedIndexChanged="employeeDropDownBox_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Date :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="dateTextBox" Format="dd/MM/yyyy" style="height: 28px; width: 273px;border-radius:2px;" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">In Time :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="inTimeTextBox" style="height: 28px; width: 273px;border-radius:2px;" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Out Time :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="outTimeTextBox" style="height: 28px; width: 273px;border-radius:2px;" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Half Day :</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="halfDayDropDownList" style="height: 38px; width: 292px;border-radius:2px;" runat="server">
                                            <asp:ListItem>Yes</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <asp:Button ID="btnAttendanceSave" runat="server" CssClass=" save btn btn-success" Text="Save" OnClick="btnAttendanceSave_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:Content>

