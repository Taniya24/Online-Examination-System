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

public partial class Student_Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1950; i <= 2050; i++)
        {
            ddlyear.Items.Add(i.ToString());
        }
        ddlyear.Items.Insert(0, "YEAR");
        for (int i = 1; i <= 31; i++)
        {
            ddlday.Items.Add(i.ToString());
        }
        ddlday.Items.Insert(0, "DAY");
        for (int i = 1; i <= 12; i++)
        {
            ddlmonth.Items.Add(i.ToString());
        }
        ddlmonth.Items.Insert(0, "MONTH");
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("Pcourse", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", 4);
            cmd.ExecuteReader();
            cmd.Connection.Close();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            ddlcourseid.DataTextField = "Course_Name";
            ddlcourseid.DataValueField = "Course_Id";
            ddlcourseid.DataSource = dt;
            ddlcourseid.DataBind();
            ddlcourseid.Items.Insert(0, "SELECT");
            con.Open();
            cmd = new SqlCommand("Pcountry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", 4);
            cmd.ExecuteReader();
            cmd.Connection.Close();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            ddlcountry.DataTextField = "Country_Name";
            ddlcountry.DataValueField = "Country_Id";
            ddlcountry.DataSource = dt;
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, "SELECT");
        }
    }
    public void Sendmailuser()
    {
        con.Open();
        string DOB = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyear.SelectedItem.Text;
        cmd = new SqlCommand("Pregistration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@flag", 9);
        //  cmd.Parameters.AddWithValue("@St_ID", "");
        cmd.ExecuteNonQuery();
        
        
        dt = new DataTable();
        da.Fill(dt);

        string sid = dt.Rows[0].ItemArray[0].ToString();
        var fromAddress = "b.singla89@gmail.com";
        var toAddress = txtemailid.Text;
        const string fromPassword = "80701219012";
        string subject = "User Registeration";
        string body = "Dear";
        
        body += "Name: " + txtname.Text + "\n";
        body += "Last Name: " + txtlastname.Text + "\n";
        body += "Your rerquest  is Successfully send to the Admin";
        body += "User Sid: " + sid + "\n";
        body += "Please wait we will response you shortly";
        body += "";
        body += "";
   //     body += 
      //  body += 
        body += "Thanks For regards";

        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            //  smtp.Timeout = 20000;
        }
        smtp.Send(fromAddress, toAddress, subject, body);
        con.Close();
    }

    public void sendmailadmin()
    {
        con.Open();
        string DOB = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyear.SelectedItem.Text;
        cmd = new SqlCommand("Pregistration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@flag", 9);
        //  cmd.Parameters.AddWithValue("@St_ID", "");
        cmd.ExecuteNonQuery();
        
        dt = new DataTable();
        da.Fill(dt);

        string sid = dt.Rows[0].ItemArray[0].ToString();
        var fromAddress = "b.singla89@gmail.com";
        var toAddress = "b.singla89@gmail.com";
        const string fromPassword = "80701219012";
        string subject = "User Registeration";
        string body = "User Sid: " + sid + "\n";
        body += "Name: " + txtname.Text + "\n";
        body += "Last Name: " + txtlastname.Text + "\n";
        body += "Father's Name: " + txtfathername.Text + "\n";
        body += "DOB: " + DOB + "\n";
        body += "Address: " + txtaddress.Text + "\n";
        body += "Gender: " + rdbgender.SelectedItem.Text + "\n";
        body += "Email: " + txtemailid.Text + "\n";
        body += "Country: " + ddlcountry.SelectedItem.Text + "\n";

        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            //  smtp.Timeout = 20000;
        }
        smtp.Send(fromAddress, toAddress, subject, body);
        con.Close();
    }


    protected void btnregister_Click(object sender, EventArgs e)
    {
        string DOB = ddlday.SelectedItem.Text + "/" + ddlmonth.SelectedItem.Text + "/" + ddlyear.SelectedItem.Text;
        if (txtname.Text.Contains("0") || txtname.Text.Contains("1") || txtname.Text.Contains("2") || txtname.Text.Contains("3") || txtname.Text.Contains("4") || txtname.Text.Contains("5") || txtname.Text.Contains("6") || txtname.Text.Contains("7") || txtname.Text.Contains("8") || txtname.Text.Contains("9") || txtlastname.Text.Contains("0") || txtlastname.Text.Contains("1") || txtlastname.Text.Contains("2") || txtlastname.Text.Contains("3") || txtlastname.Text.Contains("4") || txtlastname.Text.Contains("5") || txtlastname.Text.Contains("6") || txtlastname.Text.Contains("7") || txtlastname.Text.Contains("8") || txtlastname.Text.Contains("9") || txtfathername.Text.Contains("0") || txtfathername.Text.Contains("1") || txtfathername.Text.Contains("2") || txtfathername.Text.Contains("3") || txtfathername.Text.Contains("4") || txtfathername.Text.Contains("5") || txtfathername.Text.Contains("6") || txtfathername.Text.Contains("7") || txtfathername.Text.Contains("8") || txtfathername.Text.Contains("9"))
        {

            Label1.Text = "Numrices are not allowed.";
            Label2.Text = "Numrices are not allowed.";
            Label3.Text = "Numrices are not allowed.";
        
        }
        else
        {
            con.Open();
            cmd = new SqlCommand("Pregistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", 1);
            //  cmd.Parameters.AddWithValue("@St_ID", "");
            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@Last_Name", txtlastname.Text);
            cmd.Parameters.AddWithValue("@Father_Name", txtfathername.Text);
            cmd.Parameters.AddWithValue("@DOB", DOB);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@Email_Id", txtemailid.Text);
            cmd.Parameters.AddWithValue("@Gender", rdbgender.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Roll", "2");
            cmd.Parameters.AddWithValue("@Course_Id", ddlcourseid.SelectedItem.Value);
            cmd.ExecuteNonQuery();
            con.Close();
            sendmailadmin();
            Sendmailuser();
            txtname.Text = "";
            txtlastname.Text = "";
            txtfathername.Text = "";
            DOB = "";
            txtaddress.Text = "";
            txtemailid.Text = "";
            ddlcountry.SelectedIndex = 0;
            ddlcourseid.SelectedIndex = 0;
            Label1.Text = "";
        }
    }

}
