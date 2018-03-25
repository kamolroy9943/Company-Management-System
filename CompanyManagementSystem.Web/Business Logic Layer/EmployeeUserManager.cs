using CompanyManagementSystem.Web.Data_Access_Layer;
using CompanyManagementSystem.Web.Models;
using System.Data;

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

        public DataSet GetAllEmpoyee()
        {
            return _employeeUserGetWay.GetAllEmployee();
        }

        public Employee GetEmployeeById(int selectedItemValue)
        {
            return _employeeUserGetWay.GetEmployeeById(selectedItemValue);
        }
    }
}