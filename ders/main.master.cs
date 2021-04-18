using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class main : System.Web.UI.MasterPage
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        DuyurulariGetir();
        object kullanici = Session["ad"];
        object onay = Session["onayliMi"];

        if(kullanici != null )
        {
            pnlgiris.Visible = false;
            pnlkullanici.Visible = true;
            lblkullaniciadi.Text = kullanici.ToString();
            if(onay == null)
            {
                lblsonuc.Text = "onaylanmamış kullanıcı";
            }
           
        }

        else
        {
            pnlgiris.Visible = true;
            pnlkullanici.Visible = false;
            
        }
    }

    private void DuyurulariGetir()
    {
      

        //string sorgu = "Select * from Duyurular order by Tarih desc";
        
        //SqlCommand cmd = new SqlCommand(sorgu, cnn);
        //cnn.Open();

        //SqlDataReader dr = cmd.ExecuteReader();
        //lstDuyuru.DataSource = dr;
        //lstDuyuru.DataBind();

        //cnn.Close();
    }


    protected void btngiris_Click(object sender, EventArgs e)
    {
    //    string sorgu = "Select * From kayit where eposta = @epostan AND sifre1  = @sifre and adminMi=@admin";
    //    SqlCommand cmd = new SqlCommand(sorgu, cnn);
    //    cmd.Parameters.AddWithValue("@epostan", eposta.Text);
    //    cmd.Parameters.AddWithValue("@sifre", txtsifre.Text);
    //    cmd.Parameters.AddWithValue("@admin", CheckBox1.Checked);

    //    cnn.Open();

    //    SqlDataReader dr = cmd.ExecuteReader();

    //    if (dr.Read())
    //    { 

        
    //    Session.Timeout = 300;
    //    Session.Add("ad", dr["ad"].ToString());

    //        if ( CheckBox1.Checked)
    //        {
    //            Response.Redirect("admin.aspx");
                
    //        }  
    //        Response.Redirect(Request.RawUrl);
    //    }

    //    else
    //    {
    //        lblsonuc.Text = "Kullanici girişi sağlanamadı.";
         
    //    }

    //    cnn.Close();

    }



    protected void btncikis_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}