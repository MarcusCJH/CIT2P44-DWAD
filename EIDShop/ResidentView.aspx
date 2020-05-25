<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="ResidentView.aspx.cs" Inherits="EIDShop.ResidentView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        Resident Management » <a href="ResidentManagement.aspx">Overview</a> » <a class="active" href="ResidentView.aspx">View</a></h2>
                        <div id="main">
                	<form action="" class="jNice">
					<h3>View section</h3>
                    	<fieldset>
                        	<p><label>Name:&nbsp;&nbsp;&nbsp; <asp:Label ID="lbName" runat="server"></asp:Label>
                                </label>
                            </p>
                            <p>Resident ID:&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblRedId" runat="server"></asp:Label>
                            </p>
                            <p><label>Gender:&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lbGender" runat="server"></asp:Label>
                                </label>
                                </p>
                            <p><label>Address:&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                                </label>
                                </p>
                        	<p><label>NRIC:&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lbNRIC" runat="server"></asp:Label>
                                </label>
                            </p>
                            <p><label>Birthday:&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lbDOB" runat="server"></asp:Label>
                                </label>
                                </p>
                            <p><label>Ethnic Group:&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="lbEhinic" runat="server"></asp:Label>
                                </label>
                                </p>
                            <p><label>Contact No:&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="lblcontact" runat="server"></asp:Label>
                                </label>
                                </p>
                            <p><label>Email Address:&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="lblemail" runat="server"></asp:Label>
                                </label>
                                </p>
                        	<p><label>Description of disability:&nbsp;&nbsp;&nbsp;  
                                <asp:Label ID="lbDes" runat="server"></asp:Label>
                                </label>
                            </p>
                            <p>Staff in charge:&nbsp;&nbsp;&nbsp; <asp:Label ID="lblstaffId" runat="server"></asp:Label>
                            </p>
                        </fieldset>
                    </form>
                </div>
</asp:Content>