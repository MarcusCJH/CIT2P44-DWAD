<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="ResidentCreate.aspx.cs" Inherits="EIDShop.ResidentCreate" %>
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
        Resident Management » <a href="ResidentManagement.aspx">Overview</a> » <a class="active" href="ResidentCreate.aspx">Create</a></h2>
                        <div id="main">
                	<form action="" class="jNice">
					<h3>Create section</h3>
                    	<fieldset>
                        	<p><label>Name:</label>*<asp:TextBox ID="txbName"
                                    class="text-medium" runat="server" ValidationGroup="tbName"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txbName" Display="Dynamic" 
                                    ErrorMessage="Please enter a Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            <p><label>Gender</label>
                                <asp:DropDownList ID="ddGender" class="text-long" runat="server" Height="45px" 
                                    Width="150px" >
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        	<p><label>NRIC:</label>*<asp:TextBox ID="txbnric" class="text-long" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txbnric" Display="Dynamic" 
                                    ErrorMessage="Please enter a NRIC" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            <p><label>Address</label>*<asp:TextBox ID="tbxaddress" 
                                    class="text-long" runat="server" Height="51px" TextMode="MultiLine" 
                                    Width="216px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="tbxaddress" ErrorMessage="Please enter your address" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            <p><label>Birthday</label> *<asp:TextBox ID="tbxYear" name="Year" value="Year" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-medium" runat="server"></asp:TextBox>
                                *<asp:TextBox ID="tbxMonth" name="Month" value="Month" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-small" runat="server"></asp:TextBox>
                                *<asp:TextBox ID="tbxDay" name="Day" value="Day" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-small" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="tbxYear" Display="Dynamic" 
                                    ErrorMessage="&quot;Year&quot; cannot be null" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="tbxMonth" Display="Dynamic" 
                                    ErrorMessage="&quot;Month cannot be null&quot;" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="tbxDay" Display="Dynamic" 
                                    ErrorMessage="&quot;Day&quot; cannot be null" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;
                                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                    ControlToValidate="tbxYear" Display="Dynamic" EnableTheming="True" 
                                    ErrorMessage="Year should be between 1900--2012" ForeColor="Red" 
                                    MaximumValue="2012" MinimumValue="1900"></asp:RangeValidator>
&nbsp;&nbsp;&nbsp;
                                <asp:RangeValidator ID="RangeValidator3" runat="server" 
                                    ControlToValidate="tbxMonth" Display="Dynamic" 
                                    ErrorMessage="please enter a valid month 1--12" ForeColor="Red" 
                                    MaximumValue="12" MinimumValue="01"></asp:RangeValidator>
&nbsp;&nbsp;&nbsp;
                                <asp:RangeValidator ID="RangeValidator4" runat="server" 
                                    ControlToValidate="tbxDay" Display="Dynamic" 
                                    ErrorMessage="Please enter a valid day number (1 -- 31)" ForeColor="Red" 
                                    MaximumValue="31" MinimumValue="01"></asp:RangeValidator>
                            </p>
                            <p><label>Ethnic Group</label>
                                <asp:DropDownList ID="ddThn" class="text-long" runat="server" Height="45px" 
                                    Width="150px" >
                                    <asp:ListItem>Singapore</asp:ListItem>
                                    <asp:ListItem>Chinese</asp:ListItem>
                                    <asp:ListItem>British</asp:ListItem>
                                    <asp:ListItem>USA</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                            <p><label>Contact No.</label> *<asp:TextBox ID="tbxContact"  
                                    class="text-long" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    Display="Dynamic" ErrorMessage="Contact no cannot be null. Eg 83323519" 
                                    ForeColor="Red" ControlToValidate="tbxContact"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;
                                <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" 
                                    ErrorMessage=" Please enter a valid number (8 digits)" ForeColor="Red" 
                                    MaximumValue="99999999" MinimumValue="10000000" Type="Integer" 
                                    ControlToValidate="tbxContact"></asp:RangeValidator>
                            </p>
                            <p><label>Email-address</label>*<asp:TextBox ID="tbxemailaddress"
                                    class="text-long" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ErrorMessage="Enter a valid email" ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ControlToValidate="tbxemailaddress"></asp:RegularExpressionValidator>
                            </p>
                        	<p><label>Description of disability</label></p>
                            <asp:TextBox ID="tbxDes" class="textarea" runat="server" Columns="1" Rows="1"
                                TextMode="MultiLine"></asp:TextBox>
                            <p>&nbsp;</p>
                            <p><br><label>
                                <asp:ImageButton ID="btnSubmit" runat="server" 
                                    ImageUrl="~/Style/img/submit.gif" onclick="btnSubmit_Click" /></label></p>
                        </fieldset>
                    </form>
                </div>
</asp:Content>