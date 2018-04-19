<%@ Page Title="SucessPayment" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="SuncessPayment.aspx.cs" Inherits="SuncessPayment" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="para1">
<h1>Thank you!</h1>
<h2>Payment has been successful!</h2>
 <asp:Button runat="server" Text="Back to Menu" OnClick="backtomenu_Click" ID="backtomenu" />
</div>
</asp:Content>

