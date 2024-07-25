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
    public partial class RolesPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            SqlConnection SQLconnect = new SqlConnection();
            SQLconnect.ConnectionString = ConfigurationManager.ConnectionStrings["LocalString"].ConnectionString;
            string QURY = "INSERT INTO Roles VALUES(@RoleID,@Role)";

            SQLconnect.Open();
            SqlCommand SQLCmd = new SqlCommand(QURY, SQLconnect);
            SQLCmd.Parameters.AddWithValue("@RoleID", RoleIdTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@Role", RoleTxtbox.Text);
            SQLCmd.ExecuteNonQuery();
            SQLconnect.Close();


            RoleStatusLabel.Text = "Role Added Successfully";
            RoleIdTxtbox.Text = "";
            RoleTxtbox.Text = "";
        }
    }
}