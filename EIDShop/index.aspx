<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EIDShop.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/css/Lgoinlo.css" rel="stylesheet" type="text/css" media="screen" />
<title>EID SHOP LOGIN SYSTEM</title>
</head>
<body id="login">
<form id="loginForm" runat="server">
	<h3>EID SHOP</h3>
	<label for="userName"><span>Username:</span><asp:TextBox ID="tbxUserName" runat="server"></asp:TextBox></label>
	<label for="passWord"><span>Password:</span><asp:TextBox ID="tbxPassword" runat="server" TextMode="Password"></asp:TextBox></label>
	<label id="submit">
        <asp:Button ID="btnLogin" runat="server" CssClass="bt" Text="Login"  onclick="btnLogin_Click" />
	    <input type="button" class="bt" value="close" onclick="window.close();"/>
        <a href="Register.aspx">[Register]</a>
	</label>
</form>
</body>
</html>
