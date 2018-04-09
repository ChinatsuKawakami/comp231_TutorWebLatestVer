using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChangepw1_Click(object sender, EventArgs e)
    {
        string ins = "Insert into [User](FirstName, LastName, PhoneNumber, Email, Password values('" + fNameTxtBox.Text+"','"+lNameTxtBox.Text+ "','"+phoneTxtBox.Text+
                                                                                                         "','" + emailTxtBox.Text+ "','"+ passwordTxtBox.Text+"')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
}