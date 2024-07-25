using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SampleLogin.UserMaster
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection SQLconnect = new SqlConnection();
            SQLconnect.ConnectionString = ConfigurationManager.ConnectionStrings["LocalString"].ConnectionString;
            string QURY = "UPDATE Test_Login SET Password = @NewPass WHERE Password= @OldPass";
            SQLconnect.Open();
            SqlCommand SQLCmd = new SqlCommand(QURY, SQLconnect);
            SQLCmd.Parameters.AddWithValue("@NewPass", NewPassTextbox.Text);
            SQLCmd.Parameters.AddWithValue("@OldPass", OldPassTextbox.Text);
            PassChangeLabel.Text = "Password Changed Successfully";
            SQLCmd.ExecuteNonQuery();
            SQLconnect.Close();
        }

        protected void logoutbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}