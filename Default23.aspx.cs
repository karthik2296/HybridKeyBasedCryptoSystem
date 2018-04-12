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

public partial class Default17 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
        Label1.Text = Session["uid"].ToString();
        ManagementObjectSearcher USB = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive WHERE InterfaceType='USB'");
        ManagementObjectCollection USBinfo = USB.Get();
        string info = "";
        foreach (ManagementObject MO in USBinfo)
        {
            info = (string)MO["SerialNumber"];
            Label2.Text = info;
        }
    }
    private void BindGrid()
    {
        //string s = "Inactive";

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM newuser where Uid='" + Label1.Text + "'", con))
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
        if (Label1.Text != null)
        {
            string u = GridView1.SelectedRow.Cells[1].Text;
            string s = GridView1.SelectedRow.Cells[2].Text;
            string aa = GridView1.SelectedRow.Cells[3].Text;
            string bb = GridView1.SelectedRow.Cells[4].Text;
            string cc = GridView1.SelectedRow.Cells[5].Text;
            string st = "";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            //SqlCommand cmd = new SqlCommand("update newuser SET SDI1='" + Label2.Text + "' where Uid='" + u + "'", con);
            SqlCommand cmd = new SqlCommand("insert into MissingSDI values('" + u + "','" + s + "','" + aa + "','" + bb + "','" + cc + "','" + st + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default23.aspx");
    }
}