<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="VaccineProject.UserRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
              width: 1294px;
          }
        .auto-style6 {
            height: 29px;
              text-align: center;
          }
    .auto-style7 {
              width: 485px;
          }
    .auto-style9 {
        font-size: large;
    }
          </style>
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td colspan="8" class="text-center"> <span class="auto-style9">&nbsp;&nbsp; &nbsp; 
            <h2>Registeration Page</span></h2>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="8">Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Uname" runat="server"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="text-center" colspan="8">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="8"><span class="auto-style9">Password&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UPwd" runat="server" TextMode="Password"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="text-center" colspan="8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="8"><span class="auto-style9">FirstName&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UFirstName" runat="server"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="8">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="8"><span class="auto-style9">LastName&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ULastName" runat="server"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="text-center" colspan="8">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="8"><span class="auto-style9">&nbsp;Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UEmail" runat="server"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="text-center" colspan="8">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="8"><span class="auto-style9">PhoneNumber</span>&nbsp;
            <asp:TextBox ID="UPhoneNumber" runat="server"></asp:TextBox>
            <br />
            </td>
    </tr>
    
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
        <td class="text-center" colspan="8">
            <asp:Button ID="Button1" runat="server" CssClass="custom-button" Text="Insert" OnClick="Button1_Click" Height="44px" Width="87px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button2_Click" CssClass="custom-button" Text="Update" Height="45px" Width="93px" />
        </td>
    </tr>
    
    <tr>
        <td class="auto-style2">
            <asp:Label ID="LblMsg0" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
        <td class="auto-style2">
            <asp:Label ID="LblMsg3" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
        <td class="auto-style2">
            <asp:Label ID="LblMsg4" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
       
        <td colspan="7">
    <table class="auto-style1">
        <tr>
        <td colspan="4">
            <div>
                </div>
        </td>
        </tr>
    <tr>
        <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/UserLogin.aspx">Back</asp:LinkButton>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>

</table>
        </td>
    </tr>
</table>
</asp:Content>

