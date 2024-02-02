<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="VaccineProject.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 555px;
        }
        .auto-style4 {
            width: 211px;
        }
        .auto-style5 {
            width: 555px;
            text-align: right;
        }
        .newStyle1 {
            font-size: medium;
            font-style: normal;
        }
        .newStyle2 {
            font-size: large;
            font-style: normal;
            justify-content:right;
        }
        .newStyle3 {
            font-size: large;
            font-style: normal;
        }
        .newStyle4 {
            font-size: large;
            font-style: normal;
        }
        .auto-style8 {
            width: 211px;
            text-align: center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="center-div">
        <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="3"><h2>&nbsp;</h2>
                <h2>&nbsp;</h2>
                <h2>&nbsp;Admin Login</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><span class="newStyle1"></span><span class="newStyle2"> <h3>User Name&nbsp;&nbsp;&nbsp;</h3> </span></td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtUser" runat="server" ValidationGroup="g1" class="input-field"></asp:TextBox>
                <br />
               
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ForeColor="Red" ControlToValidate="TxtUser" OnDataBinding="Button1_Click" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
           <td class="auto-style5"><span class="newStyle1"></span><span class="newStyle2"> <h3>Password&nbsp;&nbsp;&nbsp;</h3> </span></td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtPwd" runat="server" ValidationGroup="g1" TextMode="Password" class="input-field"></asp:TextBox>
                <br /><br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ForeColor="Red" ControlToValidate="TxtPwd" ValidationGroup="g1" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="LblCaptcha" runat="server" Font-Italic="True" Font-Names="Bodoni MT" ForeColor="Blue" Text="Captcha" Font-Size="X-Large"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
           <td class="auto-style5"><span class="newStyle1"></span><span class="newStyle2"> <h3>Captcha&nbsp;&nbsp;&nbsp;</h3> </span></td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtCaptcha" runat="server" ValidationGroup="g1" class="input-field"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Captcha" ForeColor="Red" ControlToValidate="TxtCaptcha" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style8">
               
                <asp:Button ID="BtnLogin" runat="server" OnClick="Button1_Click" Text="Login" CssClass="custom-button" ValidationGroup="g1" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Page_Load" PostBackUrl="~/AForgotPwd.aspx">Forgot Password</asp:LinkButton>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Back</asp:HyperLink>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
        </div>
    </form>
</body>
</html>
