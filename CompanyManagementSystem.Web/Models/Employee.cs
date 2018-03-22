namespace CompanyManagementSystem.Web.Models
{
    public class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string EmployeeId { get; set; }
        public string Designation { get; set; }
        public string Gender { get; set; }
        public string DateOfBirth { get; set; }
        public string JoinDate { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string MobileNo { get; set; }
        public double BasicSalary { get; set; }
        public Branch Branch { get; set; }
        public int BranchId { get; set; }
    }
}