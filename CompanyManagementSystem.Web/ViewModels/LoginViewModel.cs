namespace CompanyManagementSystem.Web.ViewModels
{
    public class LoginViewModel
    {
        

        public LoginViewModel(string userName, string password)
        {
            this.UserName = userName;
            this.Password = password;
        }

        public string UserName { get; private set; }
        public string Password { get; private set; }

    }
}