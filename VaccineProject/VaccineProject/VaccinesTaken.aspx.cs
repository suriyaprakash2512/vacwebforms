using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VaccineProject
{
    public partial class VaccinesTaken : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                TextBox1.Text = "Enter User Id to view the vaccination history.";
                TextBox1.Attributes.Add("onfocus", "clearDefaultText(this)");
                TextBox1.Attributes.Add("onblur", "restoreDefaultText(this)");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
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

                            string vaccineQuery = "SELECT  VaccineName, Name, NumberOfDose, Status " +
                            "FROM BookForVaccine WHERE UserID = @UserID";

                            using (SqlCommand cmd = new SqlCommand(vaccineQuery, con))
                            {
                                cmd.Parameters.AddWithValue("@UserID", loggedInUserId);

                                SqlDataAdapter da = new SqlDataAdapter(cmd);
                                DataSet ds = new DataSet();
                                da.Fill(ds, "BookForVaccine");
                                int enteredNumber = int.Parse(TextBox1.Text);

                                if (ds.Tables["BookForVaccine"].Rows.Count == 0 || enteredNumber != loggedInUserId)
                                {

                                    GridView1.DataSourceID = null;
                                    GridView1.DataSource = ds;
                                    GridView1.DataBind();
                                    GridView1.Visible= false;
                                    con.Close();
                                    LblMsg1.Text = "No vaccine history found or not authenticated";
                                }
                                else
                                {
                                    GridView1.DataSourceID = null;
                                    GridView1.DataSource = ds;
                                    GridView1.DataBind();
                                    GridView1.Visible = true;
                                    con.Close();
                                    LblMsg1.Text = "Data selected";
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Debugging: Check if an exception occurs
                LblMsg1.Text = "Error fetching data: " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

    }
}