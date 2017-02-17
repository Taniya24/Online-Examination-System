using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Exam_Exam : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    static string ans;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int flag;

            flag = (int)Session["flag"];

            flag++;

            Session["flag"] = flag;

            lblSno.Text = Session["flag"].ToString();

            if (!ScriptManager1.IsInAsyncPostBack)
            {
                Session["timeout"] = DateTime.Now.AddMinutes(30).ToString();
            }
            if (!IsPostBack)
            {
                fetch();
            }
        }

    }    
    protected void btnNext1_Click(object sender, EventArgs e)
    {
        int flag = (int)Session["flag"];

        if (RadioButtonA.Checked == true)
        {
            ans = "A";
            submitAnswer(ans);
            RadioButtonA.Checked = false;
        }
        if (RadioButtonB.Checked == true)
        {
            ans = "B";
            submitAnswer(ans);
            RadioButtonB.Checked = false;
        }
        if (RadioButtonC.Checked == true)
        {
            ans = "C";
            submitAnswer(ans);
            RadioButtonC.Checked = false;
        }
        if (RadioButtonD.Checked == true)
        {
            ans = "D";
            submitAnswer(ans);
            RadioButtonD.Checked = false;
        }
        if (flag < 31)
        {

            fetch();
            flag++;
            Session["flag"] = flag;
            lblSno.Text = Session["flag"].ToString();
        }
        if (flag >= 31)
        {
            flag = 1;
            Response.Redirect("~/Exam/Result.aspx");
        }


    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
        {
            lbltimer.Text = string.Format("Time Left: 00:{0}:{1}", ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString(), ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Seconds).ToString());

        }
        else
        {
            Timer1.Enabled = true;
            Response.Redirect("Result.aspx");

        }

    }
    public void fetch()
    {
        con.Open();
        cmd = new SqlCommand("Pregistration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@flag", 6);
        cmd.Parameters.AddWithValue("@Course_Id", Session["courseid"].ToString());
        dt = new DataTable();
        da.Fill(dt);
        Session["qno"] = dt.Rows[0].ItemArray[0].ToString();
        lblQuestion.Text = dt.Rows[0].ItemArray[2].ToString();
        RadioButtonA.Text = dt.Rows[0].ItemArray[3].ToString();
        RadioButtonB.Text = dt.Rows[0].ItemArray[4].ToString();
        RadioButtonC.Text = dt.Rows[0].ItemArray[5].ToString();
        RadioButtonD.Text = dt.Rows[0].ItemArray[6].ToString();// int course_id = seesion["courseid"].Tostring();
    }
    public void submitAnswer(string Answer)
    {
        con.Open();
        cmd = new SqlCommand("Pregistration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@flag", 7);
        cmd.Parameters.AddWithValue("@Question_No", Session["qno"].ToString());
        cmd.Parameters.AddWithValue("@S_Id", Session["sid"].ToString());
        cmd.Parameters.AddWithValue("@Answer", Answer);
        cmd.ExecuteNonQuery();
        con.Close();
    }


}