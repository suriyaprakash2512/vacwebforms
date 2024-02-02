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
    public partial class AForgotPwd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnNewPwd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Admin where Username = @Username", con);
            cmd.Parameters.AddWithValue("@Username", TxtUser.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Admin");
            if (ds.Tables["Admin"].Rows.Count == 0)
            {
                LblMsg.Text = "No Id Found to Update Data";
            }
            else if (TxtPwd.Text != TxtCPwd.Text)
            {
                LblMsg.Text = "Password not matching";
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("update Admin set Password='" + TxtPwd.Text + "'", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                LblMsg.Text = "Password Changed";
                Response.Redirect("AdminLogin.aspx");
                //GridView1.DataBind();
                //TextBox1.Text = "";
                //TextBox2.Text = "";
                //TextBox3.Text = "";
                //TextBox4.Text = "";
                //TextBox5.Text = "";
            }
        }
    }
}