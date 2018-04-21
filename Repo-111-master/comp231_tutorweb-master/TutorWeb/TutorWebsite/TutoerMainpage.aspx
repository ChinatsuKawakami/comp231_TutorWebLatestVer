<%@ Page Title="TutorMain" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="TutoerMainpage.aspx.cs" Inherits="TutoerMainpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ValidateRequestMode="Inherit">
 <!--Added StyleSheet-->
    <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" runat="server"  />
 <!--Added Bootstrap ver:4.0.0 / jquery ver:3.3.1 -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
            <asp:BoundField DataField="Punctuality" HeaderText="Punctuality" SortExpression="Punctuality" />
            <asp:BoundField DataField="TeachingSkill" HeaderText="TeachingSkill" SortExpression="TeachingSkill" />
            <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
            <asp:BoundField DataField="PositiveAttitude" HeaderText="PositiveAttitude" SortExpression="PositiveAttitude" />
            <asp:BoundField DataField="Helpful" HeaderText="Helpful" SortExpression="Helpful" />
            <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <%string sr = Convert.ToString(Session["TutorId"]);
        int tutor_id = Convert.ToInt32(sr);%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString %>" SelectCommand="SELECT Users.FirstName, Users.LastName, Tutor.Rate, RecommendTutor.Punctuality, RecommendTutor.TeachingSkill, RecommendTutor.Material, RecommendTutor.PositiveAttitude, RecommendTutor.Helpful, RecommendTutor.Comments FROM RecommendTutor INNER JOIN Users ON RecommendTutor.UserId = Users.UserId INNER JOIN Tutor ON RecommendTutor.TutorId = Tutor.TutorId Where TutorId=tutor_id"></asp:SqlDataSource>
   
    <br /> 

    
    
    <asp:Button runat="server" ID="ScheduleBTN" OnClick="ScheduleBTN_Click"/>
  

    
</asp:Content>

