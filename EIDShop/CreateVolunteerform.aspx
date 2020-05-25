<%@ Page Title="" Language="C#" MasterPageFile="~/EIDShopMaster.Master" AutoEventWireup="true" CodeBehind="CreateVolunteerform.aspx.cs" Inherits="EIDShop.Createupdateform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sidebar">
        <ul class="sideNav">
            <li><a href="UserManagement.aspx">User Management</a></li>
            <li><a href="ResidentManagement.aspx">Resident Management</a></li>
            <li><a href="ShoppingManagement.aspx">Shopping Management</a></li>
            <li><a class="active" href="Volunteerpage.aspx">Volunteer Management</a></li>
            <li><a href="index.aspx">Logout</a></li>
        </ul>
    </div>
    <h2>
        Volunteer Management » <a href="Volunteerpage.aspx">Overview</a> »
        <a class="active" href="CreateVolunteer.aspx">Create</a></h2>
    <div id="main">
        <h3>
            Create Section</h3>
        <fieldset>
            <p>
                <label>
                Name:</label><asp:TextBox ID="tbxfirstname" runat="server" class="text-long" 
                    name="First Name" 
                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                    value="First Name"></asp:TextBox>
                <asp:TextBox ID="tbxlastname" runat="server" class="text-long" name="Last Name" 
                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                    value="Last Name"></asp:TextBox>
            </p>
            <p>
                <label>
                NRIC:</label><asp:TextBox ID="tbxnric" runat="server" class="text-long" 
                    name="nric" onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                    value="Eg.G0756515U"></asp:TextBox>
            </p>
            <p>
                <label>
                Address</label><asp:TextBox ID="tbxaddress" runat="server" class="text-long" 
                    Height="51px" name="address" 
                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                    TextMode="MultiLine" value="Eg.bedok north rd blk 485 #04-715 Singapore 418485" 
                    Width="216px"></asp:TextBox>
            </p>
            <p>
                Contact Number (handphone or housephone):&nbsp;</p>
            <p>
                &nbsp;<asp:TextBox ID="tbxphone" runat="server" class="text-long" name="handphone" 
                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                    value="e.g. 95413259 / 64538416"></asp:TextBox>
            </p>
            Avaliable Day / Time<br />
            <br />
            <asp:DropDownList ID="ddltime" runat="server">
                <asp:ListItem>Morning (8am - 12pm)</asp:ListItem>
                <asp:ListItem>Afternoon (12pm - 6pm)</asp:ListItem>
                <asp:ListItem>Night (6pm - 11pm)</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:CheckBoxList ID="cblday" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" Width="600px">
                <asp:ListItem>Monday</asp:ListItem>
                <asp:ListItem>Tuesday</asp:ListItem>
                <asp:ListItem Value="Wedensday"></asp:ListItem>
                <asp:ListItem>Thursday</asp:ListItem>
                <asp:ListItem>Friday</asp:ListItem>
                <asp:ListItem>Saturday</asp:ListItem>
                <asp:ListItem Value="Sunday"></asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <p>
                <label>
                Email-address</label><asp:TextBox ID="tbxemailaddress" runat="server" 
                    class="text-long" name="email" 
                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                    value="E.g.abcde@hotmail.com"></asp:TextBox>
            </p>
            <p>
                Description</p>
            <p>
                &nbsp;<asp:TextBox ID="tbxdescription" runat="server" class="text-long" 
                    Height="122px" name="description" 
                    onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                    onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                    TextMode="MultiLine" value="e.g. characterstic, outgoing etc" Width="309px"></asp:TextBox>
            </p>
            <p>
                Remarks</p>
            <asp:TextBox ID="tbxremarks" runat="server" class="text-long" Height="122px" 
                name="remarks" 
                onblur="if(!value){value = defaultValue;this.style.color='#999'}" 
                onfocus="if(value == defaultValue){value='';this.style.color='#000'}" 
                TextMode="MultiLine" value="Eg.bedok north rd blk 485 #04-715 Singapore 418485" 
                Width="309px"></asp:TextBox>
            <br />
            <br />
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
</asp:Content>
