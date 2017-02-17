using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Exam_Result : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sid"] != null)
        {
            con.Open();
            cmd = new SqlCommand("Pregistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@flag", 8);
            cmd.Parameters.AddWithValue("@S_Id", Session["sid"].ToString());
            dt = new DataTable();
            da.Fill(dt);
            int percentage = (dt.Rows.Count * 100) / 30;
            Label1.Text = dt.Rows.Count.ToString() + "      " + "Answer are correct out of 30";
            Label2.Text = "You have got  " + percentage.ToString() + "%";
        }
        if (Session["timeout"] == null)
        {
            con.Open();
            cmd = new SqlCommand("Pregistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@flag", 8);
            dt = new DataTable();
            da.Fill(dt);
            int percentage = (dt.Rows.Count * 100) / 30;
            Label1.Text = dt.Rows.Count.ToString() + "      " + "Answer are correct out of 30";
            Label2.Text = "You have got  " + percentage.ToString() + "%";
        }

    }

}