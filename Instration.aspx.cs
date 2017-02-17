using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class Instration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            Response.Redirect("");
        }
        if (Session["Login"] != null)
        {
            Label1.Text = "Welcome " + "" + Session["Login"].ToString();
        }
        else
        {
            Response.Redirect("~/");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Exam/Exam.aspx");
    }
}
