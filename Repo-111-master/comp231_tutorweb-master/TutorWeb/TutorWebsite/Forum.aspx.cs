﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Forum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    protected void CommentBTN_Click(object sender, EventArgs e)
    {

    }


    protected void AddQA_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forum2.aspx");
    }
} //close class
