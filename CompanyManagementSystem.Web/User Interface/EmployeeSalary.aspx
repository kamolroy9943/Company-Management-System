<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeSalary.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.EmployeeSalary" %>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"><a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Home</a> <a href="#" class="current">Tables</a> </div>
            <h1>Employee Salary Details</h1>
        </div>
        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title">
                            <span class="icon"><i class="icon-th"></i></span>
                            <h5>Salary Details</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <h1 style="margin: auto; text-align: center; padding-top: 40px; color: black; font-family: serif;">Employee Salary Details.</h1>
                            <table class="table" style="font-family: arial, sans-serif; border-collapse: collapse; margin: 50px auto; width: 80%; color: black; font-size: 20px; font-style: italic;">
                                <tr class="">
                                    <td style="border: 1px solid #dddddd; text-align: left; padding: 8px">
                                        <asp:Label ID="Label1" class="" runat="server" Text="Employee Name: "></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #dddddd; text-align: left; padding: 8px">
                                        <asp:Label ID="nameLabel" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr class="">
                                    <td style="border: 1px solid #dddddd; text-align: left; padding: 8px">
                                        <asp:Label ID="Label2" class="" runat="server" Text="Employee Code: "></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #dddddd; text-align: left; padding: 8px">
                                        <asp:Label ID="employeeCodelabel" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr class="">

                                    <td style="border: 1px solid #dddddd; text-align: left; padding: 8px">
                                        <asp:Label ID="Label3" class="" runat="server" Text="Working Day: "></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #dddddd; text-align: left; padding: 8px">
                                        <asp:Label ID="workingDayLabel" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr class="">
                                    <td style="border: 1px solid #dddddd; text-align: left; padding: 8px">
                                        <asp:Label ID="Label4" class="" runat="server" Text="Employee Salary: "></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #dddddd; text-align: left; padding: 8px">
                                        <asp:Label ID="salaryLabel" runat="server" Text=""></asp:Label>
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
