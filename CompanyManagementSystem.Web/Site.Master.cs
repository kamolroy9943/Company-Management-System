using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        private readonly string _connectionString;
        private readonly SqlConnection _connection;

        public Site1()
        {
            this._connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(_connectionString);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                DataSet dts = new DataSet();
                string query = "SELECT * FROM Employee where Email='" + Session["username"] + "' ";
                SqlDataAdapter adp = new SqlDataAdapter(query, _connection);
                adp.Fill(dts);
                usernameLabel.Text = dts.Tables[0].Rows[0]["FirstName"].ToString();
            }
        }
    }
}