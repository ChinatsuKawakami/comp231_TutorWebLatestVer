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

public partial class Findtutor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void tutorDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str;
        str = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString();
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select tutorimage from tutor where firstname='"+tutorDDL.SelectedValue+"'",con);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            while(dr.Read())
            {
                byte[] imgd = (byte[])dr["tutorImage"];
                string image = Convert.ToBase64String(imgd, 0, imgd.Length);
                //be careful for image style (jpg,png etc)
                Image1.ImageUrl = "data:Image/jpg;base64," + image;


             //   Image1.ImageUrl = dr[0].ToString();
                //img1.ImageUrl =(byte[])dr[0];

                /* byte[] imagedata = (byte[])dr[0];*/
                //string img = Convert.ToBase64String(imagedata, 0, imagedata.Length);
                //Image1.ImageUrl = "data:image/jpg;base64"+dr[0];

                //using (MemoryStream memStream = new MemoryStream(imagedata))
                //{
                //   // memStream.Write(imagedata, 0, imagedata.Length);
                //    System.Drawing.Image img = System.Drawing.Image.FromStream(memStream);
                //    Image1.ImageUrl = img.ToString();
                //}

            }
        }
    }



    protected void GridViewTutors_SelectedIndexChanged(object sender, EventArgs e)
    {

        Response.Redirect("~/TutorWebsite/BookSession.aspx");
    }
}