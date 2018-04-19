using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;



public partial class ChangePassword : System.Web.UI.Page
    {

    SqlCommand cmd = new SqlCommand();
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
        {



        }

    protected void ChangeBtn_Click(object sender, EventArgs e)
    {
       
        try
        {
            
            con1.Open();
            cmd = new SqlCommand("Update users SET password ="+ newpassTxtBox.Text+"where username="+Session["username"] +"and password="+currentpassTxtBox.Text+"')" ,con1);
            //change password in database 
            //should add validation 
            //old password should be same with current password
            //new password and confirm password should be same 
            cmd.ExecuteNonQuery();
        }catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
        con1.Close();
        //after chaning password, this event takes user to user info page 
        Response.Redirect("Userinfo.aspx");
    }
}
