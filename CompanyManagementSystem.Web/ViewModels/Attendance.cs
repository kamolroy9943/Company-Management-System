using System;

namespace CompanyManagementSystem.Web.ViewModels
{
    public class Attendance
    {
        public int EmployeeId { get; set; }
        public DateTime InTime { get; set; }
        public DateTime OutTime { get; set; }
        public int LateHour { get; set; }
        public string Notes { get; set; }
        public DateTime Date { get; set; }
        public string HalfDay { get; set; }
        public string IsPresent { get; set; }
    }
}