﻿using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.ViewModels;
using System;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class Login : System.Web.UI.Page
    {
        private readonly EmployeeUserManager _employeeUserManager;

        public Login()
        {
            _employeeUserManager = new EmployeeUserManager();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["username"] != string.Empty)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            if (userNameTextBox.Text==string.Empty || passwordTextBox.Text==string.Empty)
            {
                messageLabel.Text = "Please Provide Username and Password!";
                return;
            }
            var model = new LoginViewModel(userNameTextBox.Text, passwordTextBox.Text);
            var isExists = _employeeUserManager.EmployeeExistsOrNot(model.UserName, model.Password);
            if (isExists)
            {
                Session["username"] = model.UserName;
                Response.Redirect("Default.aspx");
            }
            else
            {
                messageLabel.Text = "Username and Password Incorrect!";
            }
        }
    }
}