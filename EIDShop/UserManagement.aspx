<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="EIDShop.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sidebar">
        <ul class="sideNav">
            <li><a href="UserManagement.aspx"class="active">User Management</a></li>
            <li><a href="ResidentManagement.aspx">Resident Management</a></li>
            <li><a href="ShoppingManagement.aspx">Shopping Management</a></li>
            <li><a href="Volunteerpage.aspx">Volunteer Management</a></li>
            <li><a href="index.aspx">Logout</a></li>
        </ul>
    </div> 
    <h2>
        User Management » <a class="active" href="UserManagement.aspx">Profile</a></h2>
                        <div id="main">
                	<form action="" class="jNice">
					<h3>Profile</h3>
                    	<fieldset>
                        	<p><label>Username:&nbsp;&nbsp;&nbsp; <asp:Label ID="lblUsername" runat="server"></asp:Label>
                                </label>
                                </p>
                            <p><label>Staff Name:&nbsp;&nbsp;&nbsp; <asp:Label ID="lblName" runat="server"></asp:Label>
                                </label>
                            </p>
                            <p><label>NRIC:&nbsp;&nbsp;&nbsp; <asp:Label ID="lblNRIC" runat="server"></asp:Label>
                                </label>
                            </p>
                            <p><label>Contact No:&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblContactNo" runat="server"></asp:Label>
                                </label>
                                </p>
                        	<p><label>Address:&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblAddress" runat="server"></asp:Label>
                                </label>
                            </p>
                            <p><label>Gender:&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblGender" runat="server"></asp:Label>
                                </label>
                                </p>
                            <p><label>Email:&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                </label>
                                </p>
                        	<p><label>Ethnic Group:&nbsp;&nbsp;&nbsp;  
                                <asp:Label ID="lblEthnicGroup" runat="server"></asp:Label>
                                </label></p>
                                <p><label>Description:&nbsp;&nbsp;&nbsp;  
                                <asp:Label ID="lblDescription" runat="server"></asp:Label>
                                </label></p>
                            
                            <p>&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="btnupdate" runat="server" 
                                    ImageUrl="~/Style/img/update.png" onclick="btnUpdateProfile_Click" />
&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="btnDelete" runat="server" 
                                    ImageUrl="~/Style/img/deleteBtn.png" onclick="btnDelete_Click" OnClientClick="return confirm('Confirm To Delete account? \r\n WARNING: \r\n Account information will be remove');" />
                            </p>

                        </fieldset>
                    </form>
                </div>
</asp:Content>
