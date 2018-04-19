using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TutorWeb.TutorWebsite
{
    public partial class SuncessPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void backtomenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AccountPayperUser.aspx");
        }
    }
}