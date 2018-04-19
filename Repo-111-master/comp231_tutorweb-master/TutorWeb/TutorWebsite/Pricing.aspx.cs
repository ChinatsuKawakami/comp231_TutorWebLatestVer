using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;


public partial class Pricing : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {                   
            //payperBtn.Click += new EventHandler(this.PayperBtn_Click);
            //subBtn.Click += new EventHandler(this.SubBtn_Click);
        }

    protected void onehourBTN_Click(object sender, EventArgs e)
    {
        Response.Redirect("PaymentForPayPerUse.aspx");
    }
    protected void twohourBTN_Click(object sender, EventArgs e)
    {
        Response.Redirect("PaymentForPayPerUse.aspx");
    }
    protected void fourhourBTN_Click(object sender, EventArgs e)
    {
        Response.Redirect("PaymentForPayPerUse.aspx");
    }
    protected void subscriptBTN_Click(object sender, EventArgs e)
    {
        Response.Redirect("PaymentForSubscription.aspx");
    }
 
}

