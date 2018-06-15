<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Innovations.aspx.cs" Inherits="EFF2017V2.Innovation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="num_innovation" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="num_innovation" HeaderText="num_innovation" ReadOnly="True" SortExpression="num_innovation" />
            <asp:BoundField DataField="descriptif" HeaderText="descriptif" ReadOnly="True" SortExpression="descriptif" />
            <asp:BoundField DataField="resume_inno" HeaderText="resume_inno" SortExpression="resume_inno" />
            <asp:TemplateField HeaderText="num_activite" SortExpression="num_activite">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="num_activite" DataValueField="num_activite" SelectedValue='<%# Bind("num_activite") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TP2017v2ConnectionString %>" SelectCommand="SELECT [num_activite] FROM [Activite]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("num_activite") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandArgument='<%# Eval("num_innovation") %>' CommandName="Select" OnCommand="LinkButton2_Command" Text="Select"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('Voulez vous vraiment supprimer?');" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP2017v2ConnectionString %>" DeleteCommand="DELETE FROM [Innovation] WHERE [num_innovation] = @num_innovation" InsertCommand="INSERT INTO [Innovation] ([num_innovation], [descriptif], [resume_inno], [num_activite]) VALUES (@num_innovation, @descriptif, @resume_inno, @num_activite)" SelectCommand="SELECT * FROM [Innovation]" UpdateCommand="UPDATE [Innovation] SET [descriptif] = @descriptif, [resume_inno] = @resume_inno, [num_activite] = @num_activite WHERE [num_innovation] = @num_innovation">
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
    <asp:SqlDataSource ID="filter" runat="server"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="num_certificat" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="num_certificat" HeaderText="num_certificat" ReadOnly="True" SortExpression="num_certificat" />
            <asp:BoundField DataField="description_certificat" HeaderText="description_certificat" SortExpression="description_certificat" />
            <asp:BoundField DataField="date_depot" HeaderText="date_depot" SortExpression="date_depot" />
            <asp:BoundField DataField="date_validation" HeaderText="date_validation" SortExpression="date_validation" />
            <asp:BoundField DataField="num_auteur" HeaderText="num_auteur" SortExpression="num_auteur" />
            <asp:BoundField DataField="num_innovation" HeaderText="num_innovation" SortExpression="num_innovation" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TP2017v2ConnectionString %>" SelectCommand="SELECT * FROM [Certificat] WHERE ([num_innovation] = @num_innovation)">
        <SelectParameters>
            <asp:SessionParameter Name="num_innovation" SessionField="num_innovation" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
