<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="VaccinesTaken.aspx.cs" Inherits="VaccineProject.VaccinesTaken" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .UVTGrid {
            width:60%;
            height: 80%;
            text-align: center;
            margin-left: 350px;
        }
    </style>
    <script type="text/javascript">
        function clearDefaultText(textBox) {
            if (textBox.value === "Enter User Id to view the vaccination history.") {
                textBox.value = "";
            }
        }
        function restoreDefaultText(textBox) {
            if (textBox.value === "") {
                textBox.value = "Enter User Id to view the vaccination history."
            }
        }
    </script>
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <center><h2>Vaccines Taken</h2>
            <p>&nbsp;</p></center>
        <span style="margin-left: 20px;"> </span>
        <asp:TextBox ID="TextBox1" runat="server" Width="399px" onfocus="clearDefaultText(this)"  onblur="restoreDefaultText(this)" Height="32px"></asp:TextBox>
        <span style="margin-right: 15px;"></span>
        <asp:Button ID="Button1" runat="server" CssClass="custom-button" OnClick="Button1_Click" Text="Search" />
        <br />
        <br />
        <br />
        <asp:Label ID="LblMsg1" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Visible="false">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="VaccineName" HeaderText="VaccineName" SortExpression="VaccineName" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="NumberOfDose" HeaderText="NumberOfDose" SortExpression="NumberOfDose" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        </center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString56 %>" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString56.ProviderName %>" SelectCommand="SELECT [VaccineName], [Name], [NumberOfDose], [Status] FROM [BookForVaccine]"></asp:SqlDataSource>
        <br />
  
</asp:Content>
