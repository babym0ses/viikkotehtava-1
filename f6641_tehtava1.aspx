<%@ Page Title="" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_tehtava1.aspx.cs" Inherits="f6641_tehtava1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div> <asp:Label ID="Label1" runat="server" Text="Tervetuloa:" style="font-size: xx-large; font-weight: 700"></asp:Label></div>
   <div> <asp:Label ID="lblName" runat="server" Text="Name" style="font-size: large; color: #FF0066"></asp:Label></div>
  <div> <asp:TextBox ID="txtGivenMoney" runat="server"></asp:TextBox></div>
   <div><asp:Button ID="txtCalculate" runat="server" Text="Markat euroiksi" OnClick="txtCalculate_Click" /></div>
    <div>
        <asp:Label ID="lblResult" runat="server" Text="0€" style="font-weight: 700; font-size: large"></asp:Label></div>
</asp:Content>

