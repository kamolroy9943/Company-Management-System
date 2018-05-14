using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class Invoice : System.Web.UI.Page
    {
        private readonly SqlConnection _connection;
       public Invoice() {
            var connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            PopulateGridView();
        }
        public void PopulateGridView()
        {

            DataSet dataTable = new DataSet();
            string query = "Select * from Employee";
            _connection.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(query, _connection);
            adapter.Fill(dataTable);
            _connection.Close();
            employeeListTable.DataSource = dataTable;
            employeeListTable.DataBind();


        }
    }
}