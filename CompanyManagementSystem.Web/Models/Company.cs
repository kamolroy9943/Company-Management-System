namespace CompanyManagementSystem.Web.Models
{
    public class Company
    {
        public int Id { get; private set; }
        public string CompanyName { get; private set; }
        public string Location { get; private set; }
        public string BusinessPhone { get; private set; }
        public string EmailAddress { get; private set; }
        public string Path { get; }
        public string LogoName { get; private set; }
        public string Extension { get; private set; }


        public Company()
        {

        }

        public Company(string companyName, string location, string businessPhone, string emailAddress, string logoName, string extension, string path)
        {
            CompanyName = companyName;
            Location = location;
            BusinessPhone = businessPhone;
            EmailAddress = emailAddress;
            LogoName = logoName;
            Extension = extension;
            Path = path;

        }
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