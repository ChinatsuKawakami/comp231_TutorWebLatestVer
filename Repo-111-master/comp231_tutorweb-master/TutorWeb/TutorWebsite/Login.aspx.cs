using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Loginbtn_Click(object sender, EventArgs e)
    {
        if (studentUserName.Text == String.Empty || studentPassword.Text == String.Empty)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You have entered empty field.');</script>");

        }
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
           // con.ConnectionString = "Data Source =.; Initial Catalog = comp231; Integrated Security = SSPI;";
            con.Open();
            string query = "Select count(*) From Users where username='" + studentUserName.Text + "'and password='" + studentPassword.Text + "'";

            SqlCommand cmd = new SqlCommand(query,con);
            int output =(int)cmd.ExecuteScalar();

            if(output == 1)
            {
                Session["username"] = studentUserName.Text;

                //later we should check if the user is subscription or payper use
                Response.Redirect("~/TutorWebsite/BookSession.aspx");
            }
            else if(output==0)
            {
                Response.Write("Login Failed");
            }

            //cmd.Parameters.Clear();
            //cmd.Parameters.AddWithValue("@username", studentUserName.Text);
            //cmd.Parameters.AddWithValue("@password", studentPassword.Text);
            

            //if (cmd.ExecuteScalar().ToString() == "1")
            //{
            //    studentUserName.Text = "";
            //    studentPassword.Text = "";


            //}
            
            
            con.Close();
            
        }
        catch
        {
            studentPassword.Text ="";
        }
    }
   
  
}


    //protected void UserLogin_Authenticate(object sender, AuthenticateEventArgs e)
    //{

    //    string check = "select count(*) from [User] where Email = '" + tutorLogin.UserName + "' and Password = '" + tutorLogin.Password + "'";
    //    SqlCommand com = new SqlCommand(check, con);
    //    con.Open();
    //    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
    //    con.Close();
    //    if (temp == 1)
    //    {

    //        Response.Redirect("AccountPayperUser.aspx");
    //        //Response.Redirect("AccountSubscription.aspx");
    //    }
    //    else
    //    {

    //    }
    //}

    //protected void Signupid_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Signup.aspx");
    //}
