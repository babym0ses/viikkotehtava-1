<%@ Page Title="Koti ja sivu" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_index.aspx.cs" Inherits="f6641_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Tuntitehtävää</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/f6641_age.aspx">Kalenteri</asp:HyperLink>
 
    </div>

    <div>
        <h2>Viikkotehtävä 1</h2>
    </div>

    <div>
        <asp:Label ID="Label1" runat="server" Text="Nimi:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="lblCurrency" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Välitä parametreinä" />
        <asp:Button ID="Button2" runat="server" Text="Tallenna Session" />
        <asp:Button ID="Button3" runat="server" Text="Tallenna Keksiin" />
    </div>




</asp:Content>

