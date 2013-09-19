<%@ Page Title="Viikkotehtävä 1" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_valuuttamuunnin.aspx.cs" Inherits="f6641_valuuttamuunnin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Teretulemas muuntimehen!!</h1>
    <div><asp:TextBox ID="txtName" text="tähän nimi" runat="server" Enabled="False"></asp:TextBox></div>
    <div>Muunna bitcoinit euroiksi! Anna coinien määrä</div>
    
        
        <div><asp:TextBox ID="txtCash" runat="server"></asp:TextBox>
        <asp:Button ID="btnConvert" runat="server" Text="Muunna" OnClick="btnConvert_Click" /></div>
        <div><asp:Label ID="lblCurrency" runat="server" Text="..."></asp:Label></div>
        
    <asp:ListBox ID="lstOne" Width="300" runat="server"></asp:ListBox>
    <asp:ListBox ID="lstTwo" Width="300" runat="server" EnableViewState="False"></asp:ListBox>

 


</asp:Content>

