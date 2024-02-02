<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Rescheduleslot.aspx.cs" Inherits="VaccineProject.Rescheduleslot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-right: 0px;
    }
</style>
     <script type="text/javascript">
         function clearDefaultText(textBox) {
             if (textBox.value === "Enter User Id to view the slot history.") {
                 textBox.value = "";
             }
         }
         function restoreDefaultText(textBox) {
             if (textBox.value === "") {
                 textBox.value = "Enter User Id to view the slot history."
             }
         }
     </script>
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
<p>
    &nbsp;&nbsp;&nbsp;</p>
    <p class="text-center">
    &nbsp;&nbsp;
    <asp:TextBox ID="TextSearch" runat="server" Width="377px" onfocus="clearDefaultText(this)"  onblur="restoreDefaultText(this)"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="TxtSearch" runat="server" Text="Search" OnClick="TxtSearch_Click" />
</p>
    <p class="text-center">
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        <center>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="DatetimeID" DataSourceID="SqlDataSource2" Width="363px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="DatetimeID" HeaderText="DatetimeID" InsertVisible="False" ReadOnly="True" SortExpression="DatetimeID" />
            <asp:BoundField DataField="DateTimings" HeaderText="DateTimings" SortExpression="DateTimings" />
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
            <br />
            <br />
            </center>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString83 %>" DeleteCommand="DELETE FROM [DateTimeSlots] WHERE [DatetimeID] = @original_DatetimeID AND (([DateTimings] = @original_DateTimings) OR ([DateTimings] IS NULL AND @original_DateTimings IS NULL))" InsertCommand="INSERT INTO [DateTimeSlots] ([DateTimings]) VALUES (@DateTimings)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString83.ProviderName %>" SelectCommand="SELECT * FROM [DateTimeSlots]" UpdateCommand="UPDATE [DateTimeSlots] SET [DateTimings] = @DateTimings WHERE [DatetimeID] = @original_DatetimeID AND (([DateTimings] = @original_DateTimings) OR ([DateTimings] IS NULL AND @original_DateTimings IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_DatetimeID" Type="Int32" />
            <asp:Parameter Name="original_DateTimings" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DateTimings" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DateTimings" Type="DateTime" />
            <asp:Parameter Name="original_DatetimeID" Type="Int32" />
            <asp:Parameter Name="original_DateTimings" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" Visible="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
        <asp:BoundField DataField="VaccineName" HeaderText="VaccineName" SortExpression="VaccineName" />
        <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
        <asp:BoundField DataField="DatetimeID" HeaderText="DatetimeID" SortExpression="DatetimeID" />
        <asp:BoundField DataField="NumberOfDose" HeaderText="NumberOfDose" SortExpression="NumberOfDose" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString82 %>" DeleteCommand="DELETE FROM [BookForVaccine] WHERE [BookingId] = @original_BookingId AND [Name] = @original_Name AND [MobileNumber] = @original_MobileNumber AND (([VaccineName] = @original_VaccineName) OR ([VaccineName] IS NULL AND @original_VaccineName IS NULL)) AND (([CityName] = @original_CityName) OR ([CityName] IS NULL AND @original_CityName IS NULL)) AND (([DatetimeID] = @original_DatetimeID) OR ([DatetimeID] IS NULL AND @original_DatetimeID IS NULL)) AND (([NumberOfDose] = @original_NumberOfDose) OR ([NumberOfDose] IS NULL AND @original_NumberOfDose IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [BookForVaccine] ([Name], [MobileNumber], [VaccineName], [CityName], [DatetimeID], [NumberOfDose], [Status]) VALUES (@Name, @MobileNumber, @VaccineName, @CityName, @DatetimeID, @NumberOfDose, @Status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString82.ProviderName %>" SelectCommand="SELECT [BookingId], [Name], [MobileNumber], [VaccineName], [CityName], [DatetimeID], [NumberOfDose], [Status] FROM [BookForVaccine]" UpdateCommand="UPDATE [BookForVaccine] SET [Name] = @Name, [MobileNumber] = @MobileNumber, [VaccineName] = @VaccineName, [CityName] = @CityName, [DatetimeID] = @DatetimeID, [NumberOfDose] = @NumberOfDose, [Status] = @Status WHERE [BookingId] = @original_BookingId AND [Name] = @original_Name AND [MobileNumber] = @original_MobileNumber AND (([VaccineName] = @original_VaccineName) OR ([VaccineName] IS NULL AND @original_VaccineName IS NULL)) AND (([CityName] = @original_CityName) OR ([CityName] IS NULL AND @original_CityName IS NULL)) AND (([DatetimeID] = @original_DatetimeID) OR ([DatetimeID] IS NULL AND @original_DatetimeID IS NULL)) AND (([NumberOfDose] = @original_NumberOfDose) OR ([NumberOfDose] IS NULL AND @original_NumberOfDose IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_BookingId" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_MobileNumber" Type="String" />
        <asp:Parameter Name="original_VaccineName" Type="String" />
        <asp:Parameter Name="original_CityName" Type="String" />
        <asp:Parameter Name="original_DatetimeID" Type="Int32" />
        <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
        <asp:Parameter Name="original_Status" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="MobileNumber" Type="String" />
        <asp:Parameter Name="VaccineName" Type="String" />
        <asp:Parameter Name="CityName" Type="String" />
        <asp:Parameter Name="DatetimeID" Type="Int32" />
        <asp:Parameter Name="NumberOfDose" Type="Int32" />
        <asp:Parameter Name="Status" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="MobileNumber" Type="String" />
        <asp:Parameter Name="VaccineName" Type="String" />
        <asp:Parameter Name="CityName" Type="String" />
        <asp:Parameter Name="DatetimeID" Type="Int32" />
        <asp:Parameter Name="NumberOfDose" Type="Int32" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="original_BookingId" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_MobileNumber" Type="String" />
        <asp:Parameter Name="original_VaccineName" Type="String" />
        <asp:Parameter Name="original_CityName" Type="String" />
        <asp:Parameter Name="original_DatetimeID" Type="Int32" />
        <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
        <asp:Parameter Name="original_Status" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    
    <br />
    <center>
    Booking Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Proper Input" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
        </center>
<br />
    <br />
    <div class="text-center">
Datetime Id&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
<asp:DropDownList ID="DDLId" runat="server" DataSourceID="SqlDataSource3" DataTextField="DatetimeID" DataValueField="DatetimeID">
</asp:DropDownList>
    </div>
    <center>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString84 %>" DeleteCommand="DELETE FROM [DateTimeSlots] WHERE [DatetimeID] = @original_DatetimeID" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString84.ProviderName %>" SelectCommand="SELECT [DatetimeID] FROM [DateTimeSlots]">
    <DeleteParameters>
        <asp:Parameter Name="original_DatetimeID" Type="Int32" />
    </DeleteParameters>
</asp:SqlDataSource>
<asp:Button ID="Btnrebook" runat="server" CssClass="custom-button" OnClick="Btnrebook_Click" Text="Reschedule " />
<br />
<br />
<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
<br />
    
</asp:Content>
