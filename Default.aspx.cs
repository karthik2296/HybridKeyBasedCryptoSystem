using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str;
        SqlCommand com;
        int count;
        str = "select count(*) from UserData";
        com = new SqlCommand(str, con);

        count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        txtuser.Text = "D00" + count;
        con.Close();
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtpwd.Text == txtcnmpwd.Text)
        {
            string UserName = txtuser.Text;
            string Password = txtpwd.Text;
            string ConfirmPassword = txtcnmpwd.Text;
            string FirstName = txtfname.Text;
            string LastName = txtlname.Text;
            string Email = txtEmail.Text;
            string Phoneno = txtphone.Text;
            string Location = txtlocation.Text;
            //string Created_By = txtuser.Text;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into UserData values(@UserName,@Password,@FirstName,@LastName,@Email,@PhoneNo,@Location)", con);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@PhoneNo", Phoneno);
            cmd.Parameters.AddWithValue("@Location", Location);
            cmd.ExecuteNonQuery();
            con.Close();
            string message = "Sucessfully Registered.";
            string url = "Default14.aspx";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += url;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
            //Response.Redirect("Default3.aspx");

        }
        else
        {
            lblErrorMsg.Text = "Password Mismath";
        }
        
    }
    protected void btnsubmit1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default14.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default14.aspx");

    }
}