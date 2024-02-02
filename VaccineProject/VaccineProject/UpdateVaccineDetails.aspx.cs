using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VaccineProject
{
    public partial class UpdateVaccineDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from VaccineDetails where  VaccineName = @VaccineName", con);
            cmd.Parameters.AddWithValue("@VaccineName", TxtVacName.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "VaccineDetails");
            if (ds.Tables["VaccineDetails"].Rows.Count != 0)
            {
                LblMsg.Text = "This Vaccine is Already available";
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("insert into VaccineDetails values('" + TxtVacName.Text + "','" + TxtVacMan.Text + "','" + TxtVaxStock.Text + "')", con);
                cmd2.ExecuteNonQuery();

                con.Close();
                LblMsg.Text = "Data has been inserted";
                GridView2.DataBind();
                DDLVname.DataBind();
                TxtVacName.Text = "";
                TxtVacMan.Text = "";
                TxtVaxStock.Text = "";
            }

        }

        protected void BtnUpd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from VaccineDetails where  VaccineName = @VaccineName", con);
            cmd.Parameters.AddWithValue("@VaccineName", DDLVname.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "VaccineDetails");
            if (ds.Tables["VaccineDetails"].Rows.Count == 0)
            {
                LblMsg2.Text = "No vaccine name Found to Update Data";
            }
            else
            {
                SqlCommand cmd1 = new SqlCommand("Update VaccineDetails set Manufacturer = @VacMan, Stock = @VacStock where  VaccineName = @VaccineName", con);
                cmd1.Parameters.AddWithValue("@VacMan", TxtVacMan2.Text);
                cmd1.Parameters.AddWithValue("@VacStock", TxtVaxStock2.Text);
                cmd1.Parameters.AddWithValue("@VaccineName", DDLVname.Text);

                cmd1.ExecuteNonQuery();

                con.Close();
                LblMsg.Text = "Data has been Updated";
                GridView2.DataBind();
                DDLVname.DataBind();
                TxtVacMan2.Text = "";
                TxtVaxStock2.Text = "";

            }
        }

        protected void BtnDlt_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from VaccineDetails where  VaccineName = @VaccineName", con);
            cmd.Parameters.AddWithValue("@VaccineName", DDLdlt.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "VaccineDetails");
            if (ds.Tables["VaccineDetails"].Rows.Count == 0)
            {
                LblMsg3.Text = "No vaccine matching the criteria was found for deletion";
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("delete from VaccineDetails where VaccineName ='" + DDLdlt.Text + "'", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                LblMsg3.Text = "Data has been Deleted";
                GridView2.DataBind();
                DDLVname.DataBind();
                DDLdlt.DataBind();
            }

        }
    }

}
