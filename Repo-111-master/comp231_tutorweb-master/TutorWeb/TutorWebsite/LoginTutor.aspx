<%@ Page Title="LoginTutor" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="LoginTutor.aspx.cs" Inherits="LoginTutor" %>

<script runat="server">

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
            try
            {
                System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnectionString"].ToString());
                con.Open();
                string query = "Select count(*) From Tutor where tutor_loginname = " + Login1.UserName + "'and password='" + Login1.Password + "'";

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(query, con);
                int output = (int)cmd.ExecuteScalar();

             if(output == 1)
            {
                System.Web.SessionState.Session["username"] = Login1.UserName;

                //later we should check if the user is subscription or payper use
                
                Response.Redirect("~/TutorWebsite/BookSession.aspx");
            }
            else if(output==0)
            {
                Response.Write("Login Failed");
            }

                con.Close();
            } 
            catch
            {
               
            }
    }
    
</script>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!--Added StyleSheet-->
       <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" runat="server"  />
       <!--Added Bootstrap ver:4.0.0 / jquery ver:3.3.1 -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <br />
    <div id="div1" runat="server">
    <p id="para1" runat="server">
    
        <asp:Login ID="Login1" runat="server" Height="199px" Width="401px" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" TextLayout="TextOnTop" DestinationPageUrl="~/TutorWebsite/TutoerMainpage.aspx" OnAuthenticate="Login1_Authenticate">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:Login>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    </p>
        </div>
</asp:Content>

