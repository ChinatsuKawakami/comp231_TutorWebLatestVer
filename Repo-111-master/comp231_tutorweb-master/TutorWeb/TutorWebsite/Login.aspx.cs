using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;
            Integrated Security=True";
            SqlCommand cmd = new SqlCommand("Select * From login where username=@user and Password=@pass", con);
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@user", studentUserName.Text);
            cmd.Parameters.AddWithValue("@pass", studentPassword.Text);
            con.Open();

            if (cmd.ExecuteScalar().ToString() == "1")
            {
                studentUserName.Text = "";
                studentPassword.Text = "";


            }

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
