<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="VaccineProject.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <i class="bi bi-person-fill-gear"></i>
    <center>
        <br />
        <h2>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h2>
    </center>
            <div class="card mb-3">
  <img src="Images/Admindashboard1.jpg" class="card-img-top" height="500px" />
  <div class="card-body">
    <h2 class="card-title">"Don't Hesitate To Vaccinate"</h2>
  </div>
</div>
</asp:Content>
