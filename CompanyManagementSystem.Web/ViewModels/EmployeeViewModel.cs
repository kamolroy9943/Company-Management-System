using CompanyManagementSystem.Web.Models;

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
        public string MobileNo { get; set; }
        public string Section { get; set; }
        public string Designation { get; set; }
        public double BasicSalary { get; set; }
        public string Gender { get; set; }
        public string DateOfBirth { get; set; }
        public string JoinDate { get; set; }
        public string Address { get; set; }
        public Branch Branch { get; set; }
        public int BranchId { get; set; }
    }
}