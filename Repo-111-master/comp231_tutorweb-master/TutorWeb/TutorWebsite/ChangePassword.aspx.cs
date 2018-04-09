using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

    protected void ChangeBtn_Click(object sender, EventArgs e)
    {
        //change password in database 
        //should add validation 
        //old password should be same with current password
        //new password and confirm password should be same 

        //after chaning password, this event takes user to user info page 
        Response.Redirect("Userinfo.aspx");
    }
}
