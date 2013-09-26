<%@ Page Title="" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_gridview.aspx.cs" Inherits="f6641_gridview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HueHueConString %>" SelectCommand="SELECT [title], [director], [year] FROM [Movies]"></asp:SqlDataSource>
    <h2>DataList kontrolli</h2>
    <p>Datalist esittää datan html-taulussa, määritetään esitettävä data itemtemplatella</p>
    <asp:DataList ID="DataList1" DataSourceID="SqlDataSource1" runat="server">
        <ItemTemplate>Elokuvan <%#Eval("title") %>on ohjannut <%#Eval("director")  %></ItemTemplate>


    </asp:DataList>
    <h2>Repeater kontroll</h2>
    <p>Repeater näyttää datarivejä käyttäen templatea, ei renderoi automaagisesti HTML-taulua</p>
    <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
        <ItemTemplate>
            Movie <%#Eval("title")  %>, directed by <b><%#Eval("director") %><br />
            </b>
        </ItemTemplate>
    </asp:Repeater>
    <h2>ListView -kontrollit</h2>
    <p>Tämäkin näyttää datarivejä käyttäen templatea, tukee sorttausta, sivutusta ja datan editointia</p>
    <asp:ListView ID="ListView1" DataSourceID="SqlDataSource1" runat="server">

        <LayoutTemplate>
            <div id="itemPlaceholder" runat="server">
            <asp:DataPager ID="pager1" PageSize="4" runat="server">
                <Fields>
                    <asp:NumericPagerField />
                </Fields>

            </asp:DataPager>
            </div>
        </LayoutTemplate>

        <ItemTemplate>
            Movie <%#Eval("title")  %>, directed by <b><%#Eval("director") %><br />
            </b>
        </ItemTemplate>

    </asp:ListView>
</asp:Content>

