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

public partial class Default9 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    string sdi=null;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str;
        SqlCommand com;
        int count;
        str = "select count(*) from newuser";
        com = new SqlCommand(str, con);

        count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        txtuser.Text = "U00" + count;
        con.Close();
        ManagementObjectSearcher USB = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive WHERE InterfaceType='USB'");
        ManagementObjectCollection USBinfo = USB.Get();
        string info = "";
        foreach (ManagementObject MO in USBinfo)
        {
            info = (string)MO["SerialNumber"];
            sdi = info;
        }
        //SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from newuser where SDI1='" + sdi + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string message = "This Already Registered!";
            string url = "Default9.aspx";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += url;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
        }
        con.Close();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        ManagementObjectSearcher USB = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive WHERE InterfaceType='USB'");
        ManagementObjectCollection USBinfo = USB.Get();
        string info = "";
        foreach (ManagementObject MO in USBinfo)
        {
            info = (string)MO["SerialNumber"];
            sdi = info;
        }
        if (txtpwd.Text == txtcnmpwd.Text)
        {
            if (sdi != null)
            {

                string UserName = txtuser.Text;
                string Password = txtpwd.Text;
                string ConfirmPassword = txtcnmpwd.Text;
                string FirstName = txtfname.Text;
                string LastName = txtlname.Text;
                string Email = txtEmail.Text;
                string Phoneno = txtphone.Text;
                string Location = txtlocation.Text;
                string status = "Inactive";
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into newuser values(@UserName,@Password,@FirstName,@LastName,@Email,@PhoneNo,@Location,@skey,@status,@SDI1)", con);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@FirstName", FirstName);
                cmd.Parameters.AddWithValue("@LastName", LastName);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@PhoneNo", Phoneno);
                cmd.Parameters.AddWithValue("@Location", Location);
                cmd.Parameters.AddWithValue("@skey", Label1.Text);
                cmd.Parameters.AddWithValue("@status", status);
                cmd.Parameters.AddWithValue("@SDI1", sdi);
                cmd.ExecuteNonQuery();
                con.Close();
                string message = "Sucessfully Registered.";
                string url = "Default3.aspx";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += url;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
            }
            else
            {
                string message = "Plese Insert SDI.";
                string url = "Default9.aspx";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += url;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
            }

        }
        else
        {
            lblErrorMsg.Text = "Password Mismath";
        }
    }

    protected void btnsubmit1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");
    }
}