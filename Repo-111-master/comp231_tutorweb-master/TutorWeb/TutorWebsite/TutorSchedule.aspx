<%@ Page Title="TutorSchedule" Language="C#" MasterPageFile="~/TutorWebsite/MasterPage.master" AutoEventWireup="true" CodeFile="TutorSchedule.aspx.cs" Inherits="TutorSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:Table ID="Table1" runat="server" Width="224px" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Calendar ID="cal1"  OnSelectionChanged="cal1_SelectionChanged" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
          <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
          <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
          <OtherMonthDayStyle ForeColor="#999999" />
          <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
          <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
          <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
          <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
          <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
            </asp:TableCell>
             <asp:TableCell>
                 
                     <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Vertical" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                    <asp:ListItem  Text="10:00" Value="10:00"></asp:ListItem>
                    <asp:ListItem Text="11:00" Value="11:00"></asp:ListItem>
                    <asp:ListItem Text="12:00" Value="12:00"></asp:ListItem>
                    <asp:ListItem Text="13:00" Value="13:00"></asp:ListItem>
                    <asp:ListItem Text="14:00" Value="14:00"></asp:ListItem>
                    <asp:ListItem Text="15:00" Value="15:00"></asp:ListItem>
                    <asp:ListItem Text="16:00" Value="16:00"></asp:ListItem>
                    <asp:ListItem Text="17:00" Value="17:00"></asp:ListItem>
                 </asp:CheckBoxList>    
              
            </asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
            
              <asp:TableCell>
              <asp:Button ID="submitBTN" OnClick="submitBTN_Click" Text="SUBMIT" runat="server" />
              </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="submitrow">
           
            <asp:TableCell ID="result" runat="server">
            <asp:Label ID="daylabel" runat="server"></asp:Label>
            <asp:Label ID="label1"  runat="server"></asp:Label>
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        

            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>

