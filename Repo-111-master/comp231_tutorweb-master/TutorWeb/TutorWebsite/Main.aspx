<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Main.aspx.cs" Inherits="Main" %>

<asp:Content id="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="align-content:center; text-align:center">
       <asp:Image ID="mainImage" runat="server" CssClass="mainImage" ImageUrl="~/Images/main2.jpg" Height="550px" Width="100%" /> 

        <div id="firstSection" runat="server" style="height:500px; margin-top:50px" >
            <asp:Label runat="server" Text="WELCOME TO VARIABLE X WEBSITE" Font-Size="XX-Large" Font-Names="Century Gothic"></asp:Label><br /><br />
            <asp:Label runat="server" Font-Names="Century Gothic" Text="Students and tutor are able to contact each other and request tutoring dates for specific subjects that are available."></asp:Label>
        
                <asp:Table ID="Table1" runat="server" CssClass="mainTable" Width="70%" style="table-layout:fixed" >
        <asp:TableRow >
            <asp:TableCell>
                 <asp:Image ID="image1" runat="server" ImageUrl="~/Images/money.png" height="150" Width="150" />
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Image ID="image2" runat="server" ImageUrl="~/Images/arrange.png" height="150" Width="150" />
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Image ID="image3" runat="server" ImageUrl="~/Images/besttutor.png" height="150" Width="150" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Image ID="image4" runat="server" ImageUrl="~/Images/signup.png" height="150" Width="150" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                 <asp:Label runat="server" Font-Size="X-Large">Resonable</asp:Label> 
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Label runat="server" Font-Size="X-Large">Arrange</asp:Label>  
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Label runat="server" Font-Size="X-Large">The best tutors</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server" Font-Size="X-Large">Sign up for free</asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell >
                <asp:Label runat="server" Font-Names="Arial Narrow"><br />Only pay for the tutoring time you want by monthly or per subsciption</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server" Font-Names="Arial Narrow"><br />1-on-1 online lesson when it suits you</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server" Font-Names="Arial Narrow"><br />Hundreds of approved online tutors</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server" Font-Names="Arial Narrow"><br />Register as a student completely free of charge</asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
        
        </div>
        
        <div id="secondSection" runat="server" style="background-color:#f9ebeb; height:280px; padding-top:30px">
    <asp:Label ID="nameOfSearch" runat="server" Font-Size="X-Large" Font-Names="Arial Black" ForeColor="#96281B" Text="Our online tutors are ready to help you."></asp:Label><br /><br />
            <asp:Label runat="server" Text="Type in the Search box below to find the best tutor suits you or subject you want to study"></asp:Label><br /><br />
    <asp:TextBox ID="name" runat="server" style="width: 400px;height: 40px;
    margin-top: 5px;
    margin-bottom: 10px;
    background: #ffe5e5;
    border-radius: 3px;
    border: 1px solid gray;
    -webkit-text-fill-color: black;" CssClass="textBox" placeholder=" What subject are you looking for help with?"></asp:TextBox><br />
    <asp:Button ID="btnSearch" runat="server" Style="    background: #96281B;
    border: 0;
    padding: 20px 30px;
    margin-top: 20px;
    color: white;" Text="Click to search" CssClass="btnSearch" />
        </div>
        
      

        <asp:TableRow>
          <asp:TableCell Width="30%">

               <!--Embed map of secondary institues (Iteration 2 will utilize a db and have it pull from specific location-->
           <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d92381.54072446897!2d-79.53586538820717!3d43.649767265459!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1ssecondary+school!5e0!3m2!1sen!2sca!4v1521837381202" width="100%" height="350" style="border:0"></iframe>
          
           <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2880.434515451454!2d-79.23142688507164!3d43.78459597911712!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d4d0f190b1fe51%3A0xc3eac236656b5663!2sCentennial+College+-+Progress+Campus!5e0!3m2!1sja!2sca!4v1520971942441" width="100%" height="350" style="border:0" ></iframe> -->
         </asp:TableCell>
         </asp:TableRow>

        <div runat="server" style="height:150px; background-color:black; color:white; padding-top:60px">
            <asp:Table runat="server" HorizontalAlign="Center" style="table-layout:fixed">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="CONTACT US"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="INFORMATION"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="ADDRESS"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <br />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="300px">
                        <a href="https://www.facebook.com/centennialcollege/"><asp:Image runat="server" ImageUrl="~/Images/facebook.png" height="50" Width="50"/></a>   
                        <a href="https://www.instagram.com/centennialcollege/?hl=en"><asp:Image runat="server" ImageUrl="~/Images/instagram.png" height="50" Width="50"/></a>
                        <a href="https://twitter.com/CentennialEDU?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><asp:Image runat="server" ImageUrl="~/Images/twitter.png" height="50" Width="50"/></a>
                    </asp:TableCell>
                    <asp:TableCell Width="300px"> 
                        <a href="About.aspx" style="color:white;text-decoration-line:none">About Us</a><br />
                        <a href="Subject.aspx" style="color:white;text-decoration-line:none">Subjects</a><br />
                        <a href="Signup.aspx" style="color:white;text-decoration-line:none">Sign Up</a><br />
                    </asp:TableCell>
                    <asp:TableCell Width="300px">
                        <asp:Label runat="server" Text="941 Progress Ave, Scarborough, ON M1G 3T8"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

</div>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .mainTable {
            margin-left: 231px;
        }
    </style>
</asp:Content>

