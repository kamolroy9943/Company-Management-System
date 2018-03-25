using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.Models;
using CompanyManagementSystem.Web.ViewModels;
using System;
using System.Web.UI.WebControls;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class AdminEntry : System.Web.UI.Page
    {
        private readonly EmployeeUserManager _employeeUserManager;
        private readonly AdminManager _adminManager;

        public AdminEntry()
        {
            _adminManager = new AdminManager();
            this._employeeUserManager = new EmployeeUserManager();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                employeeDropdownList.DataSource = _employeeUserManager.GetAllEmpoyee();
                employeeDropdownList.DataBind();
                ListItem listItem = new ListItem("---------Select One---------", "-1");
                employeeDropdownList.Items.Insert(0, listItem);
            }
        }

        protected void btnAdminSave_Click(object sender, EventArgs e)
        {
            AdminViewModel model = new AdminViewModel(
                int.Parse(employeeDropdownList.SelectedItem.Value),
                userNameTextBox.Text, passwordTextBox.Text,
                int.Parse(roleDropdownlistBox.SelectedItem.Value));
            if (model.EmployeeId <= 0 ||
                model.UserName == string.Empty ||
                model.Password == string.Empty ||
                model.ConfirmPassword == string.Empty ||
                model.RoleId <= 0)
            {
                messageLabel.Text = "All The Fields Are Required.";
            }
            else
            {
                if (model.Password != model.ConfirmPassword)
                {
                    messageLabel.Text = "Password Doesn't Match.";
                }
                else
                {
                    if (_adminManager.AddAdmin(model.EmployeeId,
                        model.UserName, model.Password, model.RoleId) == 1)
                    {
                        messageLabel.Text = "Admin Added Successfully.";
                    }

                }
            }

        }

        protected void employeeDropdownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (employeeDropdownList.SelectedIndex == 0)
            {

            }
            else
            {
                firstNameTextBox.Enabled = true;
                lastNameTextBox.Enabled = true;
                emailTextBox.Enabled = true;
                Employee emp = _employeeUserManager.
                    GetEmployeeById(int.Parse(employeeDropdownList
                    .SelectedItem.Value.ToString()));

                firstNameTextBox.Text = emp.FirstName;
                lastNameTextBox.Text = emp.LastName;
                emailTextBox.Text = emp.Email;
            }
        }
    }
}