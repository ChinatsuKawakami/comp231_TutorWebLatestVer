<%@ Page Title="" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentForSubscription.aspx.cs" Inherits="PaymentForSubscription" %>
<asp:Content ID="paymentsub" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" runat="server"  />


    <div runat="server" class="body-paymentSubscription">

        <asp:Table ID="paymentSubtb" runat="server" CssClass="mainTable" Height="265px" Width="70%">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Order Summary</asp:Label><br />
                <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Description: Subscription in a month </asp:Label><br />
                <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Amount: 145.00 CAD</asp:Label>
            </asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Payment Details</asp:Label>
                 <asp:Image ID="visaid" runat="server" ImageUrl="Images/visa-icon.png" height="30" Width="30" />
                <asp:Image ID="masterid" runat="server" ImageUrl="Images/Master-Card-icon.png" height="30" Width="30" /><br/>
            </asp:TableCell>
        </asp:TableRow>

          <asp:TableRow>
            <asp:TableCell>
               <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Card Number </asp:Label>
                <asp:TextBox runat="server" ID="cardnumtxtbox"></asp:TextBox> &nbsp; &nbsp;
               <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Card Holder's Name </asp:Label>
                   <asp:TextBox runat="server" ID="cardholdertxtbox"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell>
           <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Expiry date </asp:Label>
                <asp:DropDownList runat="server" ID="expiryMonthList" >
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
                <asp:ListItem Text="6" Value="6"></asp:ListItem>
                <asp:ListItem Text="7" Value="7"></asp:ListItem>
                <asp:ListItem Text="8" Value="8"></asp:ListItem>
                <asp:ListItem Text="9" Value="9"></asp:ListItem>
                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                <asp:ListItem Text="12" Value="12"></asp:ListItem>
                </asp:DropDownList>/
                <asp:DropDownList runat="server" ID="expiryYearList">
                <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                <asp:ListItem Text="2026" Value="2026"></asp:ListItem>
                <asp:ListItem Text="2027" Value="2027"></asp:ListItem>
                <asp:ListItem Text="2028" Value="2028"></asp:ListItem>
                <asp:ListItem Text="2029" Value="2029"></asp:ListItem>
                </asp:DropDownList>
                 &nbsp;
                  <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Security Code (CVV): </asp:Label>
                  <asp:TextBox runat="server" ID="cvvtextbox" ></asp:TextBox>
                  <asp:Image runat="server" ImageUrl="Images/cvvcode.png" ID="cvvimg" MaxLength="999" height="30" Width="30" />
            </asp:TableCell>
        </asp:TableRow>

             <asp:TableRow>
             <asp:TableCell>
                 <asp:Label runat="server" Font-Bold="true" ForeColor="#0C374D">Email :</asp:Label>&nbsp;<asp:TextBox runat="server" ID="emailtxtbox"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="emailtxtbox" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="emailtxtbox" ErrorMessage="Please enter corect email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </asp:TableCell>
              </asp:TableRow>
            
             <asp:TableRow>
             <asp:TableCell>
               <asp:Button runat="server" ID="paysubbtn" OnClick="paysubbtn_BTN" text="Make Payment" class="btn btn-success"/>&nbsp;
               <asp:Button runat="server" ID="Button1" OnClick="Button1_Click" text="Cancel Payment" class="btn btn-warning"/>
              </asp:TableCell>
              </asp:TableRow>
        </asp:Table>
  </div>
</asp:Content>

