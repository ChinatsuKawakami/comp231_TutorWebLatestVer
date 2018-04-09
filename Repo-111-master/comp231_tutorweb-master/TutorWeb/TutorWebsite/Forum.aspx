<%@ Page Title="" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="Forum.aspx.cs" Inherits="Forum" %>
<asp:Content ID="forumid" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="historybody">
     <asp:Table ID ="forumtd" CssClass="forumtd"  runat="server" Height="265px" Width="100%">
         <asp:TableHeaderRow>
             <asp:TableHeaderCell>Forum</asp:TableHeaderCell>
         </asp:TableHeaderRow>
         <asp:TableRow>
             <asp:TableCell Text="VIEW COMMENTS"></asp:TableCell>
             <asp:TableCell Text="QUESTION"></asp:TableCell>
              <asp:TableCell Text="Poster"></asp:TableCell>
              <asp:TableCell Text="Date AND TIME"></asp:TableCell>
         </asp:TableRow>
     <asp:TableRow>
         <asp:TableCell>
             <asp:Button runat="server" CssClass="commentBTN" ID="commentBTN" Text="View Comment" OnClick="commentBTN_Click" />
         </asp:TableCell>
          <asp:TableCell>
             <asp:TextBox runat="server" CssClass="forumTextBox" ID="forumTextBox" TextMode="MultiLine" Width="300" Height="100"></asp:TextBox>
         </asp:TableCell>
          <asp:TableCell>
              <asp:Label runat="server" CssClass="posterName" ID="posterName"></asp:Label>
         </asp:TableCell>
          <asp:TableCell>
              <asp:Label runat="server" CssClass="dateAndTime" ID="dateAndTime"></asp:Label>
          </asp:TableCell>
     </asp:TableRow>
    
         <asp:TableFooterRow>
             <asp:TableCell>
                 <asp:Button runat="server" ID="addQA" CssClass="addQA" OnClick="addQA_Click" Text="ASK QUESTION"/>
             </asp:TableCell>
         </asp:TableFooterRow>
       
     </asp:Table>
</div>

</asp:Content>

