<%@ Page Title="" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="Userinfo.aspx.cs" Inherits="Userinfo" %>
<asp:Content ID="userinfoid" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Table ID="userinfotd" runat="server" Width="100%">
     <asp:TableRow>
         <asp:TableCell>
    <asp:Label runat="server" ID="userinfotitle" Width="100%">Account Info</asp:Label>
         </asp:TableCell>
    </asp:TableRow>
        <asp:TableRow>
            
            <asp:TableCell>
                <asp:Image ID="userImg" ImageUrl="Images/account.png" runat="server"  height="150" Width="150" /><br />
                <asp:FileUpload ID="uploadproImg" runat="server" Text="Update photo" /><br />

                <asp:Button ID="uploadImg" runat="server" Text="change photo" OnClick="UploadImg_Click"/>
            </asp:TableCell>


         <asp:TableCell>
            <asp:Label runat="server" ID="fname">First Name: </asp:Label>
            <asp:TextBox runat="server" ID ="fnameTxtBox" ReadOnly="true" value=""></asp:TextBox><br/>
            <asp:Label runat="server" ID="lname">Last Name: </asp:Label>
            <asp:TextBox runat="server" ID ="lnameTxtBox" ReadOnly="true"  value=""></asp:TextBox><br />
            <asp:Label runat="server" ID="email">Email : </asp:Label>
            <asp:TextBox runat="server" ID ="emailTxtBox"  value=""></asp:TextBox><br />
            <asp:Label runat="server" ID="Address">Address : </asp:Label>
            <asp:TextBox runat="server" ID ="addressTxtBox"  value=""></asp:TextBox><br />
            <asp:Label runat="server" ID="phone">Phone : </asp:Label>
            <asp:TextBox runat="server" ID ="phoneTxtBox"  value=""></asp:TextBox><br /><br /><br />

            <asp:Button runat="server" ID="updateBtn" Text="Update Profile" OnClick="UpdateBtn_Click"/>
          </asp:TableCell>

         </asp:TableRow>

          <asp:TableRow>
              
             <asp:TableCell>

                 <asp:Button ID ="changepassBtn" runat="server" Text="ChangePassword" OnClick="ChangepassBtn_Click"/><br />
                 <asp:Button ID="paymentInfo" runat="server" Text="Payment Page" OnClick="PaymentInfo_Click" />

             </asp:TableCell>


            
          </asp:TableRow>
   </asp:Table>
</asp:Content>
