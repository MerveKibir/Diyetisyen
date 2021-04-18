using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class randevuiptal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label13.Visible = false;
        Label14.Visible = false;
        Label15.Visible = false;
        Label16.Visible = false;
        Label17.Visible = false;
        Label18.Visible = false;
        Label19.Visible = false;
        Button5.Visible = false;
        Label7.Visible = false;
        Label20.Visible = false;
        Label12.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevuu.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevularim.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Label20.Text == "")
        {
            Label7.Visible = true;
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "randi")
        {
            int sirano = Convert.ToInt32(e.CommandArgument);
            TableRow satir = GridView1.Rows[sirano];


            string b = satir.Cells[1].Text;
            string c = satir.Cells[2].Text;
            string d = satir.Cells[3].Text;
            string g = satir.Cells[4].Text;
            string f = satir.Cells[5].Text;

            Label1.Text = b;
            Label2.Text = c;
            Label3.Text = d;
            Label4.Text = g;
            Label5.Text = f;
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;
            Label16.Visible = true;
            Label17.Visible = true;
            Button5.Visible = true;

        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        string sorgu = "Insert Into randevu ( tarih, saat) Values ( @tarih, @saat)";

        SqlCommand cmd = new SqlCommand(sorgu, cnn);

        cnn.Open();
        DateTime tarihnow = DateTime.Now;
        if (Label4.Text != tarihnow.ToString())
        {

            try
            {
                cmd.Parameters.AddWithValue("@tc", Label1.Text);
                cmd.Parameters.AddWithValue("@ad", Label2.Text);
                cmd.Parameters.AddWithValue("@soyad", Label3.Text);
                cmd.Parameters.AddWithValue("@tarih", Label4.Text);
                cmd.Parameters.AddWithValue("@saat", Label5.Text);


                cmd.ExecuteNonQuery();
                cnn.Close();

                Label18.Visible = true;
                Label18.Text = "Randevunuz iptal edilmiştir...";
            }
            catch (Exception)
            {
                Label19.Visible = true;
                Label19.Text = "Randevunuz iptal edilememiştir...";
            }
            SqlConnection cnm = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string silme = "delete from alinanrandevu where hasta_tc ='" + Label1.Text + "'";

            SqlCommand cmm = new SqlCommand(silme, cnm);
            cnm.Open();

            int i = cmm.ExecuteNonQuery();

            cnm.Close();
            if (i > 0)
            {
                Label18.Text = "Randevunuz iptal edilmiştir...";
            }
            else
                Label19.Text = "Randevunuz iptal edilememiştir.";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevuiptal.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }
}