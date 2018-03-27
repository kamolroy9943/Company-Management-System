using System;

namespace CompanyManagementSystem.Web.ViewModels
{
    public class EmployeeViewModel
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmployeeId { get; set; }
        public string Email { get; set; }
        public int RoleId { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
        public string MobileNo { get; set; }
        public int SectionId { get; set; }
        public int DesignationId { get; set; }
        public double BasicSalary { get; set; }
        public string Gander { get; set; }
        public DateTime DateOfBirth { get; set; }
        public DateTime JoinDate { get; set; }
        public int BranchId { get; set; }
        public string Address { get; set; }
    }
}