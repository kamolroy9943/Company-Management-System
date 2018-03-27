using CompanyManagementSystem.Web.ViewModels;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.Data_Access_Layer
{
    public class RoleGetWay
    {
        private readonly SqlConnection _connection;


        public RoleGetWay()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }

        public ICollection<RoleViewModel> GetAllRoles()
        {
            ICollection<RoleViewModel> roles = new List<RoleViewModel>();
            string query = "SELECT * FROM Role ";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    RoleViewModel role = new RoleViewModel();
                    role.Id = int.Parse(reader["Id"].ToString());
                    role.RoleName = reader["Role"].ToString();
                    roles.Add(role);
                }
                reader.Close();
            }
            _connection.Close();
            return roles;
        }
    }
}