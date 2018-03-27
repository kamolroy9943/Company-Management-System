using System;

namespace CompanyManagementSystem.Web.Models
{
    public class Employee
    {
        public Employee(string fullName,string firstName,string lastName,string email,int roleId,string password,
                        string mobileNo,int sectionId,int designationId,double basicSalary,string gander,DateTime dateOfBirth,
                        DateTime joinDate,int branchId,string address)
        {
            this.FullName = fullName;
            this.FirstName = firstName;
            this.LastName = lastName;
            this.Email = email;
            this.RoleId = roleId;
            this.Password = password;
            this.MobileNo = mobileNo;
            this.SectionId = sectionId;
            this.DesignationId = designationId;
            this.BasicSalary = basicSalary;
            this.Gander = gander;
            this.DateOfBirth = dateOfBirth;
            this.JoinDate = joinDate;
            this.BranchId = branchId;
            this.Address = address;
        }

        public Employee()
        {
           
        }

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