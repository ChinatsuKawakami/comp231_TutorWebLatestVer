<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master"  CodeFile="Tutor.aspx.cs" Inherits="Tutor" %>


<asp:Content ID="tutor" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
      <Columns>
          <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
          <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
          <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
          <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
          <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
          <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
          <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
          <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
          <asp:ButtonField HeaderText="Booking Session" ShowHeader="True" Text="Book" />

      </Columns>
      <FooterStyle BackColor="White" ForeColor="#000066" />
      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
      <RowStyle ForeColor="#000066" />
      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
      <SortedAscendingCellStyle BackColor="#F1F1F1" />
      <SortedAscendingHeaderStyle BackColor="#007DBB" />
      <SortedDescendingCellStyle BackColor="#CAC9C9" />
      <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
             

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString %>" SelectCommand="SELECT Tutor.FirstName, Tutor.LastName, Tutor.PhoneNumber, Tutor.Address, Tutor.PostalCode, Tutor.Email, Tutor.Rate, Tutor.image, Subject.Subject AS Subject FROM Tutor INNER JOIN Subject ON Tutor.subjectId = Subject.SubjectId"></asp:SqlDataSource>
             

    <asp:Button runat="server" CssClass="btnSearch" Text="Contact" ID="ContactBTN" OnClick="Unnamed1_Click" />
    <asp:Button runat="server" CssClass="btnSearch" Text="Leave review" ID="BackBTN" OnClick="BackBTN_Click" />
</asp:Content>