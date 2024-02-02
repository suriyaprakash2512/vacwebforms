<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AvailableVaccines.aspx.cs" Inherits="VaccineProject.Available_Vaccines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .UAVGrid
        {
          width:60%;
          height: 80%;
          text-align: center;
          margin-left: 350px;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h2>Available Vaccines</h2><br />
    <div class="UAVGrid">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VaccineName" DataSourceID="SqlDataSource2" Width="476px" Height="209px" CellPadding="4" CellSpacing="2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="VaccineName" HeaderText="VaccineName" ReadOnly="True" SortExpression="VaccineName" />
        <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
        <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString89 %>" DeleteCommand="DELETE FROM [VaccineDetails] WHERE [VaccineName] = @original_VaccineName AND (([Manufacturer] = @original_Manufacturer) OR ([Manufacturer] IS NULL AND @original_Manufacturer IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))" InsertCommand="INSERT INTO [VaccineDetails] ([VaccineName], [Manufacturer], [Stock]) VALUES (@VaccineName, @Manufacturer, @Stock)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString89.ProviderName %>" SelectCommand="SELECT * FROM [VaccineDetails]" UpdateCommand="UPDATE [VaccineDetails] SET [Manufacturer] = @Manufacturer, [Stock] = @Stock WHERE [VaccineName] = @original_VaccineName AND (([Manufacturer] = @original_Manufacturer) OR ([Manufacturer] IS NULL AND @original_Manufacturer IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_VaccineName" Type="String" />
                <asp:Parameter Name="original_Manufacturer" Type="String" />
                <asp:Parameter Name="original_Stock" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="VaccineName" Type="String" />
                <asp:Parameter Name="Manufacturer" Type="String" />
                <asp:Parameter Name="Stock" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Manufacturer" Type="String" />
                <asp:Parameter Name="Stock" Type="Int32" />
                <asp:Parameter Name="original_VaccineName" Type="String" />
                <asp:Parameter Name="original_Manufacturer" Type="String" />
                <asp:Parameter Name="original_Stock" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
        </center>
</asp:Content>
