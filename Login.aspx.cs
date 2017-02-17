using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Pregistration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@flag", 5);
        cmd.Parameters.AddWithValue("@S_Id", txtname.Text);
        cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0].ItemArray[4].ToString() == "1")
            {
                Session["Login"] = dt.Rows[0].ItemArray[1].ToString();
                Session["S_Id"] = dt.Rows[0].ItemArray[0].ToString();
                Session["Email_Id"] = dt.Rows[0].ItemArray[2].ToString();

                Response.Redirect("~/Admin/Home.aspx");
            }

            if (dt.Rows[0].ItemArray[4].ToString() == "2")
            {
                Session["Login"] = dt.Rows[0].ItemArray[1].ToString();
                Session["sid"] = dt.Rows[0].ItemArray[0].ToString();
                Session["email"] = dt.Rows[0].ItemArray[2].ToString();
                Session["Courseid"] = dt.Rows[0].ItemArray[5].ToString();
                Response.Redirect("~/Exam/Instration.aspx");
            }
        }


        else
        {
            Response.Write("Enter Valid Name And Password");
        }
    }
}

   
    
    





public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=Taniya-pg2-2220;Initial Catalog=countrystatecity;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tbcountry", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DropDownList1.DataTextField = "countryName";
        DropDownList1.DataValueField = "countryid";
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        
        SqlCommand cmd = new SqlCommand("insert into tbstae values('"+DropDownList1.SelectedValue+"','" +TextBox2.Text+"')",con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}