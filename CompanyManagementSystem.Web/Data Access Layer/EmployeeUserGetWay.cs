using CompanyManagementSystem.Web.ViewModels;
using System.Configuration;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.Data_Access_Layer
{
    public class EmployeeUserGetWay
    {
        private readonly string _connectionString;
        
        public EmployeeUserGetWay()
        {
             this._connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
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
    }
}