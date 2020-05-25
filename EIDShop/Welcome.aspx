<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="EIDShop.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sidebar">
        <ul class="sideNav">
            <li><a href="UserManagement.aspx">User Management</a></li>
            <li><a href="ResidentManagement.aspx">Resident Management</a></li>
            <li><a href="ShoppingManagement.aspx">Shopping Management</a></li>
            <li><a href="Volunteerpage.aspx">Volunteer Management</a></li>
            <li><a href="index.aspx">Logout</a></li>
        </ul>
    </div> 
    <h2><a href="#">Welcome, 
        <asp:Label ID="lblUsername" runat="server"></asp:Label>
        </a></h2>
    <div id="main">
        
    </div>
</asp:Content>
