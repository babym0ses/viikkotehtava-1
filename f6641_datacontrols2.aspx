<%@ Page Title="" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_datacontrols2.aspx.cs" Inherits="datacontrols2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HueHueConString %>" SelectCommand="SELECT [title], [director], [year] FROM [Movies]"></asp:SqlDataSource>


    <h1>DataControls to display single date item</h1>
    <h2>DetailsView -control</h2>
    <p>Näyttää datan html taulussa, tarvittaessa mahdollistaa lisäämisen ja muokkaamisen</p>
    <asp:DetailsView ID="DetailsView1" DataSourceID="SqlDataSource1" runat="server" AllowPaging="true" />

    <h2>FormView -control</h2>
    <p>Näyttää data ItemTemplaten avulla</p>
    <asp:FormView ID="Formview1" DataSourceID="SqlDataSource1" runat="server" AllowPaging="true" >
        <ItemTemplate>
            <h3><%#Eval("title") %></h3> directed by <%#Eval("director") %> <%#Eval ("year") %> 

        </ItemTemplate>

    </asp:FormView>
</asp:Content>

