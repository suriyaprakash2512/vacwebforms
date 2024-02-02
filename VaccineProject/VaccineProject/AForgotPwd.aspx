<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AForgotPwd.aspx.cs" Inherits="VaccineProject.AForgotPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 100%;
    }
    .auto-style2 {
        text-align: center;
        color: #0000FF;
    }
    .auto-style3 {
            width: 573px;
        }
    .auto-style4 {
            width: 336px;
        }
        .auto-style5 {
            color: #000000;
        }
        .auto-style6 {
            width: 573px;
            text-align: right;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            width: 336px;
            text-align: right;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3">
            <h2 class="auto-style5">&nbsp;</h2>
            <h2 class="auto-style5">Create New Password for Admin</h2>
            <br />
        </td>
    </tr>
     
    <tr>
        <center>
        <td class="auto-style6"><span class="auto-style7">User Name&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtUser" runat="server" Width="195px"></asp:TextBox>
            <br /><br />
        </td>
        <td>
            &nbsp;</td>
        </center>
    </tr>
    <tr>
        <td class="auto-style6"><span class="auto-style7">Password&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtPwd" runat="server" TextMode="Password" Width="195px"></asp:TextBox>
            <br /><br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"><span class="auto-style7">Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtCPwd" runat="server" TextMode="Password" Width="195px"></asp:TextBox>
            <br /><br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="BtnNewPwd" runat="server" CssClass="custom-button" OnClick="BtnNewPwd_Click" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style8">
            <asp:Button ID="Button1" runat="server" CssClass="custom-button" PostBackUrl="~/AdminLogin.aspx" Text="Back" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
        </div>
    </form>
</body>
</html>
