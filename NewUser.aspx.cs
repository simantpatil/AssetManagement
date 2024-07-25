using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SampleLogin
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginPageButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void CreateAccButton_Click(object sender, EventArgs e)
        {
            SqlConnection SQLconnect = new SqlConnection();
            SQLconnect.ConnectionString = ConfigurationManager.ConnectionStrings["LocalString"].ConnectionString;
            string QURY = "INSERT INTO Test_Login (Username,Password,Role_id) VALUES(@Username,@Password,@Role_id)";

            SQLconnect.Open();
            SqlCommand SQLCmd = new SqlCommand(QURY, SQLconnect);
            SQLCmd.Parameters.AddWithValue("@Username", NewUserTextbox.Text);
            SQLCmd.Parameters.AddWithValue("@Password", NewUserPasswordTextbox.Text);
            SQLCmd.Parameters.AddWithValue("@Role_id", DropDownList1.Text);
            SQLCmd.ExecuteNonQuery();
            SQLconnect.Close();


            AccCreationLabel.Text = "Account Created Successfully";
            NewUserTextbox.Text = "";
            NewUserPasswordTextbox.Text = "";
        }

        protected void NewUserTextbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
          
        }

        protected void NewUserTextbox_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}