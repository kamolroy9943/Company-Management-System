using System.Collections.Generic;
using CompanyManagementSystem.Web.Data_Access_Layer;
using CompanyManagementSystem.Web.ViewModels;

namespace CompanyManagementSystem.Web.Business_Logic_Layer
{
    public class SectionManager
    {
        private readonly SectionGetWay _sectionGetWay;

        public SectionManager()
        {
            _sectionGetWay = new SectionGetWay();
        }

        public ICollection<SectionViewModel> GetAllSections()
        {
            return _sectionGetWay.GetAllSections();
        }
    }
}