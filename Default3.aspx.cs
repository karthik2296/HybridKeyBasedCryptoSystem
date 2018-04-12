using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Management;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtuser.Text == "Admin" && txtpwd.Text == "Admin")
        {
            Response.Redirect("Default8.aspx");
        }
        else
        {
            string s = "Inactive";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from newuser where UId='" + txtuser.Text + "' AND Password='" + txtpwd.Text + "' AND status!='"+s+"'", con);
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
                Session["uid"] = txtuser.Text;
                string message = "Pls Update/Waiting for Your SDI";
                string url = "Default20.aspx";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += url;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
            }   
        }

    }
    protected void btnsubmit1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default9.aspx");
    }
}