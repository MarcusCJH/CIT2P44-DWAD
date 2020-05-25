<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="ShoppingListUpdate.aspx.cs" Inherits="EIDShop.ShoppingListUpdate" %>
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
    List Overview</a> &raquo; <a href="ShoppingListCreate.aspx" class="active">Edit</a></h2>
<div id ="main">
        <div id="main0">
            <h3>
                Edit section</h3>
            <fieldset>
                <p>
                    <label>
                    Name:</label></p>
                <p>
                    <asp:TextBox ID="txbfn" name="First Name" value="First Name" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:TextBox ID="txbln" name="Last Name" value="Last Name" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                </p>
                <p>
                    Contact Number:</p>
                <p>
                    <asp:TextBox ID="tbncn" name="Please enter your contact number here" 
                        value="Please enter your contact number here" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="200px"></asp:TextBox>
                </p>
                <p>
                    Address:</p>
                <p>
                    <asp:TextBox ID="tbnad" name="Please enter your addressr here" 
                        value="Please enter your address here" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="200px"></asp:TextBox>
                </p>
                <p>
                    Date Required:</p>
                <p>
                    <asp:TextBox ID="tbnda" name="Date" 
                        value="Date" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="67px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:TextBox ID="tbnmon" name="Month" 
                        value="Month" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="67px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:TextBox ID="tbnyear" name="Year" 
                        value="Year" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="80px"></asp:TextBox>
                </p>
                <p>
                    <label>
                    Food Item:</label><asp:CheckBoxList ID="foodItem" 
                        runat="server" RepeatColumns="2" RepeatDirection="Horizontal" 
                        Width="100%">
                        <asp:ListItem>Rice</asp:ListItem>
                        <asp:ListItem>Instant Noodle</asp:ListItem>
                        <asp:ListItem>Biscuit</asp:ListItem>
                        <asp:ListItem>Oil</asp:ListItem>
                        <asp:ListItem>Salt</asp:ListItem>
                        <asp:ListItem>Sugar</asp:ListItem>
                        <asp:ListItem>Fruit</asp:ListItem>
                        <asp:ListItem>Vegetable</asp:ListItem>
                    </asp:CheckBoxList>
                </p>
                <p>
                    Other Food Items:
                </p>
                <p>
                    <asp:TextBox ID="tbnOFItem" runat="server" class="textarea" Columns="1" Rows="1" 
                        TextMode="MultiLine"></asp:TextBox>
                </p>
                <p>
                    Daily Necessity Item:
                </p>
                <p>
                    <asp:CheckBoxList ID="dnitems" runat="server" RepeatColumns="2" 
                        RepeatDirection="Horizontal" Width="100%">
                        <asp:ListItem>Toothbrush</asp:ListItem>
                        <asp:ListItem>Toothpaste</asp:ListItem>
                        <asp:ListItem>Towel</asp:ListItem>
                        <asp:ListItem>Tissue (Box)</asp:ListItem>
                        <asp:ListItem>Tissue (Packets)</asp:ListItem>
                        <asp:ListItem>Toilet Roll</asp:ListItem>
                        <asp:ListItem>Shampoo</asp:ListItem>
                        <asp:ListItem>Shower Foam</asp:ListItem>
                    </asp:CheckBoxList>
                </p>
                <p>
                    Other Daily Necessity Items:
                </p>
                <p>
                    <asp:TextBox ID="tbnODNItem" runat="server" class="textarea" Columns="1" Rows="1" 
                        TextMode="MultiLine"></asp:TextBox>
                </p>
                <p>
                    Other Items:
                </p>
                <asp:TextBox ID="tbnOItem" runat="server" class="textarea" Columns="1" Rows="1" 
                    TextMode="MultiLine"></asp:TextBox>
                <p class="style1"><br>
                    *Note All Item will be bought at 1 Quantity per Item (by default)<br>
                    Please state below the items that need more than 1 quantity (state the item followed by its quantity)</p>
                <p class="style1">
                <asp:TextBox ID="tbnItemQ" runat="server" class="textarea" Columns="1" Rows="1" 
                    TextMode="MultiLine"></asp:TextBox>
                </p>
                <p>
                    <br />
                    <label>
                    <asp:ImageButton ID="btnSubmit" runat="server" 
                        ImageUrl="~/Style/img/submit.gif" onclick="btnSubmit_Click" />
                    </label>
                </p>
            </fieldset>
        </div>
    </div>
</asp:Content>

