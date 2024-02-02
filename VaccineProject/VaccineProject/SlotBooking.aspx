<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SlotBooking.aspx.cs" Inherits="VaccineProject.SlotBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style4 {
            height: 26px;
        }
        .auto-style8 {
            width: 699px;
        }
        .auto-style9 {
            height: 26px;
            width: 699px;
        }
        .auto-style10 {
            width: 588px;
            text-align: right;
        }
        .auto-style11 {
            width: 588px;
            height: 26px;
            text-align: right;
        }
        .auto-style12 {
            width: 588px;
        }
        .auto-style13 {
            height: 26px;
            width: 588px;
        }
        .auto-style14 {
            height: 29px;
            text-align: center;
        }
        .auto-style15 {
            margin-left: 71px;
        }
    </style>
<link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <center>
    <tr>
        <td colspan="7"> 
            <h2 class="text-center"><strong>Book Your Slot</strong></h2>
        </td>
    </tr>
   
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>

    </tr>
   
    <tr>
        <td class="auto-style10">UserID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style8">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>

    </tr>
   
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>

    </tr>
   
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>

    </tr>
    <tr>
        <td class="auto-style10">Vaccine Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style8">
            <asp:DropDownList ID="DDLVID" runat="server" DataSourceID="SqlDataSource2" DataTextField="VaccineName" DataValueField="VaccineName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString80 %>" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString80.ProviderName %>" SelectCommand="SELECT [VaccineName] FROM [VaccineDetails]"></asp:SqlDataSource>
        </td>
       
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
       
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
       
    </tr>
    <tr>
        <td class="auto-style10">City Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style8">
            <asp:DropDownList ID="DDLCID" runat="server" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName" OnSelectedIndexChanged="Button1_Click">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString81 %>" DeleteCommand="DELETE FROM [Location] WHERE [CityName] = @original_CityName" InsertCommand="INSERT INTO [Location] ([CityName]) VALUES (@CityName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString81.ProviderName %>" SelectCommand="SELECT [CityName] FROM [Location]">
                <DeleteParameters>
                    <asp:Parameter Name="original_CityName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CityName" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
       
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style11">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style9">
            <asp:TextBox ID="TxtBName" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtBName" ErrorMessage="*" ForeColor="Red" ValidationGroup="g20"></asp:RequiredFieldValidator>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtBName" ErrorMessage="Enter Proper Input" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="g20"></asp:RegularExpressionValidator>
        </td>

    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>

    </tr>
    <tr>
        <td class="auto-style11">MobileNumber&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style9">
            <asp:TextBox ID="TxtMbl" runat="server"></asp:TextBox>
            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMbl" ErrorMessage="*" ForeColor="Red" ValidationGroup="g20"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtMbl" ErrorMessage="Enter valid mobile number" ForeColor="Red" ValidationExpression="^\d{10}$" ValidationGroup="g20"></asp:RegularExpressionValidator>
        </td>

    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>

    </tr>
    <tr>
        <td class="auto-style4" colspan="2">
            <div class="text-center">
                <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DateTimings" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="auto-style15" Width="408px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="DatetimeID" HeaderText="DatetimeID" InsertVisible="False" ReadOnly="True" SortExpression="DatetimeID" />
                    <asp:BoundField DataField="DateTimings" HeaderText="DateTimings" ReadOnly="True" SortExpression="DateTimings" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                    </center>
            </div>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString72 %>" DeleteCommand="DELETE FROM [DateTimeSlots] WHERE [DateTimings] = @original_DateTimings AND [DatetimeID] = @original_DatetimeID" InsertCommand="INSERT INTO [DateTimeSlots] ([DateTimings]) VALUES (@DateTimings)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString72.ProviderName %>" SelectCommand="SELECT * FROM [DateTimeSlots]" UpdateCommand="UPDATE [DateTimeSlots] SET [DatetimeID] = @DatetimeID WHERE [DateTimings] = @original_DateTimings AND [DatetimeID] = @original_DatetimeID">
                <DeleteParameters>
                    <asp:Parameter Name="original_DateTimings" Type="DateTime" />
                    <asp:Parameter Name="original_DatetimeID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DateTimings" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DatetimeID" Type="Int32" />
                    <asp:Parameter Name="original_DateTimings" Type="DateTime" />
                    <asp:Parameter Name="original_DatetimeID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>

    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>

    </tr>
    <tr>
        <td class="auto-style10">DateTime ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style8">
            <asp:DropDownList ID="DDLDID" runat="server" DataSourceID="SqlDataSource3" DataTextField="DatetimeID" DataValueField="DatetimeID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString74 %>" DeleteCommand="DELETE FROM [DateTimeSlots] WHERE [DatetimeID] = @original_DatetimeID" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString74.ProviderName %>" SelectCommand="SELECT [DatetimeID] FROM [DateTimeSlots]">
                <DeleteParameters>
                    <asp:Parameter Name="original_DatetimeID" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </td>
        
    </tr>
    <tr>
        <td class="auto-style12" rowspan="3">&nbsp;</td>
       
    </tr>
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
       
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Button ID="BtnBook" runat="server" CssClass="custom-button" OnClick="Button1_Click" Text="BookSlot" />
        </td>
    </tr>
    
   
    <tr>
        <td class="auto-style14" colspan="2">
            <asp:Label ID="LBLbooking0" runat="server" ForeColor="Red"></asp:Label>
        </td>
        
    </tr>
    <tr>
        
        <td class="auto-style12">
            &nbsp;</td>
       
    </tr>
    <tr>
        
        <td class="auto-style12">
            &nbsp;</td>
       
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>      
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>      
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>      
    </tr>
        </center>
</table>
</asp:Content>