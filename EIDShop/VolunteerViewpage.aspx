<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="VolunteerViewpage.aspx.cs" Inherits="EIDShop.Viewpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 135px;
        }
        .style3
        {
            width: 135px;
            height: 24px;
        }
        .style4
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        		<div id="sidebar">
                	<ul class="sideNav">
            <li><a href="UserManagement.aspx">User Management</a></li>
            <li><a href="ResidentManagement.aspx">Resident Management</a></li>
            <li><a href="ShoppingManagement.aspx">Shopping Management</a></li>
            <li><a href="Volunteerpage.aspx" class="active">Volunteer Management</a></li>
            <li><a href="index.aspx">Logout</a></li>
        </ul>
                </div>    
                
                <h2>Volunteer Management &raquo; 
                    <a href="Volunteerpage.aspx">Overview</a> &raquo; 
                    <a href="VolunteerViewpage.aspx" class="active">View information</a> </h2>
                <div id ="main">
                    <table class="style1">
                        <tr>
                            <td class="style2" valign="middle">
                                Volunteer Idenfication:</td>
                            <td valign="middle">
                                <asp:Label ID="lblVolunterID" runat="server"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2" valign="middle">
                                NRIC/FIN/PP:</td>
                            <td valign="middle">
                                <asp:Label ID="lblnric" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" valign="middle">
                                Name:
                            </td>
                            <td class="style4" valign="middle">
                                <asp:Label ID="lblvoluntername" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" valign="middle">
                                Address:</td>
                            <td valign="middle">
                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                            </td>
                        </tr>
                   
                         <tr>
                            <td class="style2" valign="middle">
                                Contact number:
                            </td>
                            <td valign="middle">
                                <asp:Label ID="lblphonenumber" runat="server"></asp:Label>
                            </td>
                        </tr>
                      
                        <tr>
                            <td class="style2" valign="middle">
                                Email:
                            </td>
                            <td valign="middle">
                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="style3" valign="middle">
                                <span>Description<o:p>:</o:p></span></td>
                            <td class="style4" valign="middle">
                                <span>
                                <asp:Label ID="lbldescription" runat="server"></asp:Label>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" valign="middle">
                                Remarks:</td>
                            <td valign="middle">
                                <asp:Label ID="lblremarks" runat="server"></asp:Label>
                            </td>
                        </tr>


                             <tr>
                            <td class="style2" valign="middle">
                                Avaliable Day / Time:</td>
                            <td valign="middle">
                                <asp:Label ID="lbldaytime" runat="server"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="style2" valign="middle">
                                Staff in charge:</td>
                            <td valign="middle">
                                <asp:Label ID="lblstaff" runat="server"></asp:Label>
                            </td>
                        </tr>
                         </table>
</asp:Content>

