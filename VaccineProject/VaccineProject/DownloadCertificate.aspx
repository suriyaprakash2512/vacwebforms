<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DownloadCertificate.aspx.cs" Inherits="VaccineProject.DownloadCertificate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><span style="margin-left:20px;"></span>
<asp:Button ID="BtnDw" runat="server" OnClick="BtnDw_Click" CssClass="custom-button" Text="Download Certificate" />
    <br />
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
        <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
        <asp:BoundField DataField="VaccineName" HeaderText="VaccineName" SortExpression="VaccineName" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString85 %>" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString85.ProviderName %>" SelectCommand="SELECT [BookingId], [UserID], [Name], [MobileNumber], [CityName], [VaccineName] FROM [BookForVaccine]"></asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
