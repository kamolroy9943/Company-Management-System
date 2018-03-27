using System.Collections.Generic;
using CompanyManagementSystem.Web.Data_Access_Layer;
using CompanyManagementSystem.Web.ViewModels;

namespace CompanyManagementSystem.Web.Business_Logic_Layer
{
    public class RoleManager
    {
        private readonly RoleGetWay _roleGetWay;

        public RoleManager()
        {
            _roleGetWay = new RoleGetWay();
        }

        public ICollection<RoleViewModel> GetAllRoles()
        {
            return _roleGetWay.GetAllRoles();
        }
    }
}