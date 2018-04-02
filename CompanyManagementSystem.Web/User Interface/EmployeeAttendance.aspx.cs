using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.Models;
using CompanyManagementSystem.Web.ViewModels;
using System;
using System.Collections.Generic;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class EmployeeAttendance : System.Web.UI.Page
    {
        private readonly EmployeeUserManager _employeeUserManager;

        public EmployeeAttendance()
        {
            _employeeUserManager = new EmployeeUserManager();
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                var username = Session["username"] as string;
                ICollection<Employee> emp = _employeeUserManager.GetEmployeeByUserName(username);
                employeeDropDownBox.DataSource = emp;
                employeeDropDownBox.DataBind();
                employeeDropDownBox.DataTextField = "Email";
                employeeDropDownBox.DataValueField = "Id";
                dateTextBox.Text = DateTime.Today.ToString("dd/MM/yyyy");
                inTimeTextBox.Text = string.Format("{0:HH:mm:ss tt}", DateTime.Now);
            }
        }

        protected void btnAttendanceSave_Click(object sender, EventArgs e)
        {
            if (employeeDropDownBox.Text== string.Empty || dateTextBox.Text == string.Empty ||
                inTimeTextBox.Text == string.Empty || outTimeTextBox.Text == string.Empty || halfDayDropDownList.SelectedValue == string.Empty)
            {
                message.Text = "Fill All the Inputs!";
                message.ForeColor = System.Drawing.Color.Red;
                message.Font.Size = 20;
                return;
            }

            Attendance attendance = new Attendance();
            attendance.EmployeeId = int.Parse(employeeDropDownBox.SelectedValue);
            attendance.Date = DateTime.Parse(dateTextBox.Text);
            attendance.InTime = DateTime.Parse(inTimeTextBox.Text);
            attendance.OutTime = DateTime.Parse(outTimeTextBox.Text);
            attendance.LateHour = attendance.InTime.Hour - 10 > 0 ? attendance.InTime.Hour - 10 : 0;
            attendance.HalfDay = halfDayDropDownList.SelectedValue;
            attendance.Notes = attendance.LateHour > 0 ? "You are late today" : "You have come in time";
            attendance.IsPresent = attendance.InTime != null && attendance.OutTime != null ? "Present" : "Absent";

            bool isExists = _employeeUserManager.IsAttendanceExists(attendance.EmployeeId, attendance.Date);
            if (isExists)
            {
                message.Text = "The Attendance Already Given!";
                message.ForeColor = System.Drawing.Color.Red;
                message.Font.Size = 20;
            }
            else
            {

                if (_employeeUserManager.AddEmployeeAttendance(attendance) > 0)
                {
                    message.Text = "Your Attendance OK !";
                    message.ForeColor = System.Drawing.Color.Green;
                    message.Font.Size = 20;
                }
                else
                {
                    message.Text = "Smething Wrong !";
                    message.ForeColor = System.Drawing.Color.Red;
                    message.Font.Size = 20;
                }
            }

        }
    }
}