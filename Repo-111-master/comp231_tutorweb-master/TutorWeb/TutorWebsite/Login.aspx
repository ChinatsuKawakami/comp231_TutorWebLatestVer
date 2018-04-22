<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="log" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

  <div style="background-color:#e9e9e2">
    <div runat="server" style="z-index:1;">
    <asp:Table runat="server" style="padding-bottom:20px; left:35%; top:20px; padding-top:20px; width: 450px;position:relative; z-index:2; box-shadow: 10px 15px 25px 10px #E2E4E6; background-color: #eeeedd">
        <asp:TableRow>
            <asp:TableCell>
              
                <asp:Label runat="server" Text="Login as a Student" Font-Size="X-Large" Font-Names="Arial Black" ></asp:Label><br /><br />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox runat="server" CssClass="changeTextBox" placeholder="Username" ID="studentUserName"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox runat="server" CssClass="changeTextBox" TextMode="Password" placeholder="Password" ID="studentPassword"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button runat="server" style="background: #0C374D;border: 0;vertical-align: top;padding: 10px 30px;margin-top: 20px;color: white;font-size: small;" CssClass="btnProfile" OnClick="Loginbtn_Click" ID="loginbtn" Text="Log In"  />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>        
</div>

    <asp:table runat="server" BackColor="#F2F3F4" style="float: left; margin-left: 417px; width:350px; margin-top:50px; margin-bottom:20px; padding-bottom:25px; padding-top:25px; margin-right:35px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Font-Size="X-Large">Need to create an account?</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Font-Size="Large">It is very simple to join our website.</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" style="background: #1287A8;border: 0;padding: 20px 30px;margin-top: 20px;color: white; font-size: Large;" CssClass="btnLogin" PostBackUrl="~/Signup.aspx" text="Join Variable X" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:table>

    <asp:table runat="server" BackColor="#F2F3F4" style="margin-left: 350px; width:350px; margin-top:50px; margin-bottom:20px; padding-bottom:25px; padding-top:25px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Font-Size="X-Large">Need to find a tutor?</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Font-Size="Large">It is very simple to find the best tutor.</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" style="background: #1287A8;border: 0;padding: 20px 30px;margin-top: 20px;color: white; font-size: Large;" CssClass="btnLogin" PostBackUrl="~/Findtutor.aspx" text="Find a tutor now" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:table>



    <div runat="server" style="height:130px; background-color:black; color:white; padding-top:30px; margin-top:50px">
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
</div>
</asp:Content>
