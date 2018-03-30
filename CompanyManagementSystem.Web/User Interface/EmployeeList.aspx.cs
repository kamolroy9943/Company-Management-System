using CompanyManagementSystem.Web.Business_Logic_Layer;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        public DataSet Data;
        private readonly EmployeeUserManager _employeeUserManager;
        private readonly SqlConnection _connection;

 
        public EmployeeList()
        {
            _employeeUserManager = new EmployeeUserManager();
            var connectionString = ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;
            _connection = new SqlConnection(connectionString);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //ICollection<EmployeeViewModel>model = _employeeUserManager.GetAllEmpoyee();



            //Application.Add("Employee", model);
            //Response.Redirect("EmployeeList.aspx");
            //showGridView.DataSource = model;
            //showGridView.DataBind();
            PopulateGridView();
        }

        public void PopulateGridView()
        {
         
            DataSet dataTable=new DataSet();
            string query = "Select * from Employee";
            _connection.Open();
            SqlDataAdapter adapter=new SqlDataAdapter(query,_connection);
            adapter.Fill(dataTable);
            _connection.Close();
            employeeListTable.DataSource = dataTable;
            employeeListTable.DataBind();
            

        }

      }
}