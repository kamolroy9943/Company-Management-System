using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.ViewModels;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class AttendanceList : System.Web.UI.Page
    {
        private readonly EmployeeUserManager _employeeUserManager;
        private readonly SectionManager _sectionManager;


        public AttendanceList()
        {
            _sectionManager = new SectionManager();
            _employeeUserManager = new EmployeeUserManager();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                ListItem listItem = new ListItem("---------Select One---------", "-1");
                sectionDropdownList.DataSource = _sectionManager.GetAllSections();
                sectionDropdownList.DataBind();
                employeeIdDropdownList.Items.Insert(0, listItem);
                sectionDropdownList.Items.Insert(0, listItem);
            }
        }

        protected void sectionDropdownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int sectionId = int.Parse(sectionDropdownList.SelectedItem.Value.ToString());
            employeeIdDropdownList.DataSource=_employeeUserManager.GetEmployeeBySectionId(sectionId);
            employeeIdDropdownList.DataBind();
            ListItem listItem = new ListItem("---------Select One---------", "-1");
            employeeIdDropdownList.Items.Insert(0, listItem);

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {

            EmployeeAttendanceViewModel model = new EmployeeAttendanceViewModel();

            model.FromDate = DateTime.Parse(fromTextBox.Text);
            model.ToDate = DateTime.Parse(toTextBox.Text);
            model.EmployeeId = int.Parse(employeeIdDropdownList.SelectedItem.Value.ToString());

            DataSet data= _employeeUserManager.GetEmployeeAttendances(model);
            attendanceList.DataSource = data;
            attendanceList.DataBind();


            DataTable firstTable = data.Tables[0];
            int count = 0;
             
            foreach (DataRow row in firstTable.Rows)
            {
                int completed = (int)row["EmployeeId"];
                if (!string.IsNullOrEmpty(completed.ToString()))
                {
                    count++;
                }
            }
            present.Text = count.ToString();
        }
    }
}