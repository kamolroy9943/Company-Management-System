<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.Login" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Matrix Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="~/Content/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/Content/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="~/Content/css/matrix-login.css" />
    <link href="~/Content/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="form1" runat="server">
        <div id="loginbox">
            <form id="loginform1" class="form-vertical" method="post">
               
                <div class="control-group normal_text">
                    <h3>
                        <img src="../Content/img/logo.png" alt="Logo" />

                    </h3>
                  
                </div>
                <div style="color: red; font-size: medium; text-align: center"><asp:Label ID="messageLabel" runat="server" Text=""></asp:Label></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span>
                            <asp:TextBox ID="userNameTextBox" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span>
                            <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Lost password?</a></span>
                    <span class="pull-right">
                        <asp:Button ID="loginButton" runat="server" Text="login" CssClass="btn btn-success" OnClick="loginButton_Click" /></span>
                </div>

            </form>
           <%-- <form id="recoverform" action="#" class="form-vertical">
                <p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>

                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_lo"><i class="icon-envelope"></i></span>
                        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right">
                        <asp:Button ID="recoverButton" runat="server" Text="Recover" CssClass="btn btn-info" /></span>
                </div>


                <script src="../Scripts/js/jquery.min.js" type="text/javascript"></script>
                <script src="../Scripts/js/matrix.login.js" type="text/javascript"></script>
            </form>--%>
        </div>
    </form>
</body>
</html>
