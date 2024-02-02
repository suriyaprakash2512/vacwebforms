<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUserVaccine.aspx.cs" Inherits="VaccineProject.UpdateUserVaccine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        color: #660066;
            height: 54px;
        }
        .auto-style3 {
            width: 708px;
        }
        .auto-style5 {
            width: 200px;
        }
        .auto-style6 {
            width: 245px;
        }
        .auto-style7 {
            width: 708px;
            text-align: right;
        }
        .auto-style8 {
            width: 360px;
        }
        .auto-style9 {
            color: #000000;
        }
        .auto-style10 {
            width: 360px;
            text-align: center;
        }
        .auto-style11 {
            width: 708px;
            text-align: center;
        }
    </style>
<link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="5">
            <h2 class="auto-style9"><strong>Update User Status</strong></h2>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="551px">
                <Columns>
                    <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="NumberOfDose" HeaderText="NumberOfDose" SortExpression="NumberOfDose" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
                </center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString64 %>" DeleteCommand="DELETE FROM [BookForVaccine] WHERE [BookingId] = @original_BookingId AND [Name] = @original_Name AND (([NumberOfDose] = @original_NumberOfDose) OR ([NumberOfDose] IS NULL AND @original_NumberOfDose IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [BookForVaccine] ([Name], [NumberOfDose], [Status]) VALUES (@Name, @NumberOfDose, @Status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString64.ProviderName %>" SelectCommand="SELECT [BookingId], [Name], [NumberOfDose], [Status] FROM [BookForVaccine]" UpdateCommand="UPDATE [BookForVaccine] SET [Name] = @Name, [NumberOfDose] = @NumberOfDose, [Status] = @Status WHERE [BookingId] = @original_BookingId AND [Name] = @original_Name AND (([NumberOfDose] = @original_NumberOfDose) OR ([NumberOfDose] IS NULL AND @original_NumberOfDose IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_BookingId" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
                    <asp:Parameter Name="original_Status" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="NumberOfDose" Type="Int32" />
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="NumberOfDose" Type="Int32" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="original_BookingId" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
                    <asp:Parameter Name="original_Status" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">BookingId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style8">
            <asp:DropDownList ID="DDListBookId" runat="server" DataSourceID="SqlDataSource2" DataTextField="BookingId" DataValueField="BookingId" ValidationGroup="g2">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString65 %>" DeleteCommand="DELETE FROM [BookForVaccine] WHERE [BookingId] = @original_BookingId" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString65.ProviderName %>" SelectCommand="SELECT [BookingId] FROM [BookForVaccine]">
                <DeleteParameters>
                    <asp:Parameter Name="original_BookingId" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <br />
        </td>
        <td colspan="3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDListBookId" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Number Of Dose Taken&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style8">
            <asp:DropDownList ID="DDListDose" runat="server" DataSourceID="SqlDataSource3" DataTextField="NumberOfDose" DataValueField="NumberOfDose" ValidationGroup="g2">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString79 %>" DeleteCommand="DELETE FROM [VaccineDose] WHERE [NumberOfDose] = @original_NumberOfDose" InsertCommand="INSERT INTO [VaccineDose] ([NumberOfDose]) VALUES (@NumberOfDose)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString79.ProviderName %>" SelectCommand="SELECT * FROM [VaccineDose]">
                <DeleteParameters>
                    <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NumberOfDose" Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
        </td>
        <td colspan="3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDListDose" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Status&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style8">
            <asp:RadioButtonList ID="RadioBtnStatus" runat="server" DataSourceID="SqlDataSource4" DataTextField="Status" DataValueField="Status">
            </asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString69 %>" DeleteCommand="DELETE FROM [StatusOfVaccine] WHERE [Status] = @original_Status" InsertCommand="INSERT INTO [StatusOfVaccine] ([Status]) VALUES (@Status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString69.ProviderName %>" SelectCommand="SELECT * FROM [StatusOfVaccine]">
                <DeleteParameters>
                    <asp:Parameter Name="original_Status" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
&nbsp;&nbsp;
        </td>
        <td colspan="3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioBtnStatus" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style8">
            <asp:Button ID="BtnUpdate" runat="server" OnClick="BtnUpdate_Click" CssClass="custom-button" Text="Update" ValidationGroup="g2" />
        </td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="5">
            <h2>Enter UserId to search for user details</h2>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="custom-button" Text="Search" ValidationGroup="g3" />
        &nbsp;
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="TxtSearch" runat="server" ValidationGroup="g3"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioBtnStatus" ErrorMessage="*" ForeColor="Red" ValidationGroup="g3"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style6">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtSearch" ErrorMessage="Enter Proper ID" ForeColor="Red" ValidationExpression="^[0-9]\d*$" ValidationGroup="g3"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>