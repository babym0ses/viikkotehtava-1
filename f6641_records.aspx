<%@ Page Title="" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_records.aspx.cs" Inherits="f6641_records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Records.xml" TransformFile="~/App_Data/Records.xsl" ></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/Records2.xml"></asp:XmlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="XmlDataSource2">

    </asp:GridView>
    <h2>records 2(with .xls)</h2>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="XmlDataSource1">

    </asp:GridView>
</asp:Content>

