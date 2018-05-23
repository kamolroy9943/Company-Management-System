using CompanyManagementSystem.Web.Business_Logic_Layer;
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
            Session["username"] = null;
            Session["role"] = null;
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
                var employee = _employeeUserManager.GetEmployeeByUserName(model.UserName);
                Session["role"] = employee.RoleId==1?"Admin":null;
                Session["password"] = model.Password;
                Session["username"] = model.UserName;
                Response.Redirect("EmployeeList.aspx");
            }
            else
            {
                messageLabel.Text = "Username and Password Incorrect!";
            }
        }
    }
}