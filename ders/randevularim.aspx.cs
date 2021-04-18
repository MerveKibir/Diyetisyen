using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class randevularim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label2.Visible = false;

    }


    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevuu.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("randevuiptal.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Label3.Text = TextBox1.Text;
        if (Label3.Text == "")
        {
            Label2.Visible = true;
        }
    }
}