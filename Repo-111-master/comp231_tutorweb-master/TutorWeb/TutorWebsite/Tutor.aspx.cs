using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class Tutor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("~/TutorWebsite/BookSession.aspx");
    }

    //protected void ContactBTN_Click(object sender, EventArgs e)
    //{
    //    string str;
    //    str = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString();
    //    SqlConnection con = new SqlConnection(str);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select image from tutor where firstname='" + tutorDDL.SelectedValue + "'", con);
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    string email ="";
    //    SmtpClient smtpClient = new SmtpClient("mail.MyWebsiteDomainName.com", 25);

    //    smtpClient.Credentials = new System.Net.NetworkCredential("info@MyWebsiteDomainName.com", "myIDPassword");
    //    smtpClient.UseDefaultCredentials = true;
    //    smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
    //    smtpClient.EnableSsl = true;
    //    MailMessage mail = new MailMessage();

    //    //Setting From , To and CC
    //    mail.From = new MailAddress("info@MyWebsiteDomainName", "MyWeb Site");
    //    mail.To.Add(new MailAddress("info@MyWebsiteDomainName"));
    //    mail.CC.Add(new MailAddress("MyEmailID@gmail.com"));

    //    smtpClient.Send(mail);
    //}



    protected void BackBTN_Click(object sender, EventArgs e)
    {

        string str;
        str = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString();
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select Payment.SubscriptionUser from Payment inner join users on Payment.userid = users.userid", con);
        SqlDataReader dr = cmd.ExecuteReader();
        int sub = Convert.ToInt32(dr[0]);

        if (sub == 0)//if the user is user for subscription
        {
            Response.Redirect("~/TutorWebsite/AccountSubscription.aspx");
        }else if(sub==1)//if the user is user for payper use
        {
            Response.Redirect("~/TutorWebsite/AccountPayperUser.aspx");
        }

    }
}  