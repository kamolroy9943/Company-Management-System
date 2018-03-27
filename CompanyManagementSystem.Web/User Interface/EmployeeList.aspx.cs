using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.ViewModels;
using System;
using System.Collections.Generic;
using System.Data;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        public DataSet Data;
        private readonly EmployeeUserManager _employeeUserManager;
        public EmployeeList()
        {
            _employeeUserManager = new EmployeeUserManager();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ICollection<EmployeeViewModel>model = _employeeUserManager.GetAllEmpoyee();
            showGridView.DataSource = model;
            showGridView.DataBind();
        }
    }
}