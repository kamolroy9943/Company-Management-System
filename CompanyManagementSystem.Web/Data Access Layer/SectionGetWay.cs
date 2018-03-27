using CompanyManagementSystem.Web.ViewModels;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.Data_Access_Layer
{
    public class SectionGetWay
    {
        private readonly SqlConnection _connection;


        public SectionGetWay()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }

        public ICollection<SectionViewModel> GetAllSections()
        {
            ICollection<SectionViewModel> sections = new List<SectionViewModel>();
            string query = "SELECT * FROM Section ";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    SectionViewModel section = new SectionViewModel();
                    section.Id = int.Parse(reader["Id"].ToString());
                    section.SectionName = reader["SectionName"].ToString();
                    section.SectionCode = reader["SectionCode"].ToString();
                    sections.Add(section);
                }
                reader.Close();
            }
            _connection.Close();
            return sections;
        }
      
        
    }
}