<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="ResidentManagement.aspx.cs" Inherits="EIDShop.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div id="sidebar">
        <ul class="sideNav">
            <li><a href="UserManagement.aspx">User Management</a></li>
            <li><a href="ResidentManagement.aspx" class="active">Resident Management</a></li>
            <li><a href="ShoppingManagement.aspx">Shopping Management</a></li>
            <li><a href="Volunteerpage.aspx">Volunteer Management</a></li>
            <li><a href="index.aspx">Logout</a></li>
        </ul>
    </div>
    <h2>
        Resident<a href="ResidentManagement.aspx"> Management</a> &raquo;
        <a href="Volunteerpage.aspx" class="active">Overview</a></h2>
    <div id="main">
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td class="style1">
                    <asp:DataList ID="dlResident" runat="server" Width="665px" 
                        DataKeyField="resident_no" onitemcommand="dlResident_ItemCommand">
                        <ItemTemplate>
                            Name:
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("resident_name") %>'></asp:Label>
                            , ID:
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("resident_no") %>'></asp:Label>
                            <td class="action">
                                <asp:HyperLink ID="HyperLink1" class="view" runat="server" 
                                      NavigateUrl='<%# "ResidentView.aspx?resNo="+Eval("resident_no") %>'>View</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" class="edit" runat="server" 
                                      NavigateUrl='<%# "ResidentUpdate.aspx?resNo="+Eval("resident_no") %>'>Edit</asp:HyperLink>
                                <asp:LinkButton ID="LinkButton1" class="delete" runat="server" 
                                    OnClientClick='javascript:return confirm("Are you sure to delete?")' 
                                    Text="delete" CommandName="Del"></asp:LinkButton>
                                <p>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            <tr>
                <td class="action" style="width: 658px; text-align: right;">
                    Click here to<a class="create" href="ResidentCreate.aspx">Create</a>&nbsp;&nbsp; a new 
                    Resident</td>
            </tr>
        </table>
        <br>
        <br/>
    </div>
</asp:Content>


