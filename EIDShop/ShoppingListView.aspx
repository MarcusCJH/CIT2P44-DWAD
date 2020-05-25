<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="ShoppingListView.aspx.cs" Inherits="EIDShop.ShoppingListView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div id="sidebar">
    <ul class="sideNav">
            <li><a href="UserManagement.aspx">User Management</a></li>
            <li><a href="ResidentManagement.aspx">Resident Management</a></li>
            <li><a href="ShoppingManagement.aspx" class="active">Shopping Management</a></li>
            <li><a href="Volunteerpage.aspx">Volunteer Management</a></li>
            <li><a href="index.aspx">Logout</a></li>
        </ul>
</div>
<h2>
    Shopping Management &raquo; <a href="ShoppingManagement.aspx">Shopping 
    List Overview</a> &raquo; <a href="ShoppingListView.aspx" class="active">View</a></h2>
<div id ="main">
        <div id="main0">
					<h3>View section</h3>
            <fieldset>
                Name:
                <asp:Label ID="lblName" runat="server"></asp:Label>
                <br />
                <br />
                Contact Number:
                <asp:Label ID="lblCNum" runat="server"></asp:Label>
                <br />
                <br />
                Address:
                <asp:Label ID="lblAdr" runat="server"></asp:Label>
                <br />
                <br />
                Date Required:
                <asp:Label ID="lblDR" runat="server"></asp:Label>
                <br />
                <br />
                Food Item:
                <asp:Label ID="lblFItem" runat="server"></asp:Label>
                <br />
                <br />
                Other Food Item:
                <asp:Label ID="lblOFItem" runat="server"></asp:Label>
                <br />
                <br />
                Daily Necessity Item:
                <asp:Label ID="lblDNItem" runat="server"></asp:Label>
                <br />
                <br />
                Other Daily Necessity Item:
                <asp:Label ID="lblODNItem" runat="server"></asp:Label>
                <br />
                <br />
                Other Item:
                <asp:Label ID="lblOItem" runat="server"></asp:Label>
                <br />
                <br />
                Item (more than one quantity):
                <asp:Label ID="lblQuan" runat="server"></asp:Label>
                <br />
            </fieldset>
        </div>
    </div>
</asp:Content>

