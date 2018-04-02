using CompanyManagementSystem.Web.Data_Access_Layer;
using CompanyManagementSystem.Web.Models;
using CompanyManagementSystem.Web.ViewModels;
using System;
using System.Collections.Generic;
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

        public int UpdateEmployee(Employee employee)
        {
            return _employeeUserGetWay.UpdateEmployee(employee);
        }

        public int AddEmployeeAttendance(Attendance attendance)
        {
            return _employeeUserGetWay.AddEmployeeAttendance(attendance);
        }

        public bool IsAttendanceExists(int employeeId, DateTime date)
        {
            return _employeeUserGetWay.IsAttendanceExists(employeeId, date);
        }

        public ICollection<Employee> GetEmployeeBySectionId(int sectionId)
        {
            return _employeeUserGetWay.GetEmployeeBySectionId(sectionId);
        }

        public DataSet GetEmployeeAttendances(EmployeeAttendanceViewModel model)
        {
            return _employeeUserGetWay.GetEmployeeAttendances(model);
        }
    }
}