<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content id="aboutUs" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="align-content:center; text-align:left; background-color:#f0f0f0; height:600px">
        <asp:table runat="server" style="margin-left: 350px; margin-bottom:20px; padding-top:40px" Width="800px" >
            <asp:TableRow>
                <asp:TableCell>
                   <asp:Label runat="server" Font-Size="XX-Large" Font-Names="Arial Black" ForeColor="#96281B" >What are we all about?</asp:Label>
                </asp:TableCell>
                </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Font-Names="Century Gothic">This application/website is capable of retrieving and calculating available times for the tutorer as well as the student who is in need of help up on request of any user. The system implements a method of contact with one another; the professor can contact a student or a student can contact professor. It will also has a built in review system in which students can use to browse  any available professor to their liking. 
                    </asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <hr style="border-color:black; border-width:1px"/>
                    <asp:Label runat="server" Font-Size="Large" Font-Names="Arial Black" >The problem</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
<asp:Label runat="server" Font-Names="Century Gothic">Students have difficult time meeting with tutors for extra help due to various reasonings such as
running into delayed travel times, difficulty finding appropriate tutors for their subject of needs,
or miss lectures due to illnesses or family emergency and just want to catch up with their studies.
It is also sometimes difficult to keep track of scheduled tutoring sessions while also keeping
track of their own assignments.
</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <hr style="border-color:black; border-width:1px"/>
                   <asp:Label runat="server" Font-Size="Large" Font-Names="Arial Black" >Why we are different</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
<asp:Label runat="server" Font-Names="Century Gothic">Online tutoring is not only more affordable than traditional face-to-face tutoring; it’s better: you get access to a broader skillset through a vast network of possible tutors; you can arrange lessons around you at a time that suits and with no need to travel.
</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <hr style="border-color:black; border-width:1px"/>
                    <asp:Label runat="server" Font-Size="Large" Font-Names="Arial Black" >Who we are</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Font-Names="Century Gothic">Team: Variable X</asp:Label> 
                </asp:TableCell>
            </asp:TableRow>
        </asp:table>        
    </div>

    <div runat="server" style="height:130px; background-color:black; color:white; padding-top:30px">
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
                        <a href="https://www.facebook.com/centennialcollege/"><asp:Image runat="server" ImageUrl="~/Images/facebook.png" height="30" Width="30"/></a>   
                        <a href="https://www.instagram.com/centennialcollege/?hl=en"><asp:Image runat="server" ImageUrl="~/Images/instagram.png" height="30" Width="30"/></a>
                        <a href="https://twitter.com/CentennialEDU?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><asp:Image runat="server" ImageUrl="~/Images/twitter.png" height="30" Width="30"/></a>
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
</asp:Content>