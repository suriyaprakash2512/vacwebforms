<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateVaccineDetails.aspx.cs" Inherits="VaccineProject.UpdateVaccineDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
            width: 630px;
        }
    .auto-style4 {
            width: 359px;
        }
    .auto-style5 {
            width: 232px;
        }
        .auto-style7 {
            width: 630px;
            text-align: right;
        }
        .auto-style8 {
            width: 630px;
            text-align: center;
        }
        .auto-style9 {
            width: 359px;
            text-align: left;
        }
        .auto-style10 {
            width: 359px;
            text-align: center;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <center>
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="4">
            <h2><strong>Update Vaccine Details</strong></h2>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
        </center>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Vaccine Name&nbsp;&nbsp;&nbsp; </td>
    <center>
        <td class="auto-style9">
            <asp:TextBox ID="TxtVacName" runat="server" ValidationGroup="g1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtVacName" ErrorMessage="*" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
        </td>
        <td colspan="2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TxtVacName" ErrorMessage="Enter Correct Vaccine Name" ForeColor="Red" ValidationGroup="g1" ValidationExpression="^[a-zA-Z0-9!@#$%^&amp;*()_+{}\[\]:;&lt;&gt;,.?~\\-]+$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Manufacturer&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style9">
            <asp:TextBox ID="TxtVacMan" runat="server" ValidationGroup="g1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtVacMan" ErrorMessage="*" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
        </td>
        <td colspan="2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtVacMan" ErrorMessage="Enter Proper Manufacturer Detail" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9!@#$%^&amp;*()_+{}\[\]:;&lt;&gt;,.?~\\-]+$" ValidationGroup="g1"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Stock&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style9">
            <strong>
            <asp:TextBox ID="TxtVaxStock" runat="server" ValidationGroup="g1" TextMode="Number"></asp:TextBox>
            </strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtVaxStock" ErrorMessage="*" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
        </td>
        <td colspan="2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtVaxStock" ErrorMessage="Enter Proper Stock" ForeColor="Red" ValidationExpression="^[0-9]\d*$" ValidationGroup="g1"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" CssClass="custom-button" Text="Add New Vaccines" ValidationGroup="g1" />
        </td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="VaccineName" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None" Width="439px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="VaccineName" HeaderText="VaccineName" ReadOnly="True" SortExpression="VaccineName" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
              </center>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString90 %>" DeleteCommand="DELETE FROM [VaccineDetails] WHERE [VaccineName] = @original_VaccineName AND (([Manufacturer] = @original_Manufacturer) OR ([Manufacturer] IS NULL AND @original_Manufacturer IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))" InsertCommand="INSERT INTO [VaccineDetails] ([VaccineName], [Manufacturer], [Stock]) VALUES (@VaccineName, @Manufacturer, @Stock)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString90.ProviderName %>" SelectCommand="SELECT * FROM [VaccineDetails]" UpdateCommand="UPDATE [VaccineDetails] SET [Manufacturer] = @Manufacturer, [Stock] = @Stock WHERE [VaccineName] = @original_VaccineName AND (([Manufacturer] = @original_Manufacturer) OR ([Manufacturer] IS NULL AND @original_Manufacturer IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))">
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
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Vaccine Name&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style9">
            <asp:DropDownList ID="DDLVname" runat="server" DataSourceID="SqlDataSource1" DataTextField="VaccineName" DataValueField="VaccineName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString87 %>" DeleteCommand="DELETE FROM [VaccineDetails] WHERE [VaccineName] = @original_VaccineName" InsertCommand="INSERT INTO [VaccineDetails] ([VaccineName]) VALUES (@VaccineName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString87.ProviderName %>" SelectCommand="SELECT [VaccineName] FROM [VaccineDetails]">
                <DeleteParameters>
                    <asp:Parameter Name="original_VaccineName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="VaccineName" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Manufacturer&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style9">
            <asp:TextBox ID="TxtVacMan2" runat="server" ValidationGroup="g2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2" ControlToValidate="TxtVacMan2"></asp:RequiredFieldValidator>
        </td>
        <td colspan="2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtVacMan2" ErrorMessage="Enter Proper Manufacturer Name" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9!@#$%^&amp;*()_+{}\[\]:;&lt;&gt;,.?~\\-]+$" ValidationGroup="g2"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Stock&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style9">
            <asp:TextBox ID="TxtVaxStock2" runat="server" ValidationGroup="g2" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2" ControlToValidate="TxtVaxStock2"></asp:RequiredFieldValidator>
        </td>
        <td colspan="2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtVaxStock2" ErrorMessage="Enter Proper StockNo" ForeColor="Red" ValidationExpression="^[0-9]\d*$" ValidationGroup="g2"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="LblMsg2" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:Button ID="BtnUpd" runat="server" CssClass="custom-button" OnClick="BtnUpd_Click" Text="Update Vaccines" ValidationGroup="g2" />
        </td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Choose Vaccine NameTo Delete&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style9">
            <asp:DropDownList ID="DDLdlt" runat="server" DataSourceID="SqlDataSource2" DataTextField="VaccineName" DataValueField="VaccineName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString88 %>" DeleteCommand="DELETE FROM [VaccineDetails] WHERE [VaccineName] = @original_VaccineName" InsertCommand="INSERT INTO [VaccineDetails] ([VaccineName]) VALUES (@VaccineName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString88.ProviderName %>" SelectCommand="SELECT [VaccineName] FROM [VaccineDetails]">
                <DeleteParameters>
                    <asp:Parameter Name="original_VaccineName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="VaccineName" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style9">
            <asp:Button ID="BtnDlt" runat="server" OnClick="BtnDlt_Click" CssClass="custom-button" Text="Delete" ValidationGroup="g3" />
        </td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="LblMsg3" runat="server"></asp:Label>
        </td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
        </center>
    </table>
</asp:Content>