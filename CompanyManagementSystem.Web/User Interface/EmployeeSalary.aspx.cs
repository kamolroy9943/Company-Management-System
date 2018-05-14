using System;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class EmployeeSalary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["empSalalry"] != null)
            {
                EmpSalary empSalary = (EmpSalary)Session["empSalalry"];
                nameLabel.Text = empSalary.EmployeeName;
                employeeCodelabel.Text = empSalary.EmployeeCode;
                workingDayLabel.Text = empSalary.TotalPresentDay.ToString();
                salaryLabel.Text = empSalary.Salary.ToString();
            }
        }
    }
}