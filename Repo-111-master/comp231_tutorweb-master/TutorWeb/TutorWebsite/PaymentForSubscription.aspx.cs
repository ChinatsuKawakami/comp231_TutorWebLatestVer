﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Data;

public partial class PaymentForSubscription : System.Web.UI.Page
    {

    int userid;
    protected void Page_Load(object sender, EventArgs e)
        {
         
        }
    protected void paysubbtn_BTN(object sender, EventArgs e)
    {
        try
        {



            SqlCommand cmd = new SqlCommand();
            SqlCommand cmduserid = new SqlCommand();
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
            DateTime date = DateTime.ParseExact(expiryMonthList.Text, "MM/yyyy", null);
            DateTime todaydate = DateTime.ParseExact(DateTime.Now.Date.ToString(), "MM/dd/yyyy", null);
            SqlDataAdapter ada = new SqlDataAdapter();
            cmduserid = new SqlCommand("Select userid from users where username =" + Session["username"], con1);
            DataSet ds = new DataSet();
            ada.SelectCommand = cmd;
            ada.Fill(ds);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    userid = Convert.ToInt32(dr["UserId"]);
                }
            }
            cmd = new SqlCommand("Insert Into Payment(Price, SubscriptionUser,CardNumber,ExpiryDate,PaymentDate)Values(Price =" + 144.00 + "','" + "SubscriptionUser=" + 1 + "','" + "CardNumber=" + Convert.ToInt32(cardnumtxtbox.Text) + "','" + "ExpiryDate=" + date + "','" + "PaymentDate=" + todaydate + "where userid =" + userid + "')", con1);
            cmd.ExecuteNonQuery();
            con1.Close();
            Response.Redirect("~/SuncessPayment.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pricing.aspx");
    }
}
