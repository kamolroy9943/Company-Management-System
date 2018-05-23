<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AttendanceList.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.AttendanceList" %>

<%@ Import Namespace="System.ComponentModel" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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

                            <table class="table table-bordered data-table">
                                <tr>
                                    <td>Section</td>
                                    <td>Employee</td>
                                    <td>From</td>
                                    <td>To</td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:DropDownList ID="sectionDropdownList" runat="server" DataTextField="SectionName" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="sectionDropdownList_SelectedIndexChanged"></asp:DropDownList></td>
                                    <td>
                                        <asp:DropDownList ID="employeeIdDropdownList" DataTextField="EmployeeId" DataValueField="Id" runat="server"></asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="fromTextBox" runat="server"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="fromTextBox_CalendarExtender" runat="server" BehaviorID="fromTextBox_CalendarExtender" TargetControlID="fromTextBox"></ajaxToolkit:CalendarExtender>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="toTextBox" runat="server"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="toTextBox_CalendarExtender" runat="server" BehaviorID="toTextBox_CalendarExtender" TargetControlID="toTextBox"></ajaxToolkit:CalendarExtender>
                                    </td>
                                    <td>
                                        <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" /></td>
                                </tr>
                            </table>



                            <div style="font-size: 20px; font-style: italic; padding: 20px; font-weight: bold; color: black; width: 356px;">
                                <asp:Label ID="label" runat="server" Text="Total Present Day: "></asp:Label>
                                <asp:Label ID="present" runat="server" Text=""></asp:Label>

                            </div>
                            
                          
                                <div style="margin-right: 15px; height: 35px; margin-bottom: 10px; float: right; margin-top: 6px;">
                                    <asp:Button ID="salaryCalculator" runat="server" class="btn btn-primary" Text="Calculate Salary" OnClick="salaryCalculator_Click" />

                                </div>
                            

                            <asp:Repeater ID="attendanceList" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered data-table">
                                        <tr></tr>
                                        <tr>
                                            <td>Date</td>
                                            <td>IsPresent</td>
                                            <td>In Time</td>
                                            <td>Out Time</td>
                                            <td></td>
                                        </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Date")%></td>
                                        <td><%#Eval("IsPresent")%></td>
                                        <td><%#Eval("Intime")%></td>
                                        <td><%#Eval("Outtime")%></td>
                                        <%--  <td visible="<%# (bool)(Container.ItemIndex==0) %>">
                                        <asp:LinkButton ID="lnkBtnOk" runat="server" PostBackUrl='<%# string.Format("EmployeeSalary.aspx?Id={0}", Eval("EmployeeId"))%>' Text="Calculate Salary" class="btn btn-primary" Visible="<%# (bool)(Container.ItemIndex==0) %>"></asp:LinkButton>
                                       </td>--%>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>

                            </>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
