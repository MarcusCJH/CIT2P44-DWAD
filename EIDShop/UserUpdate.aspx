<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="UserUpdate.aspx.cs" Inherits="EIDShop.UserUpdate" %>
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
        User Management » <a  href="UserManagement.aspx">Profile</a> » <a class="active" href="UserUpdate.aspx">Update</a></h2>
                        <div id="main">
                	<form action="" class="jNice">
					<h3>Update Profile</h3>
                    	<fieldset>
                        
                            <p><label>Password::</label><asp:TextBox ID="tbxPassword" name="" value="" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validPassword" runat="server" 
                                    ControlToValidate="tbxPassword" ErrorMessage="Please enter a password." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            <p><label>Re-type Password::</label><asp:TextBox ID="tbxRetype" name="" value="" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="validRtpassword" runat="server" 
                                    ControlToCompare="tbxRetype" ControlToValidate="tbxPassword" 
                                    ErrorMessage="Wrong password. Please enter again." ForeColor="Red"></asp:CompareValidator>
                            
                            
                            </p>
                            <p><label>Address:</label><asp:TextBox ID="tbxAddress" name="Blk 123 Pokemon Centre, #12-34, (S)123312" value="Blk 123 Pokemon Centre, #12-34, (S)123312" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validAddress" runat="server" 
                                    ControlToValidate="tbxAddress" ErrorMessage="Please Enter Your Address" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            <p><label>ContactNo:</label><asp:TextBox ID="tbxContactNo" name="Eg.987456123" value="Eg.987654321" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validContact" runat="server" 
                                    ControlToValidate="tbxContactNo" ErrorMessage="Please enter your contact no." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            <p><label>Email::</label><asp:TextBox ID="tbxEmail" name="Eg. xxx@EIDShop.com" value="Eg. xxx@EIDShop.com" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="validEmail" runat="server" 
                                    ControlToValidate="tbxEmail" 
                                    ErrorMessage="Please enter a correct email address" ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </p>
                            <p><label>Description</label></p>
                            <asp:TextBox ID="tbxDes" class="textarea" runat="server" Columns="1" Rows="1"
                                TextMode="MultiLine"></asp:TextBox>
                            <p><br><label>
                            
                            <p><br><label>
                                <asp:ImageButton ID="btnSubmit" runat="server" 
                                    ImageUrl="~/Style/img/submit.gif" 
                                    OnClientClick="return confirm('Confirm to update?');" 
                                    onclick="btnSubmit_Click" /></label></p>
                            </label>
                        </fieldset>
                    </form>
                </div>
</asp:Content>
