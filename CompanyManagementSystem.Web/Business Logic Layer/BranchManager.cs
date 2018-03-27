using CompanyManagementSystem.Web.Data_Access_Layer;
using CompanyManagementSystem.Web.ViewModels;
using System.Collections.Generic;

namespace CompanyManagementSystem.Web.Business_Logic_Layer
{
    public class BranchManager
    {
        private readonly BranchGetWay _branchGetWay;

        public BranchManager()
        {
            _branchGetWay = new BranchGetWay();
        }

        public ICollection<BranchViewModel> GetAllBranch()
        {
            return _branchGetWay.GetAllBranch();
        }
    }
}