<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Findtutor.aspx.cs" Inherits="Findtutor" %>

<asp:Content ID="find" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div runat="server" style="align-content:center; background-color:#f2f2f2; padding-top:20px">
    <asp:Table runat="server" style="margin-left: 286px; padding-bottom:15px;  border-collapse: collapse; " Width="956px">
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell>
                <asp:Image runat="server" ImageUrl="~/Images/toystory2.jpeg" Width="120px" Height="120px" />
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:Label runat="server" CssClass="txtName">Jessie</asp:Label><br />
                <asp:Label runat="server" Font-Bold="true">Accounting</asp:Label><br />
                <asp:Label runat="server">Bachelors in Accounting from Centennial College</asp:Label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Button runat="server" CssClass="btnProfile" PostBackUrl="~/TutorWebsite/Tutor.aspx" Text="VIEW PROFILE" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell>
                <asp:Image runat="server" ImageUrl="~/Images/toystory.jpeg" Width="120px" Height="120px" />
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:Label runat="server" CssClass="txtName">Name</asp:Label><br />
                <asp:Label runat="server" Font-Bold="true">Subject</asp:Label><br />
                <asp:Label runat="server">Brief information</asp:Label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Button runat="server" CssClass="btnProfile" Text="VIEW PROFILE" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell>
                <asp:Image runat="server" ImageUrl="~/Images/simpson.jpg" Width="120px" Height="120px" />
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:Label runat="server" CssClass="txtName">Name</asp:Label><br />
                <asp:Label runat="server" Font-Bold="true">Subject</asp:Label><br />
                <asp:Label runat="server">Brief information</asp:Label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Button runat="server" CssClass="btnProfile" Text="VIEW PROFILE" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell>
                <asp:Image runat="server" ImageUrl="~/Images/bartSimpson.jpg" Width="120px" Height="120px" />
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:Label runat="server" CssClass="txtName">Name</asp:Label><br />
                <asp:Label runat="server" Font-Bold="true">Subject</asp:Label><br />
                <asp:Label runat="server">Brief information</asp:Label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Button runat="server" CssClass="btnProfile" Text="VIEW PROFILE" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell>
                <asp:Image runat="server" ImageUrl="~/Images/15.png" Width="120px" Height="120px" />
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left">
                <asp:Label runat="server" CssClass="txtName">Name</asp:Label><br />
                <asp:Label runat="server" Font-Bold="true">Subject</asp:Label><br />
                <asp:Label runat="server">Brief information</asp:Label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Button runat="server" CssClass="btnProfile" Text="VIEW PROFILE" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    </div>

    <div runat="server" style="height:130px; background-color:black; color:white; padding-top:30px;">
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
