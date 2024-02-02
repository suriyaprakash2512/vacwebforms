using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VaccineProject
{
    public partial class UForgotPwd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnNewPwd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from UserDetails where Username = @Username", con);
            cmd.Parameters.AddWithValue("@Username", TxtUser2.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "UserDetails");
            if (ds.Tables["UserDetails"].Rows.Count == 0)
            {
                LblMsg1.Text = "No Such UserName Found to Update Data";
            }
            else if (TxtPwd2.Text != TxtCPwd2.Text)
            {
                LblMsg1.Text = "Password not matching";
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("UPDATE UserDetails SET Password = @Password WHERE Username = @Username", con);
                cmd2.Parameters.AddWithValue("@Password", TxtPwd2.Text);
                cmd2.Parameters.AddWithValue("@Username", TxtUser2.Text);

                cmd2.ExecuteNonQuery();
                con.Close();
                LblMsg1.Text = "Password Changed";
                Response.Redirect("UserLogin.aspx");
            }
        }
    }

}