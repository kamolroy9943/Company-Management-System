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
            if (string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                Response.Redirect("EmployeeEntry.aspx?Id=" + 0);
            }

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
                branchDropDownBox.Items.Insert(0, listItem);

                int id = int.Parse(Request.QueryString["Id"].ToString());
                if (id > 0)
                {
                    passwordTextBox.Visible = false;
                    confirmPasswordTextBox.Visible = false;
                    emailTextBox.Visible = false;
                    passwordLabel.Visible = false;
                    confirmPasswordLabel.Visible = false;
                    emailLabel.Visible = false;


                    Employee employee = _employeeUserManager.GetEmployeeById(id);
                    employeeIdHiddenField.Value = employee.Id.ToString();
                    fullNameTextBox.Text = employee.FullName;
                    firstNameTextBox.Text = employee.FirstName;
                    lastNameTextBox.Text = employee.LastName;
                    roleDropDownBox.DataSource = _roleManager.GetAllRoles().ToList();
                    roleDropDownBox.DataBind();
                    roleDropDownBox.Items.FindByValue(employee.RoleId.ToString()).Selected = true;
                    mobileTextBox.Text = employee.MobileNo;
                    sectionDropDownBox.Items.FindByValue(employee.SectionId.ToString()).Selected = true;
                    designationDropDownBox.Items.FindByValue(employee.DesignationId.ToString()).Selected = true;
                    salaryTextBox.Text = employee.BasicSalary.ToString();
                    if (employee.Gander == "Male")
                    {
                        maleRadioButton.Checked = true;
                    }
                    else
                    {
                        femaleRadioButton.Checked = true;
                    }
                    dateOfBirthTextBox.Text = employee.DateOfBirth.ToString();
                    joinDateTextBox.Text = employee.JoinDate.ToString();
                    branchDropDownBox.Items.FindByValue(employee.BranchId.ToString()).Selected = true;
                    addressTextBox.Text = employee.Address;

                }
            }


        }

        protected void btnEmployeeSave_Click(object sender, EventArgs e)
        {
            if (employeeIdHiddenField.Value != "")
            {
                if (fullNameTextBox.Text == String.Empty || firstNameTextBox.Text == string.Empty ||
                    lastNameTextBox.Text == string.Empty || int.Parse(roleDropDownBox.SelectedValue) <= 0 ||
                    mobileTextBox.Text == string.Empty ||
                    int.Parse(sectionDropDownBox.SelectedValue) <= 0 ||
                    int.Parse(designationDropDownBox.SelectedItem.Value) <= 0 ||
                    double.Parse(salaryTextBox.Text) <= 0 ||
                    maleRadioButton.Text == string.Empty || DateTime.Parse(dateOfBirthTextBox.Text) == null ||
                    DateTime.Parse(joinDateTextBox.Text) == null ||
                    int.Parse(branchDropDownBox.SelectedValue) <= 0 || addressTextBox.Text == string.Empty)
                {
                    message.Text = "Fill up All the input fields";
                    return;
                }
            }
            else
            {

                if (fullNameTextBox.Text == String.Empty || firstNameTextBox.Text == string.Empty ||
                    lastNameTextBox.Text == string.Empty || emailTextBox.Text == string.Empty ||
                    int.Parse(roleDropDownBox.SelectedValue) <= 0 ||
                    passwordTextBox.Text == string.Empty || mobileTextBox.Text == string.Empty ||
                    int.Parse(sectionDropDownBox.SelectedValue) <= 0 ||
                    int.Parse(designationDropDownBox.SelectedItem.Value) <= 0 ||
                    double.Parse(salaryTextBox.Text) <= 0 ||
                    maleRadioButton.Text == string.Empty || DateTime.Parse(dateOfBirthTextBox.Text) == null ||
                    DateTime.Parse(joinDateTextBox.Text) == null ||
                    int.Parse(branchDropDownBox.SelectedValue) <= 0 || addressTextBox.Text == string.Empty)
                {
                    message.Text = "Fill up All the input fields";
                    return;
                }
            }

            int rowAffected = 0;
            string gender;
            if (maleRadioButton.Checked)
            {
                gender = maleRadioButton.Text;
            }
            else
            {
                gender = femaleRadioButton.Text;
            }


            Employee employee = null;
            if (employeeIdHiddenField.Value == "")
            {
                employee = new Employee(fullNameTextBox.Text, firstNameTextBox.Text,
                lastNameTextBox.Text, emailTextBox.Text,
                int.Parse(roleDropDownBox.SelectedValue), passwordTextBox.Text
                , mobileTextBox.Text, int.Parse(sectionDropDownBox.SelectedValue),
                int.Parse(designationDropDownBox.SelectedValue), double.Parse(salaryTextBox.Text),
                gender, DateTime.Parse(dateOfBirthTextBox.Text), DateTime.Parse(joinDateTextBox.Text),
                int.Parse(branchDropDownBox.SelectedValue), addressTextBox.Text);
            }
            else
            {
                employee = new Employee(int.Parse(employeeIdHiddenField.Value.ToString()), fullNameTextBox.Text, firstNameTextBox.Text,
                lastNameTextBox.Text, int.Parse(roleDropDownBox.SelectedValue), mobileTextBox.Text,
                int.Parse(sectionDropDownBox.SelectedValue),
                int.Parse(designationDropDownBox.SelectedValue), double.Parse(salaryTextBox.Text),
                gender, DateTime.Parse(dateOfBirthTextBox.Text), DateTime.Parse(joinDateTextBox.Text),
                int.Parse(branchDropDownBox.SelectedValue), addressTextBox.Text);
            }

            if (employeeIdHiddenField.Value == "")
            {
                rowAffected = _employeeUserManager.AddEmployee(employee);

                if (rowAffected == 1)
                {
                    message.Text = "Insert Successfull !";
                    message.ForeColor = System.Drawing.Color.Green;
                    message.Font.Size = 20;                  
                }
                else
                {
                    message.Text = "Employee Insert Failed !";
                    message.ForeColor = System.Drawing.Color.Red;
                    message.Font.Size = 20;
                }
                //Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                rowAffected = _employeeUserManager.UpdateEmployee(employee);
                if (rowAffected == 1)
                {
                    message.Text = "Update Successfull!";
                    message.ForeColor = System.Drawing.Color.Green;
                    message.Font.Size = 20;
                }
                else
                {
                    message.Text = "Employee Update Failed !";
                    message.ForeColor = System.Drawing.Color.Red;
                    message.Font.Size = 20;
                }
            }
        }
    }
}