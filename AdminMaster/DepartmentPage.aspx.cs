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
    public partial class DepartmentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            SqlConnection SQLconnect = new SqlConnection();
            SQLconnect.ConnectionString = ConfigurationManager.ConnectionStrings["LocalString"].ConnectionString;
            string QURY = "INSERT INTO Dept_Master VALUES(@Department,@Gateway,@DNS1,@DNS2)";

            SQLconnect.Open();
            SqlCommand SQLCmd = new SqlCommand(QURY, SQLconnect);
            SQLCmd.Parameters.AddWithValue("@Department", DepartmentTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@Gateway", GatewayTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@DNS1", DNS1Txtbox.Text);
            SQLCmd.Parameters.AddWithValue("@DNS2", DNS2Txtbox.Text);
            SQLCmd.ExecuteNonQuery();
            SQLconnect.Close();


            DepartmentStatusLabel.Text = "Department Added Successfully";
            DepartmentTxtbox.Text = "";
            GatewayTxtbox.Text = "";
            DNS1Txtbox.Text = "";
            DNS2Txtbox.Text = "";
        }
    }
}