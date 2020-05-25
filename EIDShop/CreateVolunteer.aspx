<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="CreateVolunteer.aspx.cs" Inherits="EIDShop.Createupdateform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <h2>
        Volunteer Management » <a
            href="Volunteerpage.aspx">Overview</a> » 
        <a class="active" 
            href="CreateVolunteer.aspx">Create</a></h2>
                        <div id="main">
                	<form action="" class="jNice">
					<h3>Create Section</h3>
                    	<fieldset>
                                    
                                    
                                    <p><label>Name:</label><asp:TextBox ID="tbxfirstname" name="First Name" 
                                    value="First Name" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server"></asp:TextBox>
                                <asp:TextBox ID="tbxlastname" name="Last Name" value="Last Name" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server"></asp:TextBox>
                        	
                        
                            
                            </p>
                        	<p><label>NRIC:</label><asp:TextBox ID="tbxnric" name="nric" 
                                    value="Eg.G0756515U" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server"></asp:TextBox>
                            </p>
                            
                            <p><label>Address</label><asp:TextBox ID="tbxaddress" name="address" 
                                    value="Eg.bedok north rd blk 485 #04-715 Singapore 418485" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server" Height="51px" TextMode="MultiLine" 
                                    Width="216px"></asp:TextBox>
                            </p>

                            <p>Contact Number (handphone or housephone):&nbsp;</p>
                            <p>&nbsp;<asp:TextBox ID="tbxphone" name="handphone" value="e.g. 95413259 / 64538416" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server"></asp:TextBox></p>Avaliable Day / Time<br />
                            <br />
                            <asp:DropDownList ID="ddltime" runat="server">
                                <asp:ListItem>Morning (8am - 12pm)</asp:ListItem>
                                <asp:ListItem>Afternoon (12pm - 6pm)</asp:ListItem>
                                <asp:ListItem>Night (6pm - 11pm)</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:CheckBoxList ID="cblday" runat="server" Width="600px" RepeatColumns="4" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Monday</asp:ListItem>
                                <asp:ListItem>Tuesday</asp:ListItem>
                                <asp:ListItem Value="Wedensday"></asp:ListItem>
                                <asp:ListItem>Thursday</asp:ListItem>
                                <asp:ListItem>Friday</asp:ListItem>
                                <asp:ListItem>Saturday</asp:ListItem>
                                <asp:ListItem Value="Sunday"></asp:ListItem>
                            </asp:CheckBoxList>
                            <br></br>


                           
                            
                            <p><label>Email-address</label><asp:TextBox ID="tbxemailaddress" name="email" 
                                    value="E.g.abcde@hotmail.com" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server"></asp:TextBox>
                            </p>
                          
                            <p>Description</p>
                            <p>&nbsp;<asp:TextBox ID="tbxdescription" name="description" 
                                    value="e.g. characterstic, outgoing etc" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server" Height="122px" TextMode="MultiLine" 
                                    Width="309px"></asp:TextBox>
                            </p>
                        	<p>Remarks</p>
                            <asp:TextBox ID="tbxremarks" name="remarks" 
                                    value="Eg.bedok north rd blk 485 #04-715 Singapore 418485" 
                                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                                    class="text-long" runat="server" Height="122px" TextMode="MultiLine" 
                                    Width="309px"></asp:TextBox><br />
                            </p>
                            <p><br><label>
                                <asp:ImageButton ID="btnSubmit" runat="server" 
                                    ImageUrl="~/Style/img/submit.gif" onclick="btnSubmit_Click" /></label></p>
                        </fieldset>
                    </form>
                </div>
</asp:Content>
