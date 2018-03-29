using CompanyManagementSystem.Web.Data_Access_Layer;
using CompanyManagementSystem.Web.Models;
using CompanyManagementSystem.Web.ViewModels;
using System.Collections.Generic;

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

        public ICollection<EmployeeViewModel> GetAllEmpoyee()
        {
            return _employeeUserGetWay.GetAllEmployee();
        }

        public Employee GetEmployeeById(int selectedItemValue)
        {
            return _employeeUserGetWay.GetEmployeeById(selectedItemValue);
        }

        public int AddEmployee(Employee employee)
        {
            if (string.IsNullOrEmpty(employee.EmployeeId))
            {
                employee.EmployeeId=_employeeUserGetWay.GetEmployeeId(employee.SectionId);
            }
           return _employeeUserGetWay.AddEmployee(employee);
        }

        public ICollection<Employee> GetEmployeeByUserName(string username)
        {
            return _employeeUserGetWay.GetEmployeeByUserName(username);
        }
    }
}