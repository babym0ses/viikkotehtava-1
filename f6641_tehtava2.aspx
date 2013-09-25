<%@ Page Title="" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_tehtava2.aspx.cs" Inherits="f6641_tehtava2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="well" id="pageContent" runat="server">
    <h1>Alappa säästelemään eläkettä</h1>
    <h2>Laske tästä eläkkeesi tulevaisuudessa!</h2>
    <asp:Label ID="lblAge" runat="server" Text="Ikä"></asp:Label>
    <div>
        <asp:Button ID="btnSubtAge" runat="server" Text="-" OnClick="btnSubtAge_Click" />
        <asp:TextBox ID="txtAge" runat="server"  Text="25"></asp:TextBox>
        <asp:Button ID="btnAddAge" runat="server" Text="+" OnClick="btnAddAge_Click" />
    </div>

    <asp:Label ID="lblSalary" runat="server" Text="Palkka"></asp:Label>
        <div>
        <asp:Button ID="btnSubtSalary" runat="server" Text="-" OnClick="btnSubtSalary_Click" />
        <asp:TextBox ID="txtSalary" runat="server" Text="10000"></asp:TextBox>
        <asp:Button ID="btnAddSalary" runat="server" Text="+" OnClick="btnAddSalary_Click" />
    </div>
    <asp:Button ID="btnCalc" runat="server" Text="Laske" OnClick="btnCalc_Click" />
       <br />
        <br />

    <div>
        <asp:Label ID="lblCalcCash" runat="server" Text="€€€€"></asp:Label>
    </div>
        </div>
    <asp:Button ID="btnMore" runat="server" Text="Lisää inffua" OnClick="btnMore_Click" />
</asp:Content>

