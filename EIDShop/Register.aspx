<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EIDShop.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>
        <a href="Register.aspx">Registration</a></h2>
                        <div id="main">
                	<form action="" class="jNice">
                    	<fieldset>
                            
                        	<p><label>Staff Name:</label><asp:TextBox ID="txbfn" name="First Name" value="First Name" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txbln" name="Last Name" value="Last Name" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox></p>
                            <p><label>Username::</label><asp:TextBox ID="tbxUsername" name="" value="" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validUser" runat="server" 
                                    ControlToValidate="tbxUsername" ErrorMessage="Please enter a username." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
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
                            <p><label>Gender</label>
                                <asp:DropDownList ID="ddGender" runat="server" Height="45px" 
                                    Width="150px" >
                                    <asp:ListItem> - Section One -</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="validGender" runat="server" 
                                    ControlToValidate="ddGender" ErrorMessage="Please select a gender" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                        	<p><label>NRIC:</label><asp:TextBox ID="txbnric" name="Eg.G0756515U" value="Eg.G0756515U" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-long" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validNric" runat="server" 
                                    ControlToValidate="txbnric" ErrorMessage="Please enter your NRIC." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            <p><label>Birthday</label>
                                <asp:TextBox ID="tbxYear" name="Year" value="Year" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-medium" runat="server"></asp:TextBox>
                                <asp:TextBox ID="tbxMouth" name="Mouth" value="Month" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-small" runat="server"></asp:TextBox>
                                <asp:TextBox ID="tbxDay" name="Day" value="Day" onfocus="if(value == defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value = defaultValue;this.style.color='#999'}" class="text-small" runat="server"></asp:TextBox>
                            </p>
                            <p><label>Ethnic Group</label>
                                <asp:DropDownList ID="ddThn" runat="server" Height="45px" 
                                    Width="150px" >
                                    <asp:ListItem> - Section One -</asp:ListItem>
                                    <asp:ListItem>Chinese</asp:ListItem>
                                    <asp:ListItem>Malay</asp:ListItem>
                                    <asp:ListItem>Indian</asp:ListItem>
                                    <asp:ListItem>Eurasian</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="validEthnic" runat="server" 
                                    ControlToValidate="ddThn" ErrorMessage="Please select an ethnic group" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                        	<p><label>Description</label></p>
                            <asp:TextBox ID="tbxDes" class="textarea" runat="server" Columns="1" Rows="1"
                                TextMode="MultiLine"></asp:TextBox>
                            <p><br><label>
                                <asp:ImageButton ID="btnSubmit" runat="server" 
                                    ImageUrl="~/Style/img/submit.gif" onclick="btnSubmit_Click" /></label></p>
                        </fieldset>
                    </form>
                </div>
</asp:Content>
