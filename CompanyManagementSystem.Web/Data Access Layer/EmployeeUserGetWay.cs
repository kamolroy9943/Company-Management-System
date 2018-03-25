using CompanyManagementSystem.Web.Models;
using CompanyManagementSystem.Web.ViewModels;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

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
        public DataSet GetAllEmployee()
        {
            DataSet dts=new DataSet();
            string query = "SELECT * FROM Employee ";
            SqlDataAdapter adp = new SqlDataAdapter(query, _connection);
            adp.Fill(dts);
            return dts;
        }

        public Employee GetEmployeeById(int selectedItemValue)
        {
            Employee employee = null;
            SqlCommand command=new SqlCommand("proc_GetEmployeeById" ,_connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Id",selectedItemValue);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    employee = new Employee();
                    employee.FirstName = reader["FirstName"].ToString();
                    employee.LastName = reader["LastName"].ToString();
                    employee.Email = reader["Email"].ToString();
                }
                reader.Close();
            }
            _connection.Close();
            return employee;
        }
    }
}