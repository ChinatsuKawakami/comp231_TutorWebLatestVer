<%@ Page Title="" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="AccountSubscription.aspx.cs" Inherits="AccountSubscription" %>

<asp:Content ID="accountsubscription" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    
     <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" runat="server"  />
     <asp:Table ID="tbAccountPaper" runat="server" CssClass="mainTable" Height="265px" Width="100%">
            <asp:TableRow>
            <asp:TableCell>
             <a href="Findtutor.aspx"><asp:Image ID="findtutorimg" runat="server" ImageUrl="~/Images/search.png" height="150" Width="150" /></a>             
            </asp:TableCell>
            <asp:TableCell>
            <a href="BookSession.aspx"><asp:Image ID="timeimg" runat="server" ImageUrl="~/Images/time.png" height="150" Width="150" /></a>
            </asp:TableCell>
                <asp:TableCell>
             <a href="Userinfo.aspx"><asp:Image ID="accountimg" runat="server" ImageUrl="Images/account.png" height="150" Width="150" /></a>
            </asp:TableCell>       
             <asp:TableCell>
             <a href="RecommendTutor.aspx"><asp:Image ID="recommendimg" runat="server" ImageUrl="Images/recommended-star.png" height="150" Width="150" /></a>
            </asp:TableCell>       
            </asp:TableRow>


         <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" CssClass="lfindtutorS" Font-Size="X-Large">Find Tutor</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server"  CssClass="lbooksessionS" Font-Size="X-Large">Book Session</asp:Label>
            </asp:TableCell>
                <asp:TableCell>
                <asp:Label runat="server"  CssClass="laccountInfoS" Font-Size="X-Large">Account Info</asp:Label>
            </asp:TableCell>
               <asp:TableCell>
                <asp:Label runat="server" CssClass="lrecommendS" Font-Size="X-Large">Recommend Tutor</asp:Label>
            </asp:TableCell>
            </asp:TableRow>

          <asp:TableRow>
            <asp:TableCell>
             <a href="Forum.aspx"><asp:Image ID="forumimg" runat="server" ImageUrl="Images/reunion.png" height="150" Width="150" /></a>             
            </asp:TableCell>
            <asp:TableCell>
            <a href="UploadFile.aspx"><asp:Image ID="uploadimg" runat="server" ImageUrl="Images/outbox.png" height="150" Width="150" /></a>
            </asp:TableCell>
                <asp:TableCell>
             <a href="History.aspx"><asp:Image ID="historyimg" runat="server" ImageUrl="Images/history.png" height="150" Width="150" /></a>
            </asp:TableCell>       
               <asp:TableCell>
             <a href="Map.aspx"><asp:Image ID="mapimg" runat="server" ImageUrl="Images/placeholder.png" height="150" Width="150" /></a>
            </asp:TableCell>  
               
            </asp:TableRow>

               <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server"  CssClass="lforumS" Font-Size="X-Large">Forum</asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server"  CssClass="luploadfileS" Font-Size="X-Large">Upload File</asp:Label>
            </asp:TableCell>
                <asp:TableCell>
                <asp:Label runat="server"  CssClass="lviewHistoryS" Font-Size="X-Large">View History</asp:Label>
            </asp:TableCell>
             <asp:TableCell>
                <asp:Label runat="server"  CssClass="lnearTutorS" Font-Size="X-Large">nearby tutor in Map</asp:Label>
            </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
</asp:Content>
