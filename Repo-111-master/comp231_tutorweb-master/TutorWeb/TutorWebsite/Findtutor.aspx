<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Findtutor.aspx.cs" Inherits="Findtutor" %>

<asp:Content ID="find" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div runat="server" id="findtutor" style="align-content:center; background-color:#f2f2f2; padding-top:20px">

      
  <%--  <asp:Table runat="server" style="margin-left: 286px; padding-bottom:15px;  border-collapse: collapse; " Width="956px">
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
    </asp:Table>--%>

        <br />
        Tutor Name: <asp:DropDownList ID="tutorDDL" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource2" DataTextField="FirstName" DataValueField="FirstName" OnSelectedIndexChanged="tutorDDL_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString %>" SelectCommand="SELECT [FirstName] FROM [Tutor]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridViewTutors"  AutoPostBack="True" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TutorId" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnSelectedIndexChanged="GridViewTutors_SelectedIndexChanged" OnSelectedIndexChanging="GridViewTutors_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:ButtonField CommandName="Select" HeaderText="Book Session" ShowHeader="True" Text="Book" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnectionString %>" SelectCommand="SELECT [TutorId], [FirstName], [LastName], [PhoneNumber], [Address], [PostalCode], [Email], [Rate], [tutorimage] FROM [Tutor] WHERE ([FirstName] = @FirstName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="tutorDDL" Name="FirstName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Image ID="Image1" runat="server" width="259px" Height="194px"/>
     
       

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
