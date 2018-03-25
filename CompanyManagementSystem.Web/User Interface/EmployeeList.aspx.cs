using CompanyManagementSystem.Web.Business_Logic_Layer;
using System;
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
            Data= _employeeUserManager.GetAllEmpoyee();         
        }
    }
}