<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="signup" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div runat="server" style="background-color:#e9f2fb; height: 600px; z-index:1">
        <asp:Table runat="server" style="background-color:white; width:650px; height:450px; position:relative; z-index:2; top: 80px; left: 30%; box-shadow: 10px 15px 25px 15px #D8E4ED">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Font-Size="XX-Large" Font-Names="Century Gothic" Text="Change Password"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox runat="server" CssClass="changeTextBox"  placeholder="Current Password"></asp:TextBox>                  
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox runat="server" CssClass="changeTextBox"  placeholder="New Password"></asp:TextBox>                  
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox runat="server" CssClass="changeTextBox"  placeholder="Confirm Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   <asp:Button ID="btnChangepw1" runat="server" Text="UPDATE PASSWORD" CssClass="btnChange" />
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnChangepw" runat="server" Text="Cancel" CssClass="btnChange" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

    </div>

    <div runat="server" style="height:130px; background-color:black; color:white; padding-top:30px">
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
