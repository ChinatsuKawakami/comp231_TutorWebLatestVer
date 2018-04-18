using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace TutorWeb.TutorWebsite
{
    public partial class LoginTutor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            try
            {
               
              //  Login login1 = (Login)para1.FindControl("Login1");
                System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
                con.Open();
                string query = "Select count(*) From Tutor where tutor_loginname = " +   + "'and password='" + Login1.Password + "'";

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(query, con);
                int output = (int)cmd.ExecuteScalar();

                if (output == 1)
                {
                    Session["username"] = studentUserName.Text;

                    //later we should check if the user is subscription or payper use
                    System.Web.
    
                            .Response.Redirect("~/TutorWebsite/BookSession.aspx");
                }
                else if (output == 0)
                {
                    Response.Write("Login Failed");
                }

                con.Close();
            }
            catch
            {

            }
        }

    }
}