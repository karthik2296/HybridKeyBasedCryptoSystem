using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default10 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from newuser where UId='" + txtuser.Text + "' AND skey='" + txtpwd.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["uid"] = txtuser.Text;
            //Session["name"] = TextBox2.Text;
            Response.Redirect("Default6.aspx");
        }
        else
        {
            lblErrorMsg.Text = "Login Failed";
        }   
    }
    protected void btnsubmit1_Click(object sender, EventArgs e)
    {
        txtpwd.Text = "";
        txtuser.Text = "";
    }
}