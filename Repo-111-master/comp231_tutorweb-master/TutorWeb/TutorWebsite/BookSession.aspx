<%@ Page Title="BookSession" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="BookSession.aspx.cs" Inherits="BookSession" %>

<asp:Content ID="booksessionid" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
     <br />
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />

    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString %>" SelectCommand="SELECT Tutor.FirstName, Tutor.LastName, Tutor.tutorimage, Booking.Time, Subject.Subject FROM Tutor INNER JOIN Booking ON Booking.TutorId = Tutor.TutorId INNER JOIN Subject ON Subject.SubjectId = Tutor.subjectId"></asp:SqlDataSource>

</asp:Content>