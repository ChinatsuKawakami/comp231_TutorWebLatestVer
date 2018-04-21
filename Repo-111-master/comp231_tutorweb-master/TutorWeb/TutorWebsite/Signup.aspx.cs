using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;



public partial class Signup : System.Web.UI.Page
{
    SqlCommand com = new SqlCommand();
    SqlConnection con = new SqlConnection();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChangepw1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
            con.Open();
            string query = "INSERT INTO Users(UserName,FirstName,LastName,PhoneNumber,Email,Address,PostalCode,Password)values('" + usernameTxtBox.Text +"','"+ fNameTxtBox.Text+ "','" + lNameTxtBox.Text+ "','" + phoneTxtBox.Text+ "','" + emailTxtBox.Text+ "','" + addressTxtBox.Text+ "','" + PostalTxtBox.Text+ "','" + passwordTxtBox.Text+"')";
            SqlCommand com = new SqlCommand(query, con);
            //SqlCommand com = new SqlCommand("INSERT INTO Users(UserName,FirstName,LastName,PhoneNumber,Email,Address,PostalCode,Password)values(@FirstName,@LastName,@PhoneNumber,@Email,@Address,@PostalCode,@Password",con);
            //com.Parameters.AddWithValue("@UserName", usernameTxtBox.Text.Trim());
            //com.Parameters.AddWithValue("@FirstName", fNameTxtBox.Text.Trim());
            //com.Parameters.AddWithValue("@LastName", lNameTxtBox.Text.Trim());
            //com.Parameters.AddWithValue("@PhoneNumber", phoneTxtBox.Text.Trim());
            //com.Parameters.AddWithValue("@Email", emailTxtBox.Text.Trim());
            //com.Parameters.AddWithValue("@Address", addressTxtBox.Text.Trim());
            //com.Parameters.AddWithValue("@PostalCode", PostalTxtBox.Text.Trim());
            //com.Parameters.AddWithValue("@Password", passwordTxtBox.Text.Trim());

            com.ExecuteNonQuery();


  
          
        }
        catch(Exception ex)
        {
            Console.Write(ex);
        }
        finally
        {
            Response.Redirect("~/TutorWebsite/Pricing.aspx");
            con.Close();
        }
       // Response.Redirect("BookingSession.aspx");
        // string ins = "Insert into [Users](FirstName, LastName, PhoneNumber, Email, Password values('" + fNameTxtBox.Text+"','"+lNameTxtBox.Text+ "','"+phoneTxtBox.Text+
        //   "','" + emailTxtBox.Text+ "','"+ passwordTxtBox.Text+"')";




    }
}