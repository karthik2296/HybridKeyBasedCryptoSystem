using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default15 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtuser.Text == "Admin" && txtpwd.Text == "Admin")
        {
            Response.Redirect("Default11.aspx");
        }
        else
        {
            lblErrorMsg.Text = "Invalid Username or Password";
        }
    }
    protected void btnsubmit1_Click(object sender, EventArgs e)
    {
        txtuser.Text = "";
        txtpwd.Text = "";

    }
}