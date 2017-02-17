using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;


public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //string sid = dt.Rows[0].ItemArray[0].ToString();
        var fromAddress = "b.singla89@gmail.com";
        var toAddress = "b.singla89@gmail.com";
        const string fromPassword = "80701219012";
        string subject = "User Feedback.";
        string body = "Dear";

        body += "Name: " + txtname.Text + "\n";
        body += "Last Name: " + txtlastname.Text + "\n";
        body += "Mobile NO" + txtmobileno.Text + "\n";
        body += "Email Id:  " + txtemailid.Text + "\n";
        body += "Comment: " + txtcomment.Text + "\n";
        
        body += "";
        body += "";
        //     body += 
        //  body += 
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

}
    
      



    
