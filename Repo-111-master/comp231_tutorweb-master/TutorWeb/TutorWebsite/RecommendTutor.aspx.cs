using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class RecommendTutor : System.Web.UI.Page
    {
        int punctual, teaching, material, positive, helpful,rateave,tutorid;
        string comment = "";
        string name = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }
        protected void qbtn_Click(object sender, EventArgs e)
        {
        punctual = Rating1.CurrentRating;
        teaching = Rating2.CurrentRating;
        material = Rating3.CurrentRating;
        positive = Rating4.CurrentRating;
        helpful = Rating5.CurrentRating;
        comment = qcomment.Text;
        tutorid = Convert.ToInt32(RatingDDL.SelectedValue);
        rateave = (punctual + teaching + material + positive + helpful) / 5;

        string str;
        str = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString();
        SqlConnection con = new SqlConnection(str);
        con.Open();

        SqlCommand ins = new SqlCommand("update Tutor Set Rate="+ rateave+"Where TutorId ="+tutorid);
        ins.ExecuteNonQuery();
        SqlCommand cmd = new SqlCommand("insert into RecommendTutor(Punctuality,TeachingSkill,Material,PositiveAttitude,Help,Comments) values('"+punctual+teaching+"','"+material+ "','" + positive+"','"+helpful+ "','" + comment+"Where TutorId="+tutorid+"')", con);
        cmd.ExecuteNonQuery();



    }




}

