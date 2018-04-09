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


public partial class Pricing : System.Web.UI.Page
    {
    //Button PayperBtn = 
        protected void Page_Load(object sender, EventArgs e)
        {                   
            //payperBtn.Click += new EventHandler(this.PayperBtn_Click);
            //subBtn.Click += new EventHandler(this.SubBtn_Click);
        }

    protected void PayperBtn_Click(Object sender,
                        EventArgs e)
    {
        // When the button is clicked,
        // change the button text, and disable it.

        Response.Redirect("PaymentForPayPerUse.aspx");
         
    }

    protected void SubBtn_Click(Object sender,
                        EventArgs e)
    {
        // When the button is clicked,
        // change the button text, and disable it.

        Response.Redirect("PaymentForSubscription.aspx");

    }
}

