using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
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
        string a = "Active";

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM cloud1 where status='"+a+"'", con))
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
        string d = "No";
        string f = "null";
        string a = GridView1.SelectedRow.Cells[1].Text;
        string b = GridView1.SelectedRow.Cells[2].Text;
        string c = GridView1.SelectedRow.Cells[3].Text;
        string s = "Inactive";
        SqlConnection con1 = new SqlConnection(constr);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("select * from newuser where UId='"+Label1.Text+"' AND status='"+s+"'",con1);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            con1.Close();
            SqlConnection con2 = new SqlConnection(constr);
            con2.Open();
            SqlCommand cmd2 = new SqlCommand("insert into attack values('" + Label1.Text + "','" + a + "','" + b + "','" + c + "','"+d+"')", con2);
            cmd2.ExecuteNonQuery();
            con2.Close();
        }
        else
        {
        con1.Close();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into request values('"+Label1.Text+"','"+a+"','"+b+"','"+c+"','"+d+"','"+f+"')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        }
       
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }
    
}