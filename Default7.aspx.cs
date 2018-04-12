using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default7 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        
            //Get the Input File Name and Extension
            string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
            string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);

            //Build the File Path for the original (input) and the decrypted (output) file
            string input = Server.MapPath("~/Files/") + fileName + fileExtension;
            string output = Server.MapPath("~/Files/") + fileName + "_dec" + fileExtension;

            //Save the Input File, Decrypt it and save the decrypted file in output path.
            FileUpload1.SaveAs(input);
            this.Decrypt(input, output);

            //Download the Decrypted File.
            Response.Clear();
            Response.ContentType = FileUpload1.PostedFile.ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));
            Response.WriteFile(output);
            Response.Flush();

            //Delete the original (input) and the decrypted (output) file.
            File.Delete(input);
            //File.Delete(output);

            Response.End();
       
    }
    private void Decrypt(string inputFilePath, string outputfilePath)
    {
        string EncryptionKey = txtcnmpwd.Text;
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
            {
                using (CryptoStream cs = new CryptoStream(fsInput, encryptor.CreateDecryptor(), CryptoStreamMode.Read))
                {
                    using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
                    {
                        int data;
                        while ((data = cs.ReadByte()) != -1)
                        {
                            fsOutput.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }
    protected void btnsubmit1_Click(object sender, EventArgs e)
    {

    }
}