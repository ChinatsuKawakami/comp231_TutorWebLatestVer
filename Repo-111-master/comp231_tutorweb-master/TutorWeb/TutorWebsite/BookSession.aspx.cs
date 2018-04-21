using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class BookSession : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    string name = GridView1.SelectedRow.DataItem.ToString();

    //}

    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "btn")
        {

            // Convert the row index stored in the CommandArgument
            // property to an Integer.
            int index = Convert.ToInt32(e.CommandArgument);

            // Get the last name of the selected author from the appropriate
            // cell in the GridView control.
            GridViewRow selectedRow = GridView1.Rows[index];
            TableCell contactName = selectedRow.Cells[1];
            string contact = contactName.Text;

            // Display the selected author.
            label1.Text = "You selected " + contact + ".";
        }

       
    }
}
