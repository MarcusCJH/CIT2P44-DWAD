<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="ShoppingListCreate.aspx.cs" Inherits="EIDShop.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    List Overview</a> &raquo; <a href="ShoppingListCreate.aspx" class="active">Create</a></h2>
<div id ="main">
        <div id="main0">
            <h3>
                Create section</h3>
            <fieldset>
                <p>
                    <label>
                    Name:</label></p>
                <p>
                    <asp:TextBox ID="txbname" name="Name" value="Name" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txbname" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Please enter the requester name</asp:RequiredFieldValidator>
&nbsp;&nbsp;
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
                    Date of request:</p>
                <p>
                    <asp:TextBox ID="tbndar" name="Date" 
                        value="Date" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="67px"></asp:TextBox>
                    <asp:TextBox ID="tbnmonr" name="Month" 
                        value="Month" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="67px"></asp:TextBox>
                    <asp:TextBox ID="tbnyearr" name="Year" 
                        value="Year" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="80px"></asp:TextBox>
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
                <label>
                <p>
                    Name of Item:</p>
                <p>
                    <asp:TextBox ID="txbItem" name="Item" 
                        value="Item" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="95px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txbItem" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Please enter an item</asp:RequiredFieldValidator>
                </p>
                <p>
                    Quantity:</p>
                <p>
                 <asp:TextBox ID="txbQuan" name="Quantity" 
                        value="Quantity" 
                        onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                        onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                        class="text-long" runat="server" Width="95px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="RequiredFieldValidator" ForeColor="Red" 
                        ControlToValidate="txbQuan">Please enter quantity of item</asp:RequiredFieldValidator>
                </p>
                <p>
                    Remarks:</p>
                <p>
                <asp:TextBox ID="tbnRemarks" runat="server" class="textarea" Columns="1" Rows="1" 
                    TextMode="MultiLine"></asp:TextBox>
                </p>
                <p>
                    <br />
                    <label>
                    <asp:ImageButton ID="btnSubmit" runat="server" 
                        ImageUrl="~/Style/img/submit.gif" onclick="btnSubmit_Click" />
                    </label>
                </p>
                </label>
            </fieldset>
        </div>
    </div>
</asp:Content>
