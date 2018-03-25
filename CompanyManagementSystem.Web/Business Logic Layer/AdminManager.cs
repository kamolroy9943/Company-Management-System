using CompanyManagementSystem.Web.Data_Access_Layer;

namespace CompanyManagementSystem.Web.Business_Logic_Layer
{
    public class AdminManager
    {
        private readonly AdminGetWay _adminGetWay;

        public AdminManager()
        {
        }

        public AdminManager(AdminGetWay adminGetWay)
        {
            _adminGetWay = adminGetWay;
        }

        public int AddAdmin(int modelEmployeeId,string modelUsername, string modelPassword,int modelRoleId)
        {

            return _adminGetWay.AddAdmin(modelEmployeeId, modelUsername, modelPassword,modelRoleId);
        }
    }
}