<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="EFF2017V2.Acceuil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Numéro d'activité'" DataSourceID="SqlDataSource1" Height="50px" Width="176px">
    <Fields>
        <asp:BoundField DataField="Nom d'activité'" HeaderText="Nom d'activité'" SortExpression="Nom d'activité'" />
        <asp:BoundField DataField="Numéro d'activité'" HeaderText="Numéro d'activité'" ReadOnly="True" SortExpression="Numéro d'activité'" />
        <asp:BoundField DataField="Nombre d'innovations'" HeaderText="Nombre d'innovations'" ReadOnly="True" SortExpression="Nombre d'innovations'" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP2017v2ConnectionString %>" SelectCommand="SELECT Activite.nom_activitre AS [Nom d'activité'], Activite.num_activite AS [Numéro d'activité'], COUNT(*) AS [Nombre d'innovations'] FROM Activite INNER JOIN Innovation ON Activite.num_activite = Innovation.num_activite GROUP BY Activite.nom_activitre, Activite.num_activite HAVING (Activite.num_activite = @num_activite)">
    <SelectParameters>
        <asp:CookieParameter CookieName="user" Name="num_activite" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
