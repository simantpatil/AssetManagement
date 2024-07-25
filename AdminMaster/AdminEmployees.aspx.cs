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
    public partial class AdminEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }

       protected void  Link5(object sender, EventArgs e)
        {
           /* SqlConnection SQLconnect = new SqlConnection();
            SQLconnect.ConnectionString = ConfigurationManager.ConnectionStrings["LocalString"].ConnectionString;
            string QURY = "INSERT INTO Emp_Master VALUES(@StaffNo,@UserName,@LoginName,@Designation,@Department,@Section,@ContactNo)";

            SQLconnect.Open();
            SqlCommand SQLCmd = new SqlCommand(QURY, SQLconnect);
            SQLCmd.Parameters.AddWithValue("@StaffNo", StaffNoTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@UserName", UserNameTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@LoginName", LoginNameTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@Designation", DesignationTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@Department", DepartmentTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@Section", SectionTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@ContactNo", ContactNoTxtbox.Text);
            SQLCmd.ExecuteNonQuery();
            SQLconnect.Close();


            EmployeeStatusLabel.Text = "Account Created Successfully";
            StaffNoTxtbox.Text = "";
            UserNameTxtbox.Text = "";
            LoginNameTxtbox.Text = "";
            DesignationTxtbox.Text = "";
            DepartmentTxtbox.Text = "";
            SectionTxtbox.Text = "";
            ContactNoTxtbox.Text = "";
           */
        }

        protected void GridView1_SelectedIndexChanged3(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            SqlConnection SQLconnect = new SqlConnection();
            SQLconnect.ConnectionString = ConfigurationManager.ConnectionStrings["LocalString"].ConnectionString;
            string QURY = "INSERT INTO Emp_Master VALUES(@StaffNo,@UserName,@LoginName,@Designation,@Department,@Section,@ContactNo)";

            SQLconnect.Open();
            SqlCommand SQLCmd = new SqlCommand(QURY, SQLconnect);
            SQLCmd.Parameters.AddWithValue("@StaffNo", StaffNoTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@UserName", UserNameTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@LoginName", LoginNameTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@Designation", DesignationTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@Department", DepartmentTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@Section", SectionTxtbox.Text);
            SQLCmd.Parameters.AddWithValue("@ContactNo", ContactNoTxtbox.Text);
            SQLCmd.ExecuteNonQuery();
            SQLconnect.Close();


            EmployeeStatusLabel.Text = "Employee Added Successfully";
            StaffNoTxtbox.Text = "";
            UserNameTxtbox.Text = "";
            LoginNameTxtbox.Text = "";
            DesignationTxtbox.Text = "";
            DepartmentTxtbox.Text = "";
            SectionTxtbox.Text = "";
            ContactNoTxtbox.Text = "";
           
        }

        protected void ContactNoTxtbox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}