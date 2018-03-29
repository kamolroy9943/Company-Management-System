using CompanyManagementSystem.Web.Data_Access_Layer;
using CompanyManagementSystem.Web.Models;

namespace CompanyManagementSystem.Web.Business_Logic_Layer
{
    public class CompanyManager
    {
        private readonly CompanyGetWay _companyGetWay;

        public CompanyManager()
        {
            _companyGetWay = new CompanyGetWay();
        }

        public int InsertCompany(Company model)
        {
            return _companyGetWay.InsertCompany(model);
        }
    }
}