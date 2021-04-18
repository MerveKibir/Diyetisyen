using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class kayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label10.Visible = false;
        Label11.Visible = false;
        Label13.Visible = false;
        Label14.Visible = false;
        Label15.Visible = false;
        Panel2.Visible = false;
        Label3.Visible = false;
        Label8.Visible = false;
        Label7.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "")
        {
            Label10.Visible = true;
        }
        if (TextBox2.Text == "")
        {
            Label11.Visible = true;
        }
        if (TextBox4.Text == "")
        {
            Label13.Visible = true;
        }
        if (TextBox5.Text == "")
        {
            Label14.Visible = true;
        }
        if (TextBox6.Text == "")
        {
            Label15.Visible = true;
        }
        if (TextBox5.Text != TextBox6.Text)
        {
            Label3.Visible = true;
            Label15.Visible = false;
        }
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox5.Text == TextBox6.Text)
        {


            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

            string sorgu = "Insert Into kayit (ad,soyad,eposta,sifre1,sifre2) Values(@ad,@soyad,@eposta,@sifre1,@sifre2)";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();
            try
            {

                cmd.Parameters.AddWithValue("@ad", TextBox1.Text);
                cmd.Parameters.AddWithValue("@soyad", TextBox2.Text);
                cmd.Parameters.AddWithValue("@eposta", TextBox4.Text);
                cmd.Parameters.AddWithValue("@sifre1", TextBox5.Text);
                cmd.Parameters.AddWithValue("@sifre2", TextBox6.Text);

                SqlDataReader dr = cmd.ExecuteReader();
                cnn.Close();
                Panel1.Visible = false;
                Panel2.Visible = true;
                Label7.Visible = true;
                Label7.Text = "Kaydınız başarıyla gerçekleşmiştir...";



            }
            catch (Exception)
            {
                Label8.Visible = true;
                Label8.Text = "Kaydınız yapılamamıştır.";
            }
        }
    }
}