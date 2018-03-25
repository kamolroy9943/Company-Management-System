namespace CompanyManagementSystem.Web.ViewModels
{
    public class AdminViewModel
    {
        public int Id { get; set; }
        public int EmployeeId { get; private set; }
        public string UserName { get; private set; }
        public string Password { get; private set; }
        public string ConfirmPassword { get; set; }
        public int RoleId { get; private set; }

        public AdminViewModel(int employeeId,string userName,string password,int roleId)
        {
            EmployeeId = employeeId;
            UserName = userName;
            Password = password;
            RoleId = roleId;
        }
    }
}
