using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class EmployeeEntry : System.Web.UI.Page
    {
        private readonly SectionManager _sectionManager;
        private readonly RoleManager _roleManager;
        private readonly DesignationManager _designationManager;
        private readonly EmployeeUserManager _employeeUserManager;
        private readonly BranchManager _branchManager;

        public EmployeeEntry()
        {
            _branchManager = new BranchManager();
            _employeeUserManager = new EmployeeUserManager();
            _roleManager = new RoleManager();
            _sectionManager = new SectionManager();
            _designationManager = new DesignationManager();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem listItem = new ListItem("---------Select One---------", "-1");
                roleDropDownBox.DataSource = _roleManager.GetAllRoles().ToList();
                roleDropDownBox.DataBind();

                sectionDropDownBox.DataSource = _sectionManager.GetAllSections();
                sectionDropDownBox.DataBind();

                designationDropDownBox.DataSource = _designationManager.GetAllDesignations();
                designationDropDownBox.DataBind();

                branchDropDownBox.DataSource = _branchManager.GetAllBranch();
                branchDropDownBox.DataBind();

                roleDropDownBox.Items.Insert(0, listItem);
                sectionDropDownBox.Items.Insert(0, listItem);
                designationDropDownBox.Items.Insert(0, listItem);
                branchDropDownBox.Items.Insert(0,listItem);
            }


        }

        protected void btnEmployeeSave_Click(object sender, EventArgs e)
        {
            int rowAffected = 0;
           if (maleRadioButton.Checked)
            {
                if(fullNameTextBox.Text==String.Empty || firstNameTextBox.Text==string.Empty||
                    lastNameTextBox.Text==string.Empty || emailTextBox.Text==string.Empty ||int.Parse(roleDropDownBox.SelectedValue)<=0||
                    passwordTextBox.Text==string.Empty || mobileTextBox.Text ==string.Empty || int.Parse(sectionDropDownBox.SelectedValue)<=0 ||
                    int.Parse(designationDropDownBox.SelectedItem.Value)<=0 || double.Parse(salaryTextBox.Text)<=0 ||
                    maleRadioButton.Text==string.Empty || DateTime.Parse(dateOfBirthTextBox.Text)==null || DateTime.Parse(joinDateTextBox.Text)==null ||
                    int.Parse(branchDropDownBox.SelectedValue)<=0 || addressTextBox.Text==string.Empty)
                {
                    message.Text = "Fill up All the input fields";
                    return;
                }

                Employee employee = new Employee(fullNameTextBox.Text, firstNameTextBox.Text,
                    lastNameTextBox.Text, emailTextBox.Text,
                    int.Parse(roleDropDownBox.SelectedValue), passwordTextBox.Text
                    ,mobileTextBox.Text, int.Parse(sectionDropDownBox.SelectedValue),
                    int.Parse(designationDropDownBox.SelectedValue), double.Parse(salaryTextBox.Text),
                    maleRadioButton.Text, DateTime.Parse(dateOfBirthTextBox.Text), DateTime.Parse(joinDateTextBox.Text),
                    int.Parse(branchDropDownBox.SelectedValue), addressTextBox.Text);
                    rowAffected = _employeeUserManager.AddEmployee(employee);
            }
            else
            {
                Employee employee = new Employee(fullNameTextBox.Text, firstNameTextBox.Text,
                    lastNameTextBox.Text, emailTextBox.Text,
                    int.Parse(roleDropDownBox.SelectedValue), passwordTextBox.Text
                    , mobileTextBox.Text, int.Parse(sectionDropDownBox.SelectedValue),
                    int.Parse(designationDropDownBox.SelectedValue), double.Parse(salaryTextBox.Text),
                    femaleRadioButton.Text, DateTime.Parse(dateOfBirthTextBox.Text), DateTime.Parse(joinDateTextBox.Text),
                    int.Parse(branchDropDownBox.SelectedItem.Value), addressTextBox.Text);
                rowAffected=_employeeUserManager.AddEmployee(employee);
            }
            if (rowAffected==1)
            {
                message.Text = "Employee Save Successfull !";
                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
    }
}