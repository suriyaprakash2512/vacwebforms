<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="VaccineProject.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 80%;
            text-align: center;
            text-align: justify-all;
        }
        .auto-style3 {
             width: 661px;
         }
        .ucaptcha {
          
            margin-left: 0px;
        }
        .ubtn {
            margin-top: 30px;
            margin-left: 70px;
            margin-bottom: 20px;
        }

         .auto-style5 {
             font-size: xx-large;
         }

         .auto-style7 {
             width: 185px;
         }
         .auto-style8 {
             text-align: right;
         }

    </style>
    <link href="StyleSheet.css" rel="stylesheet" />

</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
             <table class="auto-style1">
                 <h2>&nbsp;</h2>
                 <h2>User Login </h2>
                 <p>&nbsp;</p>
                 </center>
        <tr class="uuser">
            <td class="auto-style3">
                    <h3 class="auto-style8">
                <asp:Label ID="Label5" runat="server" Text="UserName"></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </h3> 
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtUser1" runat="server" ValidationGroup="g1" Width="150px" Height="25px"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ForeColor="Red" ControlToValidate="TxtUser1" OnDataBinding="Button1_Click" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>


        <tr class="upwd">
            <td class="auto-style3">
                    <h3 class="auto-style8">
                <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </h3>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtPwd1" runat="server" ValidationGroup="g1" TextMode="Password" Width="150px" Height="27px"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ForeColor="Red" ControlToValidate="TxtPwd1" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>



        <tr>
            <td class="auto-style3">
            </td>
            <td class="auto-style7">
                <div class="ucaptcha">
                <asp:Label ID="LblCaptcha" runat="server" Font-Italic="True" Font-Names="Bodoni MT" ForeColor="Blue" Text="Captcha" Font-Size="XX-Large" CssClass="auto-style5"></asp:Label>
                </div>
            </td>
            <td>
            </td>
        </tr>

        <tr>
            <td class="auto-style3">
                    <h3 class="auto-style8">
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Captcha"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </h3>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtCaptcha1" runat="server" ValidationGroup="g1" Width="150px" Height="27px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Captcha" ForeColor="Red" ControlToValidate="TxtCaptcha1" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style7">
                <asp:Button ID="BtnLogin" runat="server" OnClick="Button1_Click" Text="Login" ValidationGroup="g1" CssClass="custom-button" Font-Size="Large" ForeColor="Blue" />&nbsp;</td>
            <td></td>
        </tr>

     
       <tr> 
    <td colspan="3">
        &nbsp;</td>
</tr>
   
     
       <tr> 
    <td colspan="3">
        &nbsp;</td>
</tr>
   
     
       <tr> 
    <td colspan="3">
        <center>
        <div style="margin-left: 150px;">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Page_Load" PostBackUrl="~/UForgotPwd.aspx">Forgot Password</asp:LinkButton>
            <span style="margin-right: 50px;"></span>
            <asp:LinkButton ID="LnkBtnUser" runat="server" PostBackUrl="~/UserRegister.aspx">Register</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <center>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Back</asp:HyperLink>
                </center>
            <br />
        </div>
            </center>
    </td>
</tr>
   
     
       <tr> 
    <td colspan="3">
        &nbsp;</td>
</tr>
   
    </table>

        </div>
    </form>
        </center>
</body>
</html>
