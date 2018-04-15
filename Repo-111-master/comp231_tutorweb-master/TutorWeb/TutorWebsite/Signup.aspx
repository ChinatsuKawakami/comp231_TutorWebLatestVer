﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" MasterPageFile="MasterPage.master" Inherits="Signup" %>

<asp:Content ID="subject" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

   
    <div runat="server" style="z-index:1;">
    <asp:Table runat="server" style="text-align:left; padding-left:90px; padding-bottom:20px; padding-top:20px; width: 500px;position:relative; z-index:2; left: 4%; box-shadow: 10px 15px 25px 10px #E2E4E6; background-color: #DEECF5; top: 0px;" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Justify">
                <asp:Label runat="server" Text="Save Your Account Now" Font-Size="X-Large" Font-Names="Arial Black" ></asp:Label>
            <br /><br />
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                 <asp:Label runat="server" Text="User Name" Font-Size="Small" Font-Bold="true"  ></asp:Label> 
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox runat="server" ID="usernameTxtBox" CssClass="changeTextBox"></asp:TextBox>  
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="First Name" Font-Size="Small" Font-Bold="true"  ></asp:Label> 
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="fNameTxtBox" CssClass="changeTextBox"></asp:TextBox>   
            
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="Last Name" Font-Size="Small" Font-Bold="true"  ></asp:Label>
            <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="lNameTxtBox" CssClass="changeTextBox" ></asp:TextBox>   
            
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="Email Address" Font-Size="Small" Font-Bold="true" ></asp:Label>
            <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="emailTxtBox" CssClass="changeTextBox"></asp:TextBox>  
            
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="Phone number" Font-Size="Small" Font-Bold="true" ></asp:Label>
            <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="phoneTxtBox" CssClass="changeTextBox"></asp:TextBox>
                
                <asp:RegularExpressionValidator ID="rvDigits" runat="server" ControlToValidate="phoneTxtBox"
                                ErrorMessage="Enter numbers only till 10 digit" ValidationGroup="valGroup" ForeColor="Red"
                                ValidationExpression="^[0-9]{10}$" />

            
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="Address" Font-Size="Small" Font-Bold="true" ></asp:Label>
            <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="addressTxtBox" CssClass="changeTextBox"></asp:TextBox>
            
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                  <asp:Label runat="server" Text="Postal Code" Font-Size="Small" Font-Bold="true" ></asp:Label>
            <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="PostalTxtBox" CssClass="changeTextBox"></asp:TextBox>
            
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="Password" Font-Size="Small" Font-Bold="true" ></asp:Label>
            <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="passwordTxtBox" CssClass="changeTextBox"></asp:TextBox>    
            
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" Text="Confirm Password" Font-Size="Small" Font-Bold="true" ></asp:Label>
            <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="confirmTxtBox" CssClass="changeTextBox"></asp:TextBox> 
              
              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="passwordTxtBox" CssClass="ValidationError"
              ControlToCompare="confirmTxtBox" ForeColor="Red" ErrorMessage="No Match" ToolTip="Password Must be Same!" />
               
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ErrorMessage="&laquo; (Required)" 
                   ForeColor="Red"
                   ControlToValidate="confirmTxtBox"
                  CssClass="ValidationError"
                   ToolTip="Compare Password is a REQUIRED field">
    </asp:RequiredFieldValidator>
                
                </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="BtnChangepw1" runat="server" Text="SIGN UP NOW" CssClass="btnChange" onClick="BtnChangepw1_Click"/>
                <asp:Label runat="server" ID ="label1" Text="ee"></asp:Label>
            </asp:TableCell></asp:TableRow></asp:Table></div><div runat="server" style="height:130px; background-color:black; color:white; padding-top:30px; margin-top:50px">
            <asp:Table runat="server" HorizontalAlign="Center" style="table-layout:fixed">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="CONTACT US"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label runat="server" Text="INFORMATION"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label runat="server" Text="ADDRESS"></asp:Label>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <br />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell Width="300px">
                        <a href="https://www.facebook.com/centennialcollege/"><asp:Image runat="server" ImageUrl="~/Images/facebook.png" height="30" Width="30"/></a>   
                        <a href="https://www.instagram.com/centennialcollege/?hl=en"><asp:Image runat="server" ImageUrl="~/Images/instagram.png" height="30" Width="30"/></a>
                        <a href="https://twitter.com/CentennialEDU?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><asp:Image runat="server" ImageUrl="~/Images/twitter.png" height="30" Width="30"/></a>
                    </asp:TableCell><asp:TableCell Width="300px"> 
                        <a href="About.aspx" style="color:white;text-decoration-line:none">About Us</a><br />
                        <a href="Subject.aspx" style="color:white;text-decoration-line:none">Subjects</a><br />
                        <a href="Signup.aspx" style="color:white;text-decoration-line:none">Sign Up</a><br />
                    </asp:TableCell><asp:TableCell Width="300px">
                        <asp:Label runat="server" Text="941 Progress Ave, Scarborough, ON M1G 3T8"></asp:Label>
                    </asp:TableCell></asp:TableRow></asp:Table></div></asp:Content>