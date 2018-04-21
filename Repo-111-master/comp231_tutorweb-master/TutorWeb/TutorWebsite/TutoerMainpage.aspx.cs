using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;


public partial class TutoerMainpage : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
        {

          

        }
        
       protected void ScheduleBTN_Click(object sender, EventArgs e)
       {
        Response.Redirect("~/TutorSchedule.aspx");
       }
}
