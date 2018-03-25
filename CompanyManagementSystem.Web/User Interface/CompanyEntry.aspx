﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompanyEntry.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.CompanyEntry" %>
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
                            <h5>Company-info</h5>
                        </div>

                        <div class="widget-content nopadding" style="margin-left: 50px; margin-top: 40px;">
                            <div class="alert alert-success" style="height: 20px; width: 336px; border-radius: 20px;">
                                <strong><asp:Label ID="message" runat="server" Text=""></asp:Label></strong>  
                            </div>
                            <form action="#" method="get" class="form-horizontal" style="padding: 40px 0px">
                                <div class="control-group">
                                    <label class="control-label">Company Name :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="companyNameTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Location :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="companyLocationTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Phone No :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="companyPhoneTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Email Address :</label>
                                    <div class="controls">
                                        <asp:TextBox ID="companyEmailTextBox" class="span6" runat="server"></asp:TextBox>
                                    </div>
                                </div>       
                                
                                <div class="form-actions">
                                    <asp:Button ID="btnCompanySave" runat="server" CssClass=" save btn btn-success" Text="Save" OnClick="btnCompanySave_Click"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
