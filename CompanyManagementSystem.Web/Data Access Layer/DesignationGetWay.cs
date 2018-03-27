using CompanyManagementSystem.Web.ViewModels;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.Data_Access_Layer
{
    public class DesignationGetWay
    {
        private readonly SqlConnection _connection;


        public DesignationGetWay()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }

        public ICollection<DesignationViewModel> GetAllDesignations()
        {
            ICollection<DesignationViewModel>designatios=new List<DesignationViewModel>();
            string query = "SELECT * FROM Designation ";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    DesignationViewModel designation = new DesignationViewModel();
                    designation.Id = int.Parse(reader["Id"].ToString());
                    designation.DesignationName = reader["Designation"].ToString();
                    designatios.Add(designation);
                }
                reader.Close();
            }
            _connection.Close();
            return designatios;
        }
    }
}