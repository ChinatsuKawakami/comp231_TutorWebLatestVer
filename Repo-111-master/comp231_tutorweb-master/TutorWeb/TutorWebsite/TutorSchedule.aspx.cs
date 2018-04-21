using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Security;
using System.Globalization;

public partial class TutorSchedule : System.Web.UI.Page
{
    CultureInfo provider = CultureInfo.InvariantCulture;
    string[] currentitem=new string[]{ };
    int i;
    bool btn;
    int m;
    int tutorid;
    int g, h;
    string data;
    string[] clist;
    string format = "dd/MM/yyyy HH:mm:ss";
    List<ListItem> selected = new List<ListItem>();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
      
        //if (!IsPostBack)
        //{
        //    CheckBoxList1.SelectedIndex = 1;
        //}
    }


    protected void cal1_SelectionChanged(object sender, EventArgs e)
    {
        daylabel.Text = cal1.SelectedDate.ToString("d")+"<br/>";      
        //cal1.Visible = false;
    }
 
    protected void CheckBoxList1_SelectedIndexChanged(Object sender,EventArgs e)
    {

                //List<ListItem> selected = new List<ListItem>();
                foreach (ListItem item in CheckBoxList1.Items)
                {

                 if (item.Selected)
                  {

                     if (selected.Contains(item))
                      { continue; }
                     else if (!selected.Contains(item))
                     {
                       selected.Add(item);
                      if(!label1.Text.Contains(selected[i].Text))
                      {
                        label1.Text += selected[i] + "<br/>";
                      }
                    
                      i++;
               
                
                      }

                 }

           
                 }
                
        
                



    }
   
    
   


    protected void submitBTN_Click(object sender, EventArgs e)
    {
        try
        {
            string str;
            str = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString();
         
           
            SqlConnection con = new SqlConnection(str);

            con.Open();
            tutorid = Convert.ToInt32(Session["TutorId"]);

            provider = new CultureInfo("fr-FR");
              
           
                for (int g = 0; g < selected.Count;g++){
                    clist[g] = cal1.SelectedDate.ToString("dd/MM/yyyy") + selected[g].Text;

                }




            for (h = 0; h < selected.Count; h++)
            {
                SqlCommand cmd = new SqlCommand("insert into Booking(Time,TimeStatus) values('" + DateTime.Parse(clist[h], provider) + "','" + 1 + "Where TutorId=" + tutorid + "')", con);
                cmd.ExecuteNonQuery();
            }
                con.Close();
            
            resultLabel.Text = "Update has been Successful!";
        }
        catch(Exception ex)
        {
            Response.Redirect(ex.Message);
        }
        
    }

    protected void BackBTN_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TutorWebsite/TutoerMainpage.aspx");
    }
}
