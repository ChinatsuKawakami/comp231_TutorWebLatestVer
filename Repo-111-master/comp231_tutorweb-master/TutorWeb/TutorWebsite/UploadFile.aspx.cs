using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class UploadFile : System.Web.UI.Page
    {

  
    protected void Page_Load(object sender, EventArgs e)
        {

        }

    protected void Submitfile_Click(object sender, EventArgs e)
    {
        if (fileupload.HasFile)
        {
            try
            {
                //    fileupload.PostedFile.SaveAs(Server.MapPath("~/Data/")+fileupload.FileName);

                //    string filename = fileupload.FileName;


                //foreach(string strFile in Directory.GetFiles(Server.MapPath("~/Data")))
                //    {
                //        FileInfo fi = new FileInfo(strFile);
                //        DataTable dt = new DataTable();

                //}

                //update tutorid 

                string str;
                str = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString();
                SqlConnection con = new SqlConnection(str);
                con.Open();
                int tutorid = Convert.ToInt32(uploadDDL.SelectedValue);

                string filename = Path.GetFileName(fileupload.FileName);
                fileupload.SaveAs(Server.MapPath("~/") + filename);
                string path = "~//uploads//" + filename.ToString();
                
                SqlCommand com = new SqlCommand("Insert into Upload(FileName,UrlFile) Values('" + filenameTxtBox.Text + "','" + path + "') Where tutorid ="+tutorid, con);
                com.ExecuteNonQuery();

                //SqlCommand ecom = new SqlCommand("");
                //to send email to tutor
                //SqlCommand ecom = new SqlCommand("SELECT Email FROM Tutor WHERE Tutorid="+tutorid);
                //SqlDataReader dr = ecom.ExecuteReader();
                //string email =(string)dr[0];

                //SmtpClient smtpClient = new SmtpClient(email, 25);

                //smtpClient.Credentials = new System.Net.NetworkCredential("info@MyWebsiteDomainName.com", "myIDPassword");
                //smtpClient.UseDefaultCredentials = true;
                //smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                //smtpClient.EnableSsl = true;
                //MailMessage mail = new MailMessage();

                ////Setting From , To and CC
                //mail.From = new MailAddress("info@MyWebsiteDomainName", "MyWeb Site");
                //mail.To.Add(new MailAddress("info@MyWebsiteDomainName"));
                //mail.CC.Add(new MailAddress("MyEmailID@gmail.com"));

                //smtpClient.Send(mail);

                con.Close();
                statusLabel.Text = "Upload status: File uploaded!";
            }
            catch (Exception ex)
            {
                statusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;

            }
        }
           
        }
    }
