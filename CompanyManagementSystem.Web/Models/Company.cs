using System.Collections.Generic;

namespace CompanyManagementSystem.Web.Models
{
    public class Company
    {
        public int Id { get; set; }
        public string CompanyName { get; set; }
        public string Location { get; set; }
        public string BusinessPhone { get; set; }
        public string EmailAddress { get; set; }
        public ICollection<Branch> Branch { get; set; }
    }

    public class Branch
    {
        public int Id { get; set; }
        public string BranchName { get; set; }
        public string BranchLocation { get; set; }
        public Company Company { get; set; }
        public int CompanyId { get; set; }
    }
}