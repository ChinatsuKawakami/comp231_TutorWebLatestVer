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

public partial class Subject : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

        //if(!Page.IsPostBack)
        //{
        //   // LoadGridView();
        //   // LoadSubjects();
        //}


        //  LoadData();
        // byte[] byt = System.Text.Encoding.UTF8.GetBytes(0x433A5C55736572735C6368696E617473755C536F757263655C5265706F735C5265706F2D3131312D6D61737465725C5265706F2D3131312D6D61737465725C636F6D703233315F7475746F727765622D6D61737465725C5475746F725765625C5475746F72576562736974655C496D616765735C7475746F72696D675C6D616E);
        // //Context.Response.ContentType="image/jpeg";
        // string encoded = HttpUtility.UrlEncode(Convert.ToBase64String(byt));
        // Console.Write(encoded);
        //// string str = Convert.ToBase64String(0x433A5C55736572735C6368696E617473755C536F757263655C5265706F735C5265706F2D3131312D6D61737465725C5265706F2D3131312D6D61737465725C636F6D703233315F7475746F727765622D6D61737465725C5475746F725765625C5475746F72576562736974655C496D616765735C7475746F72696D675C6D616E);


    }
    //private void LoadSubjects()
    //{
    //    subjectDDL.DataSource = LoadData();
    //    //subjectDDL.DataTextField = "firstname";
    //    //subjectDDL.DataTextField = "lastname";
    //    subjectDDL.DataValueField = "subjectid";
    //    subjectDDL.DataTextField = "subject";
    //    subjectDDL.DataBind();
    //}

    //private void LoadGridView()
    //{
    //    SubjectGridView.DataSource = LoadData();
    //    SubjectGridView.DataBind();
    //    //throw new NotImplementedException();
    //}

    //private void LoadGridView(int id)
    //{
    //    SubjectGridView.DataSource = LoadData();
    //    SubjectGridView.DataBind();
    //    //throw new NotImplementedException();
    //}

    //private DataSet LoadData()
    //{
    //    //SqlDataAdapter adap = new SqlDataAdapter("select Tutor.FirstName, Tutor.LastName from tutor Tutor.subjectid = subject.subjectid",con);
    //    SqlDataAdapter adap = new SqlDataAdapter("select subject from subject", con);
    //    DataSet ds = new DataSet();
    //    adap.Fill(ds);
    //    return ds;
    //}
    //private DataSet LoadData(int id)
    //{
    //    SqlDataAdapter adap = new SqlDataAdapter("select Tutor.FirstName, Tutor.LastName from tutor where subjectid = " +id , con);
    //    DataSet ds = new DataSet();
    //    adap.Fill(ds);
    //    return ds;
    //}

    //protected void subjectDDL_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    LoadGridView(int.Parse(subjectDDL.SelectedValue));
    //}




}