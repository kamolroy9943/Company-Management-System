using CompanyManagementSystem.Web.Models;
using CompanyManagementSystem.Web.ViewModels;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace CompanyManagementSystem.Web.Data_Access_Layer
{
    public class EmployeeUserGetWay
    {
        private readonly string _connectionString;
        private readonly SqlConnection _connection;


        public EmployeeUserGetWay()
        {
            this._connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(_connectionString);
        }

        public bool EmployeeExistsOrNot(string username, string password)
        {
            SqlConnection connection = new SqlConnection(_connectionString);
            string query = "SELECT * FROM Employee WHERE Email='" + username + "' AND Password='" + password + "'";
            SqlCommand command = new SqlCommand(query, connection);
            EmployeeViewModel aEmployee = null;
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    aEmployee = new EmployeeViewModel();
                    aEmployee.FullName = reader["FullName"].ToString();
                    aEmployee.FirstName = reader["FirstName"].ToString();
                }
                reader.Close();
            }
            connection.Close();
            if (aEmployee != null)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public ICollection<EmployeeViewModel> GetAllEmployee()
        {
            ICollection<EmployeeViewModel> employees = new List<EmployeeViewModel>();
            string query = "SELECT * FROM Employee ";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    EmployeeViewModel employee = new EmployeeViewModel();
                    employee.FullName = reader["FullName"].ToString();
                    employee.FirstName = reader["FirstName"].ToString();
                    employee.LastName = reader["LastName"].ToString();
                    employees.Add(employee);
                }
                reader.Close();
            }
            _connection.Close();
            return employees;
        }

        public Employee GetEmployeeById(int selectedItemValue)
        {
            Employee employee = null;
            string query = "select * from Employee where Id='" + selectedItemValue + "'";
            SqlCommand command = new SqlCommand(query, _connection);
            command.CommandType = CommandType.Text;
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    employee = new Employee();
                    employee.Id = int.Parse(reader["Id"].ToString());
                    employee.FullName = reader["FullName"].ToString();
                    employee.FirstName = reader["FirstName"].ToString();
                    employee.LastName = reader["LastName"].ToString();
                    employee.EmployeeId = reader["EmployeeId"].ToString();
                    employee.Email = reader["Email"].ToString();
                    employee.MobileNo = reader["Mobile"].ToString();
                    employee.SectionId = int.Parse(reader["SectionId"].ToString());
                    employee.DesignationId = int.Parse(reader["DesignationId"].ToString());
                    employee.BasicSalary = double.Parse(reader["BasicSalary"].ToString());
                    employee.Gander = reader["Gender"].ToString();
                    employee.DateOfBirth = DateTime.Parse(reader["DateOfBirth"].ToString());
                    employee.JoinDate = DateTime.Parse(reader["JoinDate"].ToString());
                    employee.BranchId = int.Parse(reader["BranchId"].ToString());
                    employee.Address = reader["Address"].ToString();

                    employee.RoleId = int.Parse(reader["RoleId"].ToString());
                }
                reader.Close();
            }
            _connection.Close();
            return employee;
        }

        public string GetEmployeeId(int employeeSectionId)
        {
            string sectionCode = GetSectionCodeById(employeeSectionId);
            int numberOfEmployee = GetAllEmployee().Count(x => x.SectionId == employeeSectionId);
            string employeeId = sectionCode + "-" + numberOfEmployee + 1;
            return employeeId;
        }

        public string GetSectionCodeById(int id)
        {
            string sectionCode = null;
            string query = "Select SectionCode From Section where id='" + id + "'";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    sectionCode = reader["SectionCode"].ToString();
                }
                reader.Close();
            }
            _connection.Close();
            return sectionCode;
        }

        public int AddEmployee(Employee employee)
        {
           string query= "Insert into Employee values('"+employee.FullName+ "','" + employee.FirstName + "','" + employee.LastName + "','" + employee.EmployeeId + "','" + employee.Email + "','" + employee.RoleId + "','" + employee.Password + "','" + employee.MobileNo + "','" + employee.SectionId + "','" + employee.DesignationId + "','" + employee.BasicSalary + "','" + employee.Gander + "','" + employee.DateOfBirth + "','" + employee.JoinDate + "','" + employee.BranchId + "','" + employee.Address + "')";
            SqlCommand cmd = new SqlCommand(query, _connection);
            cmd.CommandType = CommandType.Text;
            _connection.Open();
            int returnData = cmd.ExecuteNonQuery();
            _connection.Close();
            _connection.Dispose();
            return returnData;
        }

        public Employee GetEmployeeByUserName(string username)
        {
            Employee employee= null;
            string query = "Select * From Employee where Email='" + username + "'";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    employee = new Employee();
                    employee.Id = int.Parse(reader["Id"].ToString());
                    employee.FirstName = reader["FirstName"].ToString();
                    employee.LastName = reader["LastName"].ToString();
                    employee.Email = reader["Email"].ToString();
                    employee.RoleId = int.Parse(reader["RoleId"].ToString());
                 
                }
                reader.Close();
            }
            _connection.Close();
            return employee;
        }

        public int UpdateEmployee(Employee employee)
        {
            string query = "UPDATE Employee SET FullName = '" + employee.FullName + "', FirstName = '" +
                           employee.FirstName + "', LastName = '" + employee.LastName + "', RoleId = '" +
                           employee.RoleId + "',Mobile = '" + employee.MobileNo + "', SectionId = '" +
                           employee.SectionId + "', DesignationId = '" + employee.DesignationId + "', BasicSalary = '" +
                           employee.BasicSalary + "', Gender = '" + employee.Gander + "', DateOfBirth = '" +
                           employee.DateOfBirth + "', JoinDate = '" + employee.JoinDate + "', BranchId = '" +
                           employee.BranchId + "', Address = '" + employee.Address + "' WHERE Id='" + employee.Id + "'";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            _connection.Close();
            return rowAffected;
        }

        public int AddEmployeeAttendance(Attendance attendance)
        {
            string query =
                "Insert into EmployeeAttendance(EmployeeId,Date,Intime,Outtime,LateHour,HalfDay,Notes,IsPresent) values('" +
                attendance.EmployeeId + "','" + attendance.Date.Date + "','" + attendance.InTime + "','" +
                attendance.OutTime + "','" + attendance.LateHour + "','" + attendance.HalfDay + "','" +
                attendance.Notes + "','"+attendance.IsPresent+"')";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            int rowAffedted = command.ExecuteNonQuery();
            _connection.Close();
            return rowAffedted;
        }

        public bool IsAttendanceExists(int employeeId, DateTime date)
        {
            Attendance attendance = null;
            string query = "Select * from EmployeeAttendance where EmployeeId='" + employeeId + "' And Date='" + date + "'";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    attendance = new Attendance();
                    attendance.InTime = DateTime.Parse(reader["Intime"].ToString());
                    attendance.Notes = reader["Notes"].ToString();
                }
                reader.Close();
            }
            _connection.Close();
            if (attendance == null) { return false; }
            else
            {
                return true;
            }
        }

        public ICollection<Employee> GetEmployeeBySectionId(int sectionId)
        {
            ICollection<Employee> employees = new List<Employee>();
            string query = "Select * From Employee where SectionId='" + sectionId + "'";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Employee employee = new Employee();
                    employee.Id = int.Parse(reader["Id"].ToString());
                    employee.EmployeeId = reader["EmployeeId"].ToString();
                    employee.FirstName = reader["FirstName"].ToString();
                    employee.LastName = reader["LastName"].ToString();
                    employee.Email = reader["Email"].ToString();
                    employees.Add(employee);
                }
                reader.Close();
            }
            _connection.Close();
            return employees;
        }

        public DataSet GetEmployeeAttendances(EmployeeAttendanceViewModel model)
        {
            DataSet data = new DataSet();
            string query = "select * from EmployeeAttendance  WHERE Date>= '" +
                           model.FromDate + "' and Date<= '" + model.ToDate +
                           "'";
            SqlDataAdapter adapter = new SqlDataAdapter(query, _connection);
            _connection.Open();
            adapter.Fill(data);
            return data;
        }
    }
}