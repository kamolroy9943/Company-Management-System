using CompanyManagementSystem.Web.Data_Access_Layer;

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
    }
}