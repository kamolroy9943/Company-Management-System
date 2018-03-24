using CompanyManagementSystem.Web.Business_Logic_Layer;
using System;
using System.Data;
using System.Data.SqlClient;

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
            SqlDataAdapter adp = _employeeUserManager.GetAllEmpoyee();
            Data = new DataSet();
            adp.Fill(Data, "Employee");
        }


    }
}