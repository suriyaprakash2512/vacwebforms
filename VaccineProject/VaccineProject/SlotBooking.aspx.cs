using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VaccineProject
{
    public partial class SlotBooking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            int userID = (int)Session["UserID"];
            Label1.Text = userID.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            SqlCommand command = new SqlCommand("insert into BookForVaccine (VaccineName, CityName, UserID, Name, MobileNumber, DatetimeID) values" +
                   "('" + DDLVID.Text + "','" + DDLCID.Text + "','" + Label1.Text + "','" + TxtBName.Text + "','" + TxtMbl.Text + "','" + DDLDID.Text + "')", con);
            command.ExecuteNonQuery();
                con.Close();
                Label1.Text = "";
                TxtBName.Text = "";
                TxtMbl.Text = "";
                LBLbooking0.Text = "Your reservation for the time slot has been confirmed";
            
        }

        //protected void BtnRebook_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand command = new SqlCommand("UPDATE BookForVaccine SET VaccineID = @VaccineID, CityID = @CityID, Name = @Name, MobileNumber = @MobileNumber, DatetimeID = @DatetimeID WHERE BookingId = @BookingId", con);

        //    command.Parameters.AddWithValue("@VaccineID", DDLVID.Text);
        //    command.Parameters.AddWithValue("@CityID", DDLCID.Text);
        //    command.Parameters.AddWithValue("@Name", TxtBName.Text);
        //    command.Parameters.AddWithValue("@MobileNumber", TxtMbl.Text);
        //    command.Parameters.AddWithValue("@DatetimeID", DDLDID.Text);
        //    command.Parameters.AddWithValue("@BookingId", BookingId);

        //    command.ExecuteNonQuery();
        //    con.Close();

        //    Label1.Text = "";
        //    TxtBName.Text = "";
        //    TxtMbl.Text = "";
        //    LBLbooking.Text = "Your slot has been successfully rescheduled";
        //}
     }
    }

