using CompanyManagementSystem.Web.Models;
using System.Configuration;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.Data_Access_Layer
{
    public class CompanyGetWay
    {
        private readonly SqlConnection _connection;


        public CompanyGetWay()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }
        public int InsertCompany(Company model)
        {
            string query = "INSERT INTO Company(CompanyName,Location,BusinessPhone,EmailAddress,LogoName,Extension,LogoPath) VALUES ('" + model.CompanyName + "','" +
                           model.Location +"','" + model.BusinessPhone+ "','" + model.EmailAddress + "','" + model.LogoName + "','" + model.Extension + "','" + model.Path + "')";
            SqlCommand command = new SqlCommand(query,_connection);
            _connection.Open();
            int rowsAffected = command.ExecuteNonQuery();
            _connection.Close();
            return rowsAffected;
        }
    }
}