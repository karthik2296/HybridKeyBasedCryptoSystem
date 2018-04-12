using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default8 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["uid"].ToString();
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
    }
    private void BindGrid()
    {
        string s = "No";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT request.sid, request.rid, request.fid, request.fname, cloud.des, request.status, tblkey.key1 FROM cloud CROSS JOIN tblkey CROSS JOIN request where request.rid='" + Label1.Text + "' AND request.status='" + s + "'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string k = GridView1.SelectedRow.Cells[5].Text;
        string u = GridView1.SelectedRow.Cells[1].Text;
        string f = GridView1.SelectedRow.Cells[2].Text;
        string s="Yes";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("update request SET status='"+s+"', key1='"+k+"' where sid='"+u+"' AND fid='"+f+"'",con);
        cmd.ExecuteNonQuery();
        con.Close();
        string message = "Public Key Send.";
        string url = "Default8.aspx";
        string script = "window.onload = function(){ alert('";
        script += message;
        script += "');";
        script += "window.location = '";
        script += url;
        script += "'; }";
        ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }
}