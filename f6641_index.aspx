<%@ Page Title="Koti ja sivu" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_index.aspx.cs" Inherits="f6641_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Tuntitehtävää</h1>
        <asp:HyperLink ID="linkKalenteri" runat="server" NavigateUrl="~/f6641_age.aspx">Kalenteri</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/f6641_gridview.aspx">datacontrol</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/f6641_datacontrols2.aspx">datacontrol</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/f6641_records.aspx">datacontrol</asp:HyperLink>
    </div>

    <div>
        <h2>Viikkotehtävä 1</h2>
    </div>

    <div>
        <asp:Label ID="Label1" runat="server" Text="Nimi:"></asp:Label>
        <asp:TextBox ID="txtNimi" runat="server"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" Text="Välitä parametreinä" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Tallenna Session" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Tallenna Keksiin" OnClick="Button3_Click" />
    </div>


     <div><h2><asp:HyperLink ID="linkTehtava2" runat="server" NavigateUrl="~/f6641_tehtava2.aspx">Viikkotehtävä 2</asp:HyperLink></h2></div>
 

    <div>
     <div><h2><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/f6641_ValiPalaute.aspx">TuntiTehtävä: Välipalaute</asp:HyperLink></h2></div>
    </div>

</asp:Content>

