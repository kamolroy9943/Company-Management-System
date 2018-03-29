using CompanyManagementSystem.Web.Business_Logic_Layer;
using CompanyManagementSystem.Web.Models;
using System;
using System.IO;
using System.Web;

namespace CompanyManagementSystem.Web.User_Interface
{
    public partial class CompanyEntry : System.Web.UI.Page
    {
        private readonly CompanyManager _companyManager;
     
        public CompanyEntry()
        {
            _companyManager = new CompanyManager();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) { message.Visible = false;}

        }

        protected void btnCompanySave_Click(object sender, EventArgs e)
        {

            if (companyNameTextBox.Text==string.Empty || companyLocationTextBox.Text==string.Empty
                || companyPhoneTextBox.Text==string.Empty || companyEmailTextBox.Text==string.Empty
                ||logoUpload.HasFile==false)
            {
                message.Visible = true;
                message.Text = "Fill up All the input fields";
                message.ForeColor = System.Drawing.Color.Red;
                message.Font.Size = 20;
                return;
            }

            HttpPostedFile postedFile = logoUpload.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            logoUpload.SaveAs(Server.MapPath(@"~\CompanyLogo\" + postedFile.FileName));

            string path= Server.MapPath(@"~\CompanyLogo\" + postedFile.FileName);

            Company model=new Company(companyNameTextBox.Text,companyLocationTextBox.Text
                ,companyPhoneTextBox.Text,companyEmailTextBox.Text,fileName,fileExtension,path);

            if (_companyManager.InsertCompany(model) == 1)
          {
                message.Visible = true;
                message.Text = "Company Insert Successfull!";
              message.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                message.Visible = true;
                message.Text = "Company Insert Failed!";
                message.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}