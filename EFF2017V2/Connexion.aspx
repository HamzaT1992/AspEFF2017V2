<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="EFF2017V2.Connexion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 26px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style5">
        <tr>
            <td class="auto-style8" colspan="2"><span style="margin-left: 200px">Connexion</span>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Numéro</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="144px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Veillez saisir le Numéro d'activité" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Mot de Passe</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Width="144px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Veillez saisir le Mot de Passe" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" Text="Connecter" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content>
