using CompanyManagementSystem.Web.ViewModels;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.Data_Access_Layer
{
    public class BranchGetWay
    {
        private readonly SqlConnection _connection;


        public BranchGetWay()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }

        public ICollection<BranchViewModel> GetAllBranch()
        {
            ICollection<BranchViewModel> branches = new List<BranchViewModel>();
            string query = "SELECT * FROM Branch ";
            SqlCommand command = new SqlCommand(query, _connection);
            _connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    BranchViewModel branch = new BranchViewModel();
                    branch.Id = int.Parse(reader["Id"].ToString());
                    branch.BranchName = reader["BranchName"].ToString();
                    branches.Add(branch);
                }
                reader.Close();
            }
            _connection.Close();
            return branches;
        }
    }
}