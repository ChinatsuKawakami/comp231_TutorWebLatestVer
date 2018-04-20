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
using System.Linq;
public partial class TutorSchedule : System.Web.UI.Page
{
    CultureInfo provider = CultureInfo.InvariantCulture;
    string[] currentitem=new string[]{ };
    int i = 0;
    bool btn;
    int tutorid;
    string[] clist;
    string format = "dd/MM/yyyy HH:mm:ss";
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
    public string[] getStopWords()
    {
        string[] stopWordArray = new string[CheckBoxList1.SelectedIndex];
        CheckBoxList1.Items.CopyTo(stopWordArray, 0);

        return stopWordArray;
    }
    protected void CheckBoxList1_SelectedIndexChanged(Object sender,EventArgs e)
    {
        //foreach (ListItem li in CheckBoxList1.Items)
        //{

        //    if(li.Selected)
        //    {

        //List <string> ar = new List<string>(CheckBoxList1.SelectedIndex);
        
                List<ListItem> selected = new List<ListItem>();
                foreach (ListItem item in CheckBoxList1.Items)
                {

                    if (item.Selected)
                    {
                        selected.Add(item);
                      label1.Text += selected[i] + "<br/>";
                i++;
            }
           
            //   label1.Text += getStopWords().ElementAt(i).ToString() + "<br/>";
        }
                

        //    }
        //}
          



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
            string da = daylabel.Text + label1.Text;
            SqlCommand cmd = new SqlCommand("insert into Booking(Time,TimeStatus) values('" + DateTime.Parse(da, provider) + "','" + 1 + "Where TutorId=" + tutorid + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            resultLabel.Text = "Update has been Successful!";
        }
        catch(Exception ex)
        {
            Response.Redirect(ex.Message);
        }
        
    }
}
