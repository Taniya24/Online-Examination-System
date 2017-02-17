using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_Question : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Ins_question",con);

        cmd.Parameters.AddWithValue("@cid",DropDownList1.SelectedValue );
        cmd.Parameters.AddWithValue("@question", txtquestion.Text);
        cmd.Parameters.AddWithValue("@option1", TextBox2.Text);
        cmd.Parameters.AddWithValue("@option2", TextBox3.Text);
        cmd.Parameters.AddWithValue("@option3", TextBox4.Text);
        cmd.Parameters.AddWithValue("@option4", TextBox5.Text);
        cmd.Parameters.AddWithValue("@answer", TextBox6.Text);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox2.Text = "";
    }
}