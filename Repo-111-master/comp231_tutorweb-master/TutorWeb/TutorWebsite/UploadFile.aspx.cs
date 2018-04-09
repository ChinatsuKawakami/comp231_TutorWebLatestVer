using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class UploadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    protected void Submitfile_Click(object sender, EventArgs e)
    {
        if (fileupload.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(fileupload.FileName);
                fileupload.SaveAs(Server.MapPath("~/") + filename);
                statusLabel.Text = "Upload status: File uploaded!";

            }
            catch(Exception ex)
            {
                statusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                
            }
        }
    }
}
