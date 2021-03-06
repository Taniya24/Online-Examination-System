﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_Roll : System.Web.UI.Page
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
            cmd = new SqlCommand("Proll", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@flag", 4);
            cmd.ExecuteReader();
            cmd.Connection.Close();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            ddlselect.DataTextField = "Roll";
            ddlselect.DataValueField = "Roll_Id";
            ddlselect.DataSource = dt;
            ddlselect.DataBind();
            ddlselect.Items.Insert(0, "SELECT");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
         con.Open();
        cmd=new SqlCommand("Proll",con);
        cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag",1);
        cmd.Parameters.AddWithValue("@Roll", txtroll.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Data Has Been Inserted");

    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Proll", con);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@flag", 4);
        dt = new DataTable();
        da.Fill(dt);
        grdroll.DataSource = dt;
        grdroll.DataBind();
        con.Close();
    }
    protected void update_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Proll", con);
        da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@flag", 2);
        cmd.Parameters.AddWithValue("Roll", txtnewname.Text);
        cmd.Parameters.AddWithValue("@Roll_Id", ddlselect.SelectedValue);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Data Has Been Inserted");
        txtnewname.Text = "";
        //ddlselect.Text="SELETE";


    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Proll", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@flag", 3);
        cmd.Parameters.AddWithValue("@Roll_Id", ddlselect.SelectedValue);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Data Has Been Deleted");
    }
}