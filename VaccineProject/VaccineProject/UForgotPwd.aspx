<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UForgotPwd.aspx.cs" Inherits="VaccineProject.UForgotPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        color: #0000FF;
    }
    .auto-style3 {
            width: 581px;
        }
    .auto-style4 {
        width: 227px;
    }
        .auto-style5 {
            color: #000000;
        }
        .auto-style7 {
            width: 581px;
            text-align: right;
            font-size: large;
        }
        .auto-style8 {
            color: #FF0000;
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
            <h2 class="auto-style5">Create New Password for User</h2>
            <p class="auto-style5">
                &nbsp;</p>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">User Name&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtUser2" runat="server" Width="199px"></asp:TextBox>
            <br /><br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Password&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtPwd2" runat="server" TextMode="Password" Width="199px"></asp:TextBox>
            <br /><br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Confirm Password&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtCPwd2" runat="server" TextMode="Password" Width="199px"></asp:TextBox>
            <br /><br />
        </td>
        <td class="auto-style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblMsg1" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="BtnNewPwd" runat="server" CssClass="custom-button" OnClick="BtnNewPwd_Click" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="custom-button" PostBackUrl="~/UserLogin.aspx" Text="Back" />
        </td>
    </tr>
</table>

        </div>
    </form>
</body>
</html>
