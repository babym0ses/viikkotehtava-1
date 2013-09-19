<%@ Page Title="" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_age.aspx.cs" Inherits="f6641_age" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><asp:Label ID="lblToday" runat="server" Text=""></asp:Label></div>
    <div><asp:Label ID="lblChosen" runat="server" Text=""></asp:Label></div>
    <div> <asp:Label ID="lblMath" runat="server" Text=""></asp:Label></div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="< Vuosi" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Vuosi >" OnClick="Button2_Click" /></div>


        <asp:Calendar ID="Calendar1" runat="server" Width="775px" OnSelectionChanged="Change" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#00ff00" />

    </asp:Calendar>
</asp:Content>

