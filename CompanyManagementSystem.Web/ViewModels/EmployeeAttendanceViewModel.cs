using System;

namespace CompanyManagementSystem.Web.ViewModels
{
    public class EmployeeAttendanceViewModel
    {
        public DateTime ToDate { get; set; }
        public DateTime FromDate { get; set; }
        public int EmployeeId { get; set; }
    }
}