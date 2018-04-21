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
                string checkquery = "select subscriptionuser from payment join users on Users.userId = Payment.userId where Users.username ="+studentUserName.Text;
                SqlCommand cmd1 = new SqlCommand(checkquery, con);
               cmd1.ExecuteNonQuery();
                int sub = (int)cmd1.ExecuteScalar();
                if (sub == 0)
                {
                    Response.Redirect("~/TutorWebsite/AccountSubscription.aspx");
                }
                else if(sub == 1)
                {
                    Response.Redirect("~/TutorWebsite/AccountPayperUser.aspx");
                }
                
            }
            else if(output==0)
            {
                Response.Write("Login Failed");
            }
            con.Close();
            
        }
        catch(Exception ex)
        {
            studentPassword.Text ="";
            Response.Write(ex.Message);
        }
    }
   
  
}

