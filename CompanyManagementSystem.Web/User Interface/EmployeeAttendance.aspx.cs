using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.Models;
using System;
using System.Collections.Generic;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class EmployeeAttendance : System.Web.UI.Page
    {
        private readonly EmployeeUserManager _employeeUserManager;

        public EmployeeAttendance()
        {
            _employeeUserManager = new EmployeeUserManager();
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                var username = Session["username"] as string;
                ICollection<Employee> emp=_employeeUserManager.GetEmployeeByUserName(username);
                employeeDropDownBox.DataSource = emp;
                employeeDropDownBox.DataBind();
                employeeDropDownBox.DataTextField = "Email";
                employeeDropDownBox.DataValueField = "Id";
            }  
        }
    }
}