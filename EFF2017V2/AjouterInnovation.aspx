<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AjouterInnovation.aspx.cs" Inherits="EFF2017V2.AjouterInnovation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            width: 182px;
        }
        .auto-style8 {
            height: 22px;
            width: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5" >
        <tr>
            <td class="auto-style7">Numéro</td>
            <td>
                <asp:TextBox ID="numero" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="numero" ErrorMessage="Veuillez remplir ce champ" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="numero" Display="Dynamic" ErrorMessage="Le numéro d'innovation  doit être &gt;= 2000 " ForeColor="Red" MaximumValue="10000" MinimumValue="2000" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Descriptif</td>
            <td class="auto-style6">
                <asp:TextBox ID="descriptif" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="descriptif" ErrorMessage="Veuillez remplir ce champ" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Resumé</td>
            <td>
                <asp:TextBox ID="resume" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="resume" ErrorMessage="Veuillez remplir ce champ" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Activité</td>
            <td>
                <asp:DropDownList ID="num_activite" runat="server" DataSourceID="SqlDataSource2" DataTextField="num_activite" DataValueField="num_activite" Height="16px" Width="125px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TP2017v2ConnectionString %>" SelectCommand="SELECT [num_activite] FROM [Activite]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="num_activite" ErrorMessage="Veuillez remplir ce champ" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP2017v2ConnectionString %>" InsertCommand="INSERT INTO [Innovation] ([num_innovation], [descriptif], [resume_inno], [num_activite]) VALUES (@num_innovation, @descriptif, @resume_inno, @num_activite)" SelectCommand="SELECT * FROM [Innovation]" DeleteCommand="DELETE FROM [Innovation] WHERE [num_innovation] = @num_innovation" UpdateCommand="UPDATE [Innovation] SET [descriptif] = @descriptif, [resume_inno] = @resume_inno, [num_activite] = @num_activite WHERE [num_innovation] = @num_innovation">
        <DeleteParameters>
            <asp:Parameter Name="num_innovation" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="num_innovation" Type="Int32" />
            <asp:Parameter Name="descriptif" Type="String" />
            <asp:Parameter Name="resume_inno" Type="String" />
            <asp:Parameter Name="num_activite" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="descriptif" Type="String" />
            <asp:Parameter Name="resume_inno" Type="String" />
            <asp:Parameter Name="num_activite" Type="Int32" />
            <asp:Parameter Name="num_innovation" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
