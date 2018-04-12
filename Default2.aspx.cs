using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label3.Text = "";
        Label2.Text = Session["uid"].ToString();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str;
        SqlCommand com;
        int count;
        str = "select count(*) from cloud1";
        com = new SqlCommand(str, con);

        count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        TextBox1.Text = "F00" + count;
        con.Close();
    }
    private void Encrypt(string inputFilePath, string outputfilePath)
    {
        string EncryptionKey = Label3.Text;
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
            {
                using (CryptoStream cs = new CryptoStream(fsOutput, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
                    {
                        int data;
                        while ((data = fsInput.ReadByte()) != -1)
                        {
                            cs.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string allowedChars = "";
        allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";
        allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        allowedChars += "1,2,3,4,5,6,7,8,9,0";
        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);
        string passwordString = "";
        string temp = "";
        Random rand = new Random();
        for (int i = 0; i <6; i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            passwordString += temp;
        }
    Label3.Text= passwordString;
    string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
    string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);
 
    //Build the File Path for the original (input) and the encrypted (output) file.
    string input = Server.MapPath("~/Files/") + fileName + fileExtension;
    string output = Server.MapPath("~/Files/") + fileName + "_enc" + fileExtension;
 
    //Save the Input File, Encrypt it and save the encrypted file in output path.
    FileUpload1.SaveAs(input);
    this.Encrypt(input, output);
 
    //Download the Encrypted File.
    Response.ContentType = FileUpload1.PostedFile.ContentType;
    Response.Clear();
    Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));
    Response.WriteFile(output);
    Response.Flush();
    SqlConnection con = new SqlConnection(constr);
    con.Open();
    SqlCommand cmd = new SqlCommand("insert into tblkey values('"+TextBox1.Text+"','"+fileName+"','"+Label3.Text+"')",con);
    cmd.ExecuteNonQuery();
    con.Close();

     //Delete the original (input) and the encrypted (output) file.
    File.Delete(input);
    //File.Delete(output);
    Session["fid"] = TextBox1.Text;
    Response.End();
    Response.Redirect("Default4.aspx");
       
    }
    protected void btnsubmit1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default4.aspx");
    }
}