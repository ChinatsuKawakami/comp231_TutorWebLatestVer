<%@ Page Title="" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="RecommendTutor.aspx.cs" Inherits="RecommendTutor"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="recommendid" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!--Added StyleSheet-->
       <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" runat="server"  />
       <!--Added Bootstrap ver:4.0.0 / jquery ver:3.3.1 -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>

    <style "text/css">

.StarRating {
    cursor: pointer;
    background-repeat: no-repeat;
    display: block;
    width: 100px;
    height: 100px;
    padding: 30px;
    margin: 30px;
}

.FilledStars {
    background-image: url(Images/filledStar.png);
}

.WaitingStars {
    background-image: url(Images/waitingstar.png);
  
}

.EmptyStars {
    background-image: url(Images/emptyStar.jpg);
}


    </style>

 <div class="recommendbody">
   <asp:Label CssClass="Recommendtitle" ID="Recommendtitle" runat="server" Text="Recommended Tutor"></asp:Label>
    <asp:Table ID="ratingtd" CssClass="ratingtd" runat="server" width=80% Height="30%" HorizontalAlign="Center">
        <asp:TableHeaderRow Width="80%" HorizontalAlign="Center">
            <asp:TableHeaderCell>
                <br />
         </asp:TableHeaderCell>
            <asp:TableHeaderCell>
                   <asp:DropDownList runat="server" ID="RatingDDL" CssClass="RatingDDL">
                   <%--  Add tutor name with whom the user took session so far--%>
                    <asp:ListItem>Choose Tutor to whom you want to give Stars</asp:ListItem>
                   </asp:DropDownList>
            
         </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
               <asp:Label runat="server" ID="q1" Text="Q1: Punctuality"></asp:Label>
            
       </asp:TableCell>
            <asp:TableCell>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
 
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>           
            
           
            <cc1:Rating ID="Rating1" runat="server"
                StarCssClass="StarRating"
                FilledStarCssClass="FilledStars"
                WaitingStarCssClass="WaitingStars"
                EmptyStarCssClass="EmptyStars"
                CurrentRating="2"
                MaxRating="5"
               
            >    
           </cc1:Rating>
        
</ContentTemplate>
    
</asp:UpdatePanel>
            
</asp:TableCell>
      </asp:TableRow>

    <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label runat="server" ID="q2" Text="Q2: Teaching Skill"></asp:Label>
            
</asp:TableCell>
                    <asp:TableCell>
     
 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>           
            
           
            <cc1:Rating ID="Rating2" runat="server"
                StarCssClass="StarRating"
                FilledStarCssClass="FilledStars"
                WaitingStarCssClass="WaitingStars"
                EmptyStarCssClass="EmptyStars"
                CurrentRating="2"
                MaxRating="5"
            >    
           </cc1:Rating>
        
    </ContentTemplate>
    
      </asp:UpdatePanel>
    
            
         </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label runat="server" ID="q3" Text="Q3: Material"></asp:Label>
            
              </asp:TableCell>
               <asp:TableCell>

       <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>           
            
           
            <cc1:Rating ID="Rating3" runat="server"
                StarCssClass="StarRating"
                FilledStarCssClass="FilledStars"
                WaitingStarCssClass="WaitingStars"
                EmptyStarCssClass="EmptyStars"
                CurrentRating="2"
                MaxRating="5"
            >    
           </cc1:Rating>
        
</ContentTemplate>
    
</asp:UpdatePanel>
            
</asp:TableCell>
        </asp:TableRow>
         <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label runat="server" ID="q4" Text="Q4: Positive Attitude"></asp:Label>
            
</asp:TableCell>
            <asp:TableCell>
     
 <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        <ContentTemplate>           
            
           
            <cc1:Rating ID="Rating4" runat="server"
                StarCssClass="StarRating"
                FilledStarCssClass="FilledStars"
                WaitingStarCssClass="WaitingStars"
                EmptyStarCssClass="EmptyStars"
                CurrentRating="2"
                MaxRating="5"
            >    
           </cc1:Rating>
        
</ContentTemplate>
    
</asp:UpdatePanel>
            
</asp:TableCell>
        </asp:TableRow>
         <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label runat="server" ID="q5" Text="Q5: Helpful"></asp:Label>
            
</asp:TableCell>
                         <asp:TableCell>
                    
 <asp:UpdatePanel ID="UpdatePanel5" runat="server">
        <ContentTemplate>           
            
           
            <cc1:Rating ID="Rating5" runat="server"
                StarCssClass="StarRating"
                FilledStarCssClass="FilledStars"
                WaitingStarCssClass="WaitingStars"
                EmptyStarCssClass="EmptyStars"
                CurrentRating="2"
                MaxRating="5"
            >    
           </cc1:Rating>
        
</ContentTemplate>
    
</asp:UpdatePanel>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label runat="server" ID="qcomment" Text="Comment for Tutor"></asp:Label>
<br />
            </asp:TableCell>
            <asp:TableCell>
                <br />
                 <asp:TextBox CssClass="form-control"  ID="qcommentTxtBox" runat="server" Wrap="True" Width="80%" Height="80%" TextMode="MultiLine"></asp:TextBox>   
                <br />         
                <asp:Button runat="server" class="qbtn" ID="qbtn" CssClass="btn btn-danger" Text="Submit" Width="30%"/>
            <br />
</asp:TableCell>
        </asp:TableRow>
  <asp:TableFooterRow>
      <asp:TableCell>

      </asp:TableCell>
  </asp:TableFooterRow>
        </asp:Table>
 </div>
</asp:Content>

