<%@ Page Title="LoginTutor" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="LoginTutor.aspx.cs" Inherits="LoginTutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Added StyleSheet-->
       <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" runat="server"  />
       <!--Added Bootstrap ver:4.0.0 / jquery ver:3.3.1 -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <br />
    <div style="background-color:#e9e9e2">
    <div runat="server" style="z-index:1;">
    <asp:Table runat="server" style="padding-bottom:20px; left:35%; top:20px; padding-top:20px; width: 450px;position:relative; z-index:2; box-shadow: 10px 15px 25px 10px #E2E4E6; background-color: #eeeedd" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="Login as a Tutor" Font-Size="X-Large" Font-Names="Arial Black" ></asp:Label><br /><br />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox runat="server" CssClass="changeTextBox" placeholder="Username" ID="tutorUserName"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox runat="server" CssClass="changeTextBox" placeholder="Password" ID="tutorPassword"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               <asp:Button runat="server" OnClick="tutorlogin_Click" ID="tutorlogin" CssClass="btnProfile" Text="Login" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>        
</div>
        </div>
</asp:Content>

