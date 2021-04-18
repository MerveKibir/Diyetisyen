using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class randevuu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button4.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        Label12.Visible = false;
        Label13.Visible = false;
        Label14.Visible = false;
        Label15.Visible = false;
        Label16.Visible = false;
        Label17.Visible = false;
        Label18.Visible = false;
        Label19.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        GridView1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label4.Visible = false;
        Label3.Visible = false;
        Label5.Visible = false;
        GridView1.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Label1.Text = TextBox4.Text;
        Label2.Text = TextBox2.Text;
        Label3.Text = TextBox3.Text;

        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        Button4.Visible = false;
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label12.Visible = true;
        Label13.Visible = true;
        Label14.Visible = true;
        Label15.Visible = true;
        Label16.Visible = true;
        Label17.Visible = true;
        Label1.Visible = true;
        Button5.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)

    {

        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        string sorgu = "Insert Into alinanrandevu (hasta_tc, hasta_ad, hasta_soyad, tarih, saat) Values (@tc, @ad, @soyad, @tarih, @saat)";

        SqlCommand cmd = new SqlCommand(sorgu, cnn);

        cnn.Open();

        if (Label1.Text != "")
        {
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;
            Label16.Visible = true;
            Label17.Visible = true;
            try
            {

                cmd.Parameters.AddWithValue("@tc", Label1.Text);
                cmd.Parameters.AddWithValue("@ad", Label2.Text);
                cmd.Parameters.AddWithValue("@soyad", Label3.Text);
                cmd.Parameters.AddWithValue("@tarih", Label4.Text);
                cmd.Parameters.AddWithValue("@saat", Label5.Text);


                cmd.ExecuteNonQuery();
                cnn.Close();

                Session.Add("ad", Label2.Text);
                Label18.Visible = true;
                Label18.Text = "Randevunuz onaylanmıştır.";
            }
            catch (Exception)
            {
                Label19.Visible = true;
                Label19.Text = "Randevu verilememiştir.";
            }
        }

        SqlConnection cnm = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        SqlCommand cmm;
        cnm.Open();

        cmm = new SqlCommand("delete from randevu where tarih=@tarih and saat=@saat ", cnm);
        cmm.Parameters.AddWithValue("@tarih", Label4.Text);
        cmm.Parameters.AddWithValue("@saat", Label5.Text);


        cmm.ExecuteNonQuery();
        cnm.Close();
        if (Label18.Visible == true)
        {
            Button5.Visible = false;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "cmdn")
        {
            int sirano = Convert.ToInt32(e.CommandArgument);
            TableRow satir = GridView1.Rows[sirano];
            string a = satir.Cells[2].Text;
            string b = satir.Cells[3].Text;
            Label4.Text = a;
            Label5.Text = b;
            Label10.Visible = true;
            Label9.Visible = true;
            Label11.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            Button4.Visible = true;
            GridView1.Visible = true;

        }
    }



    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevuiptal.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevularim.aspx");
    }
}