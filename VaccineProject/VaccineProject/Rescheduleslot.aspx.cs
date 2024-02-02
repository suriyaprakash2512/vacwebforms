using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace VaccineProject
{
    public partial class Rescheduleslot : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            GridView2.Visible= true;

            if (!IsPostBack)
            {
                TextSearch.Text = "Enter User Id to view the slot history.";
                TextSearch.Attributes.Add("onfocus", "clearDefaultText(this)");
                TextSearch.Attributes.Add("onblur", "restoreDefaultText(this)");
            }

        }

        protected void TxtSearch_Click(object sender, EventArgs e)
        {
            try
            {

                if (Session["UserID"] != null && int.TryParse(Session["UserID"].ToString(), out int loggedInUserId))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }


                    string userIdQuery = "SELECT UserID FROM UserDetails WHERE UserID = @UserID";
                    using (SqlCommand userIdCommand = new SqlCommand(userIdQuery, con))
                    {
                        userIdCommand.Parameters.AddWithValue("@UserID", loggedInUserId);
                        object userIdResult = userIdCommand.ExecuteScalar();

                        if (userIdResult != null && Convert.ToInt32(userIdResult) == loggedInUserId)
                        {

                            string vaccineQuery = "SELECT  BookingId, VaccineName, CityName, Name, MobileNumber, DatetimeID, NumberOfDose, Status " +
                            "FROM BookForVaccine WHERE UserID = @UserID";
                          

                            using (SqlCommand cmd = new SqlCommand(vaccineQuery, con))
                            {
                                cmd.Parameters.AddWithValue("@UserID", loggedInUserId);

                                SqlDataAdapter da = new SqlDataAdapter(cmd);
                                DataSet ds = new DataSet();
                                da.Fill(ds, "BookForVaccine");
                                int enteredNumber = int.Parse(TextSearch.Text);

                                if (ds.Tables["BookForVaccine"].Rows.Count == 0 || enteredNumber != loggedInUserId)
                                {

                                    GridView1.DataSourceID = null;
                                    GridView1.DataSource = ds;
                                    GridView1.DataBind();
                                    GridView1.Visible = false;
                                    Label1.Text = "No vaccine history found or not authenticated";
                                }
                                else
                                {
                                    GridView1.DataSourceID = null;
                                    GridView1.DataSource = ds;
                                    GridView1.DataBind();
                                    GridView1.Visible = true;
                                    Label1.Text = "Data selected";
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Debugging: Check if an exception occurs
                Label1.Text = "Error fetching data: " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void Btnrebook_Click(object sender, EventArgs e)
        {

            SqlCommand cmd9 = new SqlCommand("Select BookingId from BookForVaccine where BookingId = @BookingId AND UserID = @UserID", con);
            cmd9.Parameters.AddWithValue("@BookingId", TextBox1.Text);
            cmd9.Parameters.AddWithValue("@UserID", TextSearch.Text);

            SqlDataAdapter daa = new SqlDataAdapter(cmd9);
            DataSet dss = new DataSet();
            daa.Fill(dss, "BookForVaccine");
            if (dss.Tables["BookForVaccine"].Rows.Count == 0)
            {
                Label2.Text = "Failed to update date. User ID or Booking ID not found.";
            }
            else
            {
                SqlCommand cmd3 = new SqlCommand("UPDATE BookForVaccine SET DatetimeID = @DatetimeId WHERE BookingId = @BookingId", con);
                cmd3.Parameters.AddWithValue("@DatetimeId", DDLId.Text);
                cmd3.Parameters.AddWithValue("@BookingId", TextBox1.Text);
                cmd3.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                GridView2.DataBind();
                TextBox1.Text = "";

                Label2.Text = "Your slot has been rescheduled";
            }


        }




    }
}
    
