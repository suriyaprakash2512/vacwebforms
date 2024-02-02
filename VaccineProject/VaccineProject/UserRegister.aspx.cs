using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace VaccineProject
{
    public partial class UserRegister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO UserDetails (Username, Password, FirstName, LastName, Email, PhoneNumber) " +
                "VALUES (@Username, @Password, @FirstName, @LastName, @Email, @PhoneNumber);SELECT SCOPE_IDENTITY();", con);
            cmd.Parameters.AddWithValue("@Username", Uname.Text);
            cmd.Parameters.AddWithValue("@Password", UPwd.Text);
            cmd.Parameters.AddWithValue("@FirstName", UFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", ULastName.Text);
            cmd.Parameters.AddWithValue("@Email", UEmail.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", UPhoneNumber.Text);
            
            int userID = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            Uname.Text = "";
            UPwd.Text = "";
            UFirstName.Text = "";
            ULastName.Text = "";
            UEmail.Text = "";
            UPhoneNumber.Text = "";
            LblMsg0.Text = "Registeration Is Successful";
            LblMsg3.Text = userID.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE UserDetails SET Username = @Username, Password = @Password, FirstName = @FirstName, LastName = @LastName," +
                " Email = @Email, PhoneNumber = @PhoneNumber WHERE Username = @Username", con);

            cmd.Parameters.AddWithValue("@Username", Uname.Text);
            cmd.Parameters.AddWithValue("@Password", UPwd.Text);
            cmd.Parameters.AddWithValue("@FirstName", UFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", ULastName.Text);
            cmd.Parameters.AddWithValue("@Email", UEmail.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", UPhoneNumber.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Uname.Text = "";
            UPwd.Text = "";
            UFirstName.Text = "";
            ULastName.Text = "";
            UEmail.Text = "";
            UPhoneNumber.Text = "";
            LblMsg4.Text = "Details Updated Successfully";

        }
    }
}