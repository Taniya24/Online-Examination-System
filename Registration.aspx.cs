using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Net.Mail;


public partial class Admin_Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("Pcourse", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", 4);
            cmd.ExecuteReader();
            con.Close();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            ddlcourse.DataTextField = "Course_Name";
            ddlcourse.DataValueField = "Course_Id";
            ddlcourse.DataSource = dt;
            ddlcourse.DataBind();
            ddlcourse.Items.Insert(0, "SELECT");
            
        }
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("Pcountry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", 4);
            cmd.ExecuteReader();
            con.Close();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            ddlcountry.DataTextField = "Country_Name";
            ddlcountry.DataValueField = "Country_Id";
            ddlcountry.DataSource = dt;
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, "SELECT");
           
        }
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("Proll", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", 4);
            cmd.ExecuteReader();
            con.Close();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            ddlroll.DataTextField = "Roll";
            ddlroll.DataValueField = "Roll_Id";
            ddlroll.DataSource = dt;
            ddlroll.DataBind();
            ddlroll.Items.Insert(0, "SELECT");
            
        }
    }
    public void SendUserMail()
    {
        da = new SqlDataAdapter("select S_id from Registration where S_No=(select max (S_No) from Registration)",con);
        dt = new DataTable();
        da.Fill(dt);

        var fromAddress = "b.singla89@gmail.com";
        var toAddress = txtemailid.Text;
        const string fromPassword = "80701219012";
        string subject = "user Registration Confirmation";
        string body = "Dear";
        body += "Name: "+txtname.Text + "\n";
        body += "Your Password Is Genrated by Admin";
        body += "User Sid: " + dt.Rows[0].ItemArray[0].ToString() + "\n";
        body += "Password: " +txtpassword.Text + "\n";
        body += "Father's Name: " +txtfathername.Text + "\n";
        body += "DOB: " +txtdob.Text + "\n";
        body += "Address: " +txtaddress.Text + "\n";
        body += "Gender: " +ddlgender.SelectedItem.Text + "\n";
        body += "Email: " +txtemailid.Text + "\n";
        body += "Country: " +ddlcountry.SelectedItem.Text + "\n";
        body += "";
        body += "";
        body += "";
        body += "";
        body += "";
        body += "Thanks For Registration";
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
            smtp.EnableSsl = true;
            // smtp.UserDefaultCredentials = false;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            // smtp.timeout = 20000;
        }
        // passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }
    public void SendAdminMail()
    {
         var fromAddress = "b.singla89@gmail.com";
         var toAddress = "b.singla89@gmail.com";
         const string fromPassword = "80701219012";
        string subject = "User Registration Confirmation";
        string body = "Dear Admin" +" &nbsp; ";
        body += "Password send Successfully The User";
        body += " User Name: "+txtname.Text + "\n";
        body += "User Sid: " + dt.Rows[0].ItemArray[0].ToString() + "\n";
        body += "Password: " +txtpassword.Text + "\n";
        body += "Father's Name: " +txtfathername.Text + "\n";
        body += "DOB: " +txtdob.Text + "\n";
        body += "Address: " +txtaddress.Text + "\n";
        body += "Gender: " +ddlgender.SelectedItem.Text + "\n";
        body += "Email: " +txtemailid.Text + "\n";
        body += "Country: " +ddlcountry.SelectedItem.Text + "\n";
        body += "";
        body += "";
        body += "";
        body += "";
        body += "";
        body += "&nbsp;&nbsp;&nbsp;&nbsp; Mail by Online Examination service";
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            //smtp.UserDefaultCredentials = false;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            // smtp.Timeout = 20000;
        }
        //Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }


 protected void btnsearch_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Pregistration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@flag", 2);
        cmd.Parameters.AddWithValue("@S_Id", txtstudentid.Text);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            txtname.Text = dt.Rows[0].ItemArray[2].ToString();
            txtlastname.Text = dt.Rows[0].ItemArray[3].ToString();
            txtfathername.Text = dt.Rows[0].ItemArray[4].ToString();
            txtdob.Text = dt.Rows[0].ItemArray[5].ToString();
            txtaddress.Text = dt.Rows[0].ItemArray[6].ToString();
            txtemailid.Text = dt.Rows[0].ItemArray[7].ToString();
            txtpassword.Text = dt.Rows[0].ItemArray[8].ToString();
            ddlgender.SelectedItem.Text = dt.Rows[0].ItemArray[9].ToString();
            ddlcountry.SelectedValue = dt.Rows[0].ItemArray[10].ToString();
            // ddlroll.SelectedItem.Text = dt.Rows[0].ItemArray[11].ToString();
            ddlcourse.SelectedValue = dt.Rows[0].ItemArray[12].ToString();
        }
        else
        {
            Label2.Text = "No Data Found";
        }
    }
    
    protected void btnregister_Click(object sender, EventArgs e)
    {
        if (txtname.Text.Contains("0") || txtname.Text.Contains("1") || txtname.Text.Contains("2") || txtname.Text.Contains("3") || 
            txtname.Text.Contains("4") || txtname.Text.Contains("5") || txtname.Text.Contains("6") || txtname.Text.Contains("7") ||
            txtname.Text.Contains("8") || txtname.Text.Contains("9"))
        {
            Label15.Text = "Numerics are not allowed.";
        }
        else
        {

            con.Open();
            cmd = new SqlCommand("Pregistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", 1);
            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@Last_Name", txtlastname.Text);
            cmd.Parameters.AddWithValue("@Father_Name", txtfathername.Text);
            cmd.Parameters.AddWithValue("@DOB", txtdob.Text);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@Email_Id", txtemailid.Text);
            cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Roll", "2");
            cmd.Parameters.AddWithValue("@Course_Id", ddlcourse.SelectedItem.Value);
            cmd.ExecuteNonQuery();
            con.Close();

            SendUserMail();
            SendAdminMail();
            Label1.Text = "Data has been Inserted";
            txtname.Text = "";
            txtlastname.Text = "";
            txtfathername.Text = "";
            txtdob.Text = "";
            txtaddress.Text = "";
            txtemailid.Text = "";
            txtpassword.Text = "";
            Label15.Text = "";
            ddlgender.SelectedIndex = 0;
            ddlcountry.SelectedIndex = 0;
            ddlroll.SelectedIndex = 0;
            ddlcourse.SelectedIndex = 0;

        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Pregistration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", 3);
        cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
        cmd.Parameters.AddWithValue("@Roll", ddlroll.SelectedValue);
        cmd.Parameters.AddWithValue("@S_Id", txtstudentid.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        SendUserMail();
        SendAdminMail();
        Label1.Text = "Data has been Inserted";
        txtname.Text = "";
        txtlastname.Text = "";
        txtfathername.Text = "";
        txtdob.Text = "";
        txtaddress.Text = "";
        txtemailid.Text = "";
        txtpassword.Text = "";
        ddlgender.SelectedIndex = 0;
        ddlcountry.SelectedIndex = 0;
        ddlroll.SelectedIndex = 0;
        ddlcourse.SelectedIndex = 0;
     
     
    }
}

