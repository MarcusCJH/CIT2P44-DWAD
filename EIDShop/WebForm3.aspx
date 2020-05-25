<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="EIDShop.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sidebar">
        <ul class="sideNav">
            <li><a href="#">User Management</a></li>
            <li><a href="#" class="active">Resident Management</a></li>
            <li><a href="#">Shopping Management</a></li>
            <li><a href="#">Volunteer Management</a></li>
            <li><a href="login.aspx">Logout</a></li>
        </ul>
    </div> 
    <h2>
        <a href="#">Resident Management</a> » <a class="active" href="#">Overview</a> » <a class="active" href="#">Create</a></h2>
                        <div id="main">
                	<form action="" class="jNice">
					<h3>Create section</h3>
                    	<fieldset>
                        	<p><label>Name:</label><asp:TextBox ID="txbfn" name="First Name" value="First Name" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txbln" name="Last Name" value="Last Name" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox></p>
                            <p><label>Gender</label>
                                <asp:DropDownList ID="ddGender" runat="server" Height="45px" 
                                    Width="150px" >
                                    <asp:ListItem> - Section One -</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        	<p><label>NRIC:</label><asp:TextBox ID="txbnric" name="Eg.G0756515U" value="Eg.G0756515U" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                            </p>
                            <p><label>Birthday</label>
                                <asp:TextBox ID="tbxYear" name="Year" value="Year" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-medium" runat="server"></asp:TextBox>
                                <asp:TextBox ID="tbxMouth" name="Mouth" value="Mouth" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-small" runat="server"></asp:TextBox>
                                <asp:TextBox ID="tbxDay" name="Day" value="Day" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-small" runat="server"></asp:TextBox>
                            </p>
                            <p><label>Ethnic Group</label>
                                <asp:DropDownList ID="DropDownList2" runat="server" Height="45px" 
                                    Width="150px" >
                                    <asp:ListItem> - Section One -</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        	<p><label>Description of disability</label></p>
                            <asp:TextBox ID="TextBox1" class="textarea" runat="server" Columns="1" Rows="1"
                                TextMode="MultiLine"></asp:TextBox>
                            <p><br><label>
                                <asp:ImageButton ID="btnSubmit" runat="server" 
                                    ImageUrl="~/Style/img/submit.gif" /></label></p>
                        </fieldset>
                    </form>
                </div>
</asp:Content>