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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection SQLconnect = new SqlConnection();
            SQLconnect.ConnectionString = ConfigurationManager.ConnectionStrings["LocalString"].ConnectionString;
            string QURY = "SELECT * FROM Test_Login WHERE Username = @Username AND Password = @Password";

            SQLconnect.Open();
            SqlCommand SQLCmd = new SqlCommand(QURY, SQLconnect);
            SQLCmd.Parameters.AddWithValue("@Username", LoginTextbox.Text);
            SQLCmd.Parameters.AddWithValue("@Password", PasswordTextbox.Text);
            SqlDataReader Details = SQLCmd.ExecuteReader();
            
            if (Details.HasRows)
            {
                Details.Close();
                LoginStatusLabel.Text = "Login Successful";
                String Type = "SELECT Role_id FROM Test_Login Where Username = @Username AND Password = @Password";
                SqlCommand SQLCommand = new SqlCommand(Type, SQLconnect);
                SQLCommand.Parameters.AddWithValue("@Username", LoginTextbox.Text);
                SQLCommand.Parameters.AddWithValue("@Password", PasswordTextbox.Text);
                SqlDataReader UserType = SQLCommand.ExecuteReader();
                UserType.Read();
                String Roletype = UserType.GetString(0);


                if (Roletype=="A")
                {
                    Response.Redirect("AdminMaster/AdminAsset.aspx");
                }
                else
                {
                    Response.Redirect("UserMaster/UserAsset.aspx");
                }

            }
            else
            {
                LoginStatusLabel.Text = "Username or Password Incorrect";
                LoginTextbox.Text = "";
                PasswordTextbox.Text = "";

            }
            SQLconnect.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewUser.aspx");
        }

        protected void ShowPassCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            

            
        }

        protected void PasswordTextbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ShowPassCheck_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}