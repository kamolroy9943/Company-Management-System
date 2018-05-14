using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.ViewModels;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class AttendanceList : System.Web.UI.Page
    {
        public static int Count = 0;
        public static int EmployeeId = 0;

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
            EmployeeId = model.EmployeeId;

            DataSet data= _employeeUserManager.GetEmployeeAttendances(model);
            attendanceList.DataSource = data;
            attendanceList.DataBind();


            DataTable firstTable = data.Tables[0];
          
             
            foreach (DataRow row in firstTable.Rows)
            {
                int completed = (int)row["EmployeeId"];
                if (!string.IsNullOrEmpty(completed.ToString()))
                {
                    Count++;
                }
            }
            present.Text = Count.ToString();
        }

       
        static int CountDays(DayOfWeek day, DateTime start, DateTime end)
        {
            TimeSpan ts = end - start;
            int count = (int)Math.Floor(ts.TotalDays / 7);
            int remainder = (int)(ts.TotalDays % 7);
            int sinceLastDay = (int)(end.DayOfWeek - day);
            if (sinceLastDay < 0) sinceLastDay += 7;

            if (remainder >= sinceLastDay) count++;

            return count > 0 ? count : 0;
        }

        protected void salaryCalculator_Click(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            var firstDayOfMonth = new DateTime(date.Year, date.Month, 1);
            var lastDayOfMonth = firstDayOfMonth.AddMonths(1).AddDays(-1);

            int fridays = CountDays(DayOfWeek.Friday, firstDayOfMonth, lastDayOfMonth);


            var employee = _employeeUserManager.GetEmployeeById(EmployeeId);
            int month = int.Parse(DateTime.Now.ToString("MM"));
            int year = int.Parse(DateTime.Now.Year.ToString());

            int days = DateTime.DaysInMonth(year, month) - fridays;
            double salaryPerDay = employee.BasicSalary / days;

            if (days != Count)
            {
                int absentday = days - Count;
                employee.BasicSalary -= (absentday * salaryPerDay);

            }



            var empSalary = new EmpSalary()
            {
                EmployeeName = employee.FullName,
                EmployeeCode = employee.EmployeeId,
                TotalPresentDay = Count,
                Salary = employee.BasicSalary

            };

            Session["empSalalry"] = empSalary;
            Response.Redirect("EmployeeSalary.aspx");
        }
    }
}

public class EmpSalary
{
    public string EmployeeName { get; set; }
    public string EmployeeCode { get; set; }
    public int TotalPresentDay { get; set; }
    public double Salary { get; set; }

}