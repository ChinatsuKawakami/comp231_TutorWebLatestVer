using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Data;


    public partial class SuncessPayment : System.Web.UI.Page
    {
    SqlCommand cmd = new SqlCommand();
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void backtomenu_Click(object sender, EventArgs e)
        {
        cmd = new SqlCommand("select subscriptionType from Payment Where UserId=" + Session["Userid"],con1);
        int type = (int)cmd.ExecuteScalar();
        if (type == 0)
        {
            Response.Redirect("~/AccountPayperUser.aspx");
        }else if (type == 1)
        {
            Response.Redirect("~/AccountSubscription.aspx");
        }
        }
    }
