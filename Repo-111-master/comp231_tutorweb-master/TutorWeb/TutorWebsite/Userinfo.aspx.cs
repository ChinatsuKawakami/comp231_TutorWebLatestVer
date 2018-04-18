using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Userinfo : System.Web.UI.Page
    {
       // fields for change photo icon/profile and insert it into database
        public int ImageID { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }

   
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

    protected void UploadImg_Click(object sender, EventArgs e)
    {
        //string str;
        //str = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString();
        //SqlConnection con = new SqlConnection(str);
        
        //if (uploadproImg.HasFile)
        //{
        //    try
        //    {
        //        string filename = uploadproImg.FileName;
        //        // string filename = Path.GetFileName(fileupload.FileName);
        //        uploadproImg.SaveAs(Server.MapPath("~/") + filename);
        //        string path = "~//uploads//" + filename.ToString();
        //        con.Open();
        //        SqlCommand com = new SqlCommand("Update Users SET userImage = '" + path +"WHERE "+ "')", con);
        //        com.ExecuteNonQuery();
        //        con.Close();
              

        //    }
        //    catch (Exception ex)
        //    {
        //        //statusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;

        //    }
        //}
        // userImg.ImageUrl = 

        //create photoimageController class and connect with this class 
        //example :https://www.youtube.com/watch?v=5L5W-AE-sEs 

        //After changing profile photo, user's icon in header should be changed(user icon and this profile photo should be same) automatically 
    }



    protected void ChangepassBtn_Click(object sender, EventArgs e)
    {
        //change password button to take user to changepassword.aspx
        Response.Redirect("ChangePassword.aspx");
    }

    protected void PaymentInfo_Click(object sender, EventArgs e)
    {

        //user should be taken to pricing page or payment page??
        Response.Redirect("Pricing.aspx");
    }

    protected void UpdateBtn_Click(object sender, EventArgs e)
    {
        // textbox'value for cellphone, address etc are current userinfo(current phone, address) 
        // Firstname , Lastname should be read-only
     

    }
}
