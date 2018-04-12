using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management;
using System.Data.SqlClient;
using System.Data;

public partial class Default19 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
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
        string s = "Inactive";

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM newuser where status='" + s + "'", con))
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
        string u = GridView1.SelectedRow.Cells[1].Text;
        string st = GridView1.SelectedRow.Cells[5].Text;
        //string s = "Inactive";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("update newuser SET status='" + st + "' where Uid='" + u + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }
}