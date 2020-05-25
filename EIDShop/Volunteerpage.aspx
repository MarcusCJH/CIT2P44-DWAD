<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="Volunteerpage.aspx.cs" Inherits="EIDShop.Volunteerpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 658px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div id="sidebar">
        <ul class="sideNav">
            <li><a href="UserManagement.aspx">User Management</a></li>
            <li><a href="ResidentManagement.aspx">Resident Management</a></li>
            <li><a href="ShoppingManagement.aspx">Shopping Management</a></li>
            <li><a href="Volunteerpage.aspx" class="active">Volunteer Management</a></li>
            <li><a href="index.aspx">Logout</a></li>
        </ul>
    </div>
    <h2>
        <a href="#">Volunteer Management</a> &raquo;
        <a href="Volunteerpage.aspx" class="active">Overview</a></h2>
    <div id="main">
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td class="style1">
                    <asp:DataList ID="dlvolunteer" runat="server" Width="665px"
                    DataKeyField="volunteerNo" onitemcommand="dlResident_ItemCommand">
                        <ItemTemplate>
                            Name:
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("volunteerName") %>'></asp:Label>
                            , ID:
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("volunteerNo") %>'></asp:Label>
                            <td class="action">
                                <asp:HyperLink ID="HyperLink1" class="view" runat="server" 
                                      NavigateUrl='<%# "viewpage.aspx?volunteerNo="+Eval("volunteerNo") %>'>View</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" class="edit" runat="server" 
                                      NavigateUrl='<%# "UpdateVolunteer.aspx?volunteerNo="+Eval("volunteerNo") %>'>Edit</asp:HyperLink>
                                <asp:LinkButton ID="LinkButton1" class="delete" runat="server" 
                                    OnClientClick='javascript:return confirm("Are you sure to delete?")' 
                                    Text="delete" CommandName="Del"></asp:LinkButton>
                                <p>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            <tr>
                <td class="action" style="width: 658px; text-align: right;">
                    Click here to<a class="create" href="CreateVolunteerform.aspx">Create</a>&nbsp;&nbsp; a new Volunteer</td>
            </tr>
        </table>
        <br>
        <br/>
    </div>
</asp:Content>
