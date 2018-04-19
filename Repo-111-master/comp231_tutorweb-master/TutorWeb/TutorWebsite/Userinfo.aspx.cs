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
    SqlCommand cmd = new SqlCommand();


    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
    SqlDataAdapter ada = new SqlDataAdapter();
    DataSet ds = new DataSet();

    // fields for change photo icon/profile and insert it into database
    public int ImageID { get; set; }
    public string Title { get; set; }
    public string ImagePath { get; set; }


    protected void Page_Load(object sender, EventArgs e)
    {
        con1.Open();
        cmd = new SqlCommand("Select userimage from users where usernane =" + Session["username"] + "')", con1);
        ada.SelectCommand = cmd;
        ada.Fill(ds);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                byte[] imgd = (byte[])dr["userImage"];
                string image = Convert.ToBase64String(imgd, 0, imgd.Length);
                //be careful for image style (jpg,png etc)
                userImg.ImageUrl = "data:Image/jpg;base64," + image;
            }
        }


        cmd.ExecuteNonQuery();
        con1.Close();

        if (Session["tutor_loginname"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
          
            con1.Open();
        }
    }

    protected void UploadImg_Click(object sender, EventArgs e)
    {

        if (uploadproImg.HasFile)
        {
            try
            {
                string filename = uploadproImg.FileName;
                // string filename = Path.GetFileName(fileupload.FileName);
                uploadproImg.SaveAs(Server.MapPath("~/") + filename);
                string path = "~//uploads//" + filename.ToString();

                // string filename = Path.GetFileName(fileupload.FileName);
                uploadproImg.SaveAs(Server.MapPath("~/") + filename);

                //cmd = new SqlCommand("Update Users SET userImage = '" + path + "WHERE tutor_loginname='" + Session["username"] + "')", con1);
                //ada.SelectCommand = cmd;
                //ada.Fill(ds);
                //SqlDataReader dr = cmd.ExecuteReader();
                //if (dr.HasRows)
                //{
                //    while (dr.Read())
                //    {
                        byte[] imgd = (byte[])dr["userImage"];
                        string image = Convert.ToBase64String(imgd, 0, imgd.Length);
                        userImg.ImageUrl = "data:Image/jpg;base64," + image;
                //    }
                //}
                //con1.Open();



                //cmd.ExecuteNonQuery();
                //con1.Close();


            //}
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                //statusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;

            }
        }
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
        ChangeData();
        Showdata();
        // textbox'value for cellphone, address etc are current userinfo(current phone, address) 
        // Firstname , Lastname should be read-only


    }

    //change firstname lastname email address phone
    public void ChangeData()
    {
        con1.Open();
        cmd = new SqlCommand("Update Users SET firstname ="+ fnameTxtBox.Text +"','"+"lastname="+lnameTxtBox.Text+"','"+ "email="+emailTxtBox.Text +"','"+"address="+addressTxtBox.Text+"','"+"postalcode="+postalTxtBox.Text+"','"+"PhoneNumber="+phoneTxtBox.Text+"')", con1);
        cmd.ExecuteNonQuery();
        con1.Close();

    }

    public void Showdata()
    {

        if (uploadproImg.HasFile)
        {
            try
            {
                string filename = uploadproImg.FileName;
                // string filename = Path.GetFileName(fileupload.FileName);
                uploadproImg.SaveAs(Server.MapPath("~/") + filename);
                string path = "~//uploads//" + filename.ToString();

                // string filename = Path.GetFileName(fileupload.FileName);
                uploadproImg.SaveAs(Server.MapPath("~/") + filename);

                cmd = new SqlCommand("Update Users SET userImage = '" + path + "WHERE tutor_loginname='" + Session["username"] + "')", con1);
        
                ada.SelectCommand = cmd;
                ada.Fill(ds);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        byte[] imgd = (byte[])dr["userImage"];
                        string image = Convert.ToBase64String(imgd, 0, imgd.Length);
                        userImg.ImageUrl = "data:Image/jpg;base64," + image;
                    }
                }
                con1.Open();
                cmd.ExecuteNonQuery();
                con1.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                //statusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;

            }
        }
    }
}

