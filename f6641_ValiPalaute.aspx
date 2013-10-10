<%@ Page Title="" Language="C#" MasterPageFile="~/f6641_MasterPage.master" AutoEventWireup="true" CodeFile="f6641_ValiPalaute.aspx.cs" Inherits="f6641_ValiPalaute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="hiider1" Text="Anna palautetta" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Pvm" Width="130px"></asp:Label>

    <asp:TextBox ID="txtDate" runat="server" BorderStyle="Groove"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nimi" Width="130px"></asp:Label>
    <asp:TextBox ID="txtName" runat="server" BorderStyle="Groove"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ControlToValidate="txtName"
        ErrorMessage="Nimi puuttuu"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <br />

    <asp:Label ID="Label4" runat="server" Text="Olen Oppinut" Width="130px"></asp:Label>
    <asp:TextBox ID="txtLearned" runat="server" Rows="3" BorderStyle="Groove"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        ControlToValidate="txtLearned"
        ErrorMessage="Olen oppinut kenttä tyhjä"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <br />

    <asp:Label ID="Label5" runat="server" Text="Haluan oppia" Width="130px"></asp:Label>
    <asp:TextBox ID="txtWannalearn" runat="server" Rows="3" BorderStyle="Groove"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
        ControlToValidate="txtWannalearn"
        ErrorMessage="Haluan oppia kenttä tyhjä"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <br />
    <asp:Label ID="Label6" runat="server" Text="Hyvää opintojaksossa" Width="130px"></asp:Label>
    <asp:TextBox ID="txtGood" runat="server" BorderStyle="Groove"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
        ControlToValidate="txtGood"
        ErrorMessage="Hyvää opintojaksossa kenttä tyhjä"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <br />
    <asp:Label ID="Label7" runat="server" Text="Parannettavaa" Width="130px"></asp:Label>
    <asp:TextBox ID="txtImprove" runat="server" BorderStyle="Groove"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
        ControlToValidate="txtImprove"
        ErrorMessage="Parannettavaa kenttä tyhjä"
        ForeColor="Red">
    </asp:RequiredFieldValidator>



    <br />
    <asp:Label ID="Label8" runat="server" Text="Muuta" Width="130px"></asp:Label>
    <asp:TextBox ID="txtOther" runat="server" BorderStyle="Groove"></asp:TextBox>
    <br />
    <asp:Button ID="btnSend" CssClass="big-button" runat="server" Text="Lähetä palaute" OnClick="btnSend_Click" />
    <br />
    <asp:Label ID="Label9" runat="server" Text="Palautteet" Font-Bold="True" Font-Size="Large"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnGetxml" runat="server" CssClass="big-button" Text="Hae palautteet" CausesValidation="false" OnClick="Button1_Click" />
    <br />
    <br />
    
 


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" DataSourceID="">

    </asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Palautteet.xml" TransformFile="~/App_Data/palautteet.xsl"></asp:XmlDataSource>
    
 


</asp:Content>

