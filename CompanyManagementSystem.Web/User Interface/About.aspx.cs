using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class About : Page
    {
        private readonly SqlConnection _connection;


        public About()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

             

        }
    }
}