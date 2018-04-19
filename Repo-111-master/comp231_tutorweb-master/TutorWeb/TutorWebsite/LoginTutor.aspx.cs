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


    public partial class LoginTutor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
    protected void tutorlogin_Click(object sender, EventArgs e)
    {
        try
        {

            //  Login login1 = (Login)para1.FindControl("Login1");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
            con.Open();
            string query = "Select count(*) From Tutor where tutor_loginname ='" + tutorUserName.Text + "'and password='" + tutorPassword.Text + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            int output = (int)cmd.ExecuteScalar();

            if (output == 1)
            {
                Session["tutor_loginname"] = tutorUserName.Text;
                //Session["password"] = Login1.Password;

                Response.Redirect("~/TutorWebsite/TutoerMainpage.aspx");
            }
            else if (output == 0)
            {
                Response.Write("Login Failed");
            }

            con.Close();
        }
        catch
        {
            Response.Write("Login Failed");
        }
    }
}
