using CompanyManagementSystem.Web.Data_Access_Layer;
using CompanyManagementSystem.Web.ViewModels;
using System.Collections.Generic;

namespace CompanyManagementSystem.Web.Business_Logic_Layer
{
    public class DesignationManager
    {
        private readonly DesignationGetWay _designationGetWay;

        public DesignationManager(  )
        {
            _designationGetWay = new DesignationGetWay();
        }

        public ICollection<DesignationViewModel> GetAllDesignations()
        {
            return _designationGetWay.GetAllDesignations();
        }
    }
}