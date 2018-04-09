<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master"  CodeFile="Tutor.aspx.cs" Inherits="Tutor" %>


<asp:Content ID="tutor" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    
    <asp:Table runat="server" BackColor="#F2F3F4" style="margin-left: 350px; margin-bottom:30px; margin-top:5px; padding-top:15px; padding-bottom:15px" Width="779px" >
        <asp:TableRow>
            <asp:TableCell>
               <asp:Image runat="server" ImageUrl="~/Images/toystory2.jpeg" Width="250px" Height="250px"/>
            </asp:TableCell>    
            <asp:TableCell HorizontalAlign="Left">
                <asp:Label runat="server" >Bob Smith</asp:Label><br /><br />
                <asp:Label runat="server">Toronto, Ontario</asp:Label><br /><br />
                <asp:Label runat="server">Email: BobSmith@gmail.com</asp:Label><br /><br />
                <asp:Label runat="server">Centennial College, Progress Campus</asp:Label><br /><br />
                <asp:Label runat="server">Join Date: January 1, 2017</asp:Label>
                <asp:Label runat="server"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <asp:Table runat="server" style="margin-bottom:10px; margin-left: 459px;" Width="572px">
        <asp:TableRow CssClass="tbBorder" style="border-collapse:separate; display:table-cell; border-spacing:10px">
            <asp:TableCell>
               <asp:Label runat="server">Tutor Rating: 8.5</asp:Label><asp:Image runat="server" ImageAlign="Bottom" ImageUrl="~/Images/star.png" Width="100px" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell >
                  <asp:Label runat="server" style="font-size: x-large">About Bob Smith</asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell>
                <asp:Label runat="server" Font-Bold="true" style="font-size: large">Subjects</asp:Label><br />
                <asp:Label runat="server">Accounting</asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell m>
                <asp:Label runat="server" Font-Bold="true" style="font-size: large">Education</asp:Label><br />
                <asp:Label runat="server">Bachelors in Accounting from Centennial College</asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell>
                <asp:Label runat="server" Font-Bold="true" style="font-size: large">Career Experience</asp:Label><br />
                <asp:Label runat="server">I have been working as a public accountant for 10 years. I have years of experience working with trial balances, adjusting accounts and financial statements.</asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tbBorder">
            <asp:TableCell>
                <asp:Label runat="server" Font-Bold="true" style="font-size: large">Biography</asp:Label><br />
                <asp:Label runat="server">Detailed description here</asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
   
    <asp:Button runat="server" CssClass="btnSearch" Text="Contact" />
    <asp:Button runat="server" CssClass="btnSearch" Text="Leave review" />
</asp:Content>