using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtpwd.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
        //SqlConnection con = new SqlConnection(constr);
        //con.Open();
        //string str;
        //SqlCommand com;
        //int count;
        //str = "select count(*) from Files";
        //com = new SqlCommand(str, con);

        //count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        txtuser.Text = Session["fid"].ToString();
        //con.Close();
        Label3.Text = "";
        Label2.Text = Session["uid"].ToString();
    }
    protected void btnsubmit1_Click(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //string allowedChars = "";
        //allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";
        //allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        //allowedChars += "1,2,3,4,5,6,7,8,9,0";
        //char[] sep = { ',' };
        //string[] arr = allowedChars.Split(sep);
        //string passwordString = "";
        //string temp = "";
        //Random rand = new Random();
        //for (int i = 0; i < 6; i++)
        //{
        //    temp = arr[rand.Next(0, arr.Length)];
        //    passwordString += temp;
        //}
        //Label3.Text = passwordString;
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string contentType = FileUpload1.PostedFile.ContentType;
       
        using (Stream fs = FileUpload1.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {
                byte[] bytes = br.ReadBytes((Int32)fs.Length);

                using (SqlConnection con = new SqlConnection(constr))
                {
                   string a = "Active";
                    string query = "insert into cloud1 values (@uid,@fid,@fname,@date1,@des,@ctype,@data,@status)";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@uid", Label2.Text);
                        cmd.Parameters.AddWithValue("@fid", txtuser.Text);
                        cmd.Parameters.AddWithValue("@fname", filename);
                        cmd.Parameters.AddWithValue("@date1", txtpwd.Text);
                        cmd.Parameters.AddWithValue("@des", txtcnmpwd.Text);
                        //cmd.Parameters.AddWithValue("@key1", Label3.Text);
                        //cmd.Parameters.AddWithValue("@holder", a);
                        //cmd.Parameters.AddWithValue("@fname", filename);
                        cmd.Parameters.AddWithValue("@ctype", contentType);
                        cmd.Parameters.AddWithValue("@data", bytes);
                       
                        cmd.Parameters.AddWithValue("@status", a);
                        //cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
                        //cmd.Parameters.AddWithValue("@req", a);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}