<%@ Page Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="Forum2.aspx.cs" Inherits="Forum2" %>

<script runat="server">

    protected void submitQABTN_Click(object sender, EventArgs e)
    {

    }

    protected void clearQABTN_Click(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="ForumEdit" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Table ID="Forumtd" runat="server" Width="100%">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Add Question</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server">Name:</asp:Label>
                <asp:TextBox runat="server" ID="fullNameTextBox" CssClass="fullNameTextBox"></asp:TextBox>
            </asp:TableCell>
       </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server">Subject</asp:Label>
              <asp:DropDownList runat="server" ID="subjectDDL" CssClass="subjectDDL">
                  <asp:ListItem>C#</asp:ListItem>
                  <asp:ListItem>ASP.NET</asp:ListItem>
              </asp:DropDownList>
            </asp:TableCell>
      </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="forumTextBox" Height="100px" Width="300px" CssClass="forumTextBox" TextMode="MultiLine"></asp:TextBox>
            </asp:TableCell>
       </asp:TableRow>
       <asp:TableRow>
            <asp:TableCell>
                <asp:Button runat="server" ID="submitQABTN" CssClass="submitQABTN" Text="Submit" onClick="submitQABTN_Click"/>
                 &nbsp;
                <asp:Button runat="server" ID="clearQABTN" CssClass="clearQABTN" Text="Clear" OnClick="clearQABTN_Click" />
            </asp:TableCell>
       </asp:TableRow>
       

    </asp:Table>

</asp:Content>

