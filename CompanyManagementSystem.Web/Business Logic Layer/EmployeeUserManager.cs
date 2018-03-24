using CompanyManagementSystem.Web.Data_Access_Layer;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.Business_Logic_Layer
{
    public class EmployeeUserManager
    {
        private readonly EmployeeUserGetWay _employeeUserGetWay;

        public EmployeeUserManager()
        {
            _employeeUserGetWay = new EmployeeUserGetWay();
        }

        public bool EmployeeExistsOrNot(string username, string password)
        {
            return _employeeUserGetWay.EmployeeExistsOrNot(username, password);
        }

        public SqlDataAdapter GetAllEmpoyee()
        {
            return _employeeUserGetWay.GetAllEmployee();
        }
    }
}