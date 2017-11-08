<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create_member.aspx.cs" Inherits="create_member" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bicd.css" rel="stylesheet" type="text/css" />
    <!--navigation bar starts-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            var pull = $('#pull');
            menu = $('nav ul');
            menuHeight = menu.height();

            $(pull).on('click', function (e) {
                e.preventDefault();
                menu.slideToggle();
            });

            $(window).resize(function () {
                var w = $(window).width();
                if (w > 320 && menu.is(':hidden')) {
                    menu.removeAttr('style');
                }
            });
        });
	</script>
    <!--navigation bar ends-->
    <!--form style goes here-->
  <style type="text/css">
.subform {
  font-size: 1.2em;
  
  font-family:Tahoma, Geneva, sans-serif;	
}
.subform .label {

  display: inline-block;
  width:40%;
  float:left;
  vertical-align: top;
  text-align: right;
  margin-right: 10px;
  font-weight:normal;
  color:#555;
}
.subform .textbox
{
  width:50%;
  float:left;  
    }
.subform input[type="submit"]  
{
   /* display: block;
    
 position:absolute;
  left:70%; 
  padding: 0 18px;
  height: 29px;
font-family: Arial, sans-serif;
font-size: 1.2em;
font-weight: bold;
color: #fff;
text-decoration: none;
text-shadow: 1px 1px 1px #666;
text-align: center;
background: url(../images/bg.jpg) no-repeat center -200px;
background: rgba(80, 125, 200, 0.55);
-moz-border-radius: 10px;
-webkit-border-radius: 10px;
border-radius: 10px;
-webkit-transition: background 0.5s linear;
-moz-transition: background 0.5s linear;
transition: background 0.5s linear;
}*/
    
  position:relative;
  left:70%;
   margin-bottom:20px;
  padding: 0 18px;
  height: 29px;
  font-size: 12px;
  font-weight: bold;
  color: #527881;
  text-shadow: 0 1px #e3f1f1;
  background: #cde5ef;
  border: 1px solid;
  border-color: #b4ccce #b3c0c8 #9eb9c2;
  border-radius: 16px;
  outline: 0;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  background-image: -webkit-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -moz-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -o-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: linear-gradient(to bottom, #edf5f8, #cde5ef);
  -webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
}
.subform input[type=submit]:active {
  background: #cde5ef;
  border-color: #9eb9c2 #b3c0c8 #b4ccce;
  -webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
}
.subform input[type=submit]:hover {
  background: #B0006;
  border-color: #9eb9c2 #b3c0c8 #b4ccce;
  -webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
}
.subform input[type=text]:focus, input[type=password]:focus {
  border-color: #7dc9e2;
  outline-color: #dceefc;
  outline-offset: 0;
}
.subform select {
	font-size: 1.2em;
}
.subform input[type="text"], .subform textarea 
{
    
	color: #404040;
  background: white;
  border: 1px solid;
  border-color: #c4c4c4 #d1d1d1 #d4d4d4;
  border-radius: 2px;
  outline: 5px solid #eff4f7;
  -moz-outline-radius: 3px;
  -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
	
	padding: 5px;
	margin-bottom:5px;	
}
.subform input[type="text"]:focus, .subform textarea:focus {
  background-color: white;
  color: black;
}
/*.subform .fileupload
{
    position:relative;
    left:40%;
    margin-bottom:20px;
  padding: 0 18px;
  height: 40px;
  font-size: 12px;
  font-weight: bold;
  color: #527881;
  text-shadow: 0 1px #e3f1f1;
  background: #cde5ef;
  border: 1px solid;
  border-color: #b4ccce #b3c0c8 #9eb9c2;
  border-radius: 16px;
  outline: 0;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  background-image: -webkit-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -moz-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -o-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: linear-gradient(to bottom, #edf5f8, #cde5ef);
  -webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);   
}
*/
.SizeFieldset
{
 padding-left:5%;
 border-radius:5px;
 -webkit-border-radius:5px;
 -moz-border-radius:5px;
 -o-border-radius:5px;
}

<!--file upload starts-->
.button::-webkit-file-upload-button {
  visibility: hidden;
}
.button:before {
  content: 'Select';
  display: inline-block;
  background: -webkit-linear-gradient(top, #f9f9f9, #e3e3e3);
  border: 1px solid #999;
  border-radius: 3px;
  padding: 5px 8px;
  outline: none;
  white-space: nowrap;
  -webkit-user-select: none;
  cursor: pointer;
  text-shadow: 1px 1px #fff;
  font-weight: 700;
  font-size: 10pt;
}
.button:hover:before {
  border-color: black;
}
.button:active:before {
  background: -webkit-linear-gradient(top, #e3e3e3, #f9f9f9);
}

<!--file upload ends-->
</style>
    <!--form style ends here-->
</head>
<body>
    <form id="form1" runat="server">
    <!--pageWrapper starts here-->
    <div id="pageWrapper">
    <!--header starts here-->
     <div id="header">
     </div>
     <!--header ends here-->
     <!--nav starts here-->
     <!--<div id="nav">
     <ul>
      <li><a href="#">About The Book</a></li>
      <li><a href="#">CSS Properties</a></li>
      <li><a href="#">CSS Tips</a></li>
      <li><a href="#">CSS Gotchas</a></li>
      <li><a href="#">Contact Us</a></li>
     </ul>
     </div>
     <!--nav ends here-->
     <nav class="clearfix">
		<ul class="clearfix">
			<li><a href="home.aspx">Home</a></li>
			<li><a href="seeAddList.aspx">Advertise</a></li>
			<li><a href="#">Member</a></li>
			<li><a href="#">Forum</a></li>
			<li><a href="photo_gallery.aspx">Photo Gallery</a></li>
			<li><a href="contact.aspx">Contact</a></li>	
		</ul>
		<a href="#" id="pull">Menu</a>
	</nav>
      <!--content starts here-->
     <div id="content">
      <div id="aside">
      <div class="login sizeAside">
      <h1>Login to BICD</h1>
      
    <asp:TextBox ID="txtUserName" CssClass="sizeInput" runat="server" placeholder="Username"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" CssClass="sizeInput" runat="server" placeholder="Password"></asp:TextBox>
        <br />
    <p style="text-align:center;"><asp:Button ID="btnLogin" runat="server" Text="Login" 
            CssClass="sizeButton"/></p>
    
      </div>
      <div id="aside_menu" class="sizeAside">
      <ul id="nav_lin">
			<li><a href="create_member.aspx">Home</a></li>
			<li><a href="#">Advertise</a></li>
			<li><a href="#">Member</a></li>
			<li><a href="#">Forum</a></li>
			<li><a href="#">Photo Gallery</a></li>
			<li><a href="#">Contact</a></li>	
		</ul>
      </div>
      <div id="weather" class="sizeAside">
      <p style="border-bottom:1px solid #BE8B06;padding-bottom:10px;font:100%/150% Georgia,Times New Roman;color:#BE8B06;">Weather in Copenhagen</p>
      <div id="cont_09e789b327b5ecf43d757a8414785bab">
  <span id="h_09e789b327b5ecf43d757a8414785bab"><a href="http://www.yourweather.co.uk/weather_Bellahoj-Europe-Denmark-Region+Capital--1-198417.html" target="_blank" style="color:#000000; font-family:Arial; font-size:14px;">Bellahoj</a></span>
  <script type="text/javascript" src="http://www.yourweather.co.uk/wid_loader/09e789b327b5ecf43d757a8414785bab"></script>
</div>
      <p style="border-bottom:1px solid #BE8B06;padding-bottom:10px;"></p>
      </div>
      </div>
      <div id="main" class="sizeMain">
 
    
    <div class="subform" style="background:#dedede;">
    <fieldset class="SizeFieldset">
      <legend> Personal information</legend>
        <asp:Label ID="lblName" CssClass="label" runat="server" Text="Enter full name"></asp:Label><asp:TextBox ID="txtName"  CssClass="textbox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblUserName" CssClass="label" runat="server" Text="Enter user name"></asp:Label><asp:TextBox ID="txtUserName1"  CssClass="textbox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblPassword" CssClass="label" runat="server" Text="Enter password"></asp:Label><asp:TextBox ID="txtPassword" CssClass="textbox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblConfirmPassword" CssClass="label" runat="server" Text="Confirm password"></asp:Label><asp:TextBox ID="txtConfirmPassword" CssClass="textbox" runat="server"></asp:TextBox>
        <asp:Label ID="lblEmail" CssClass="label"  runat="server" Text="Enter your e-mail"></asp:Label><asp:TextBox ID="txtEmail" CssClass="textbox" runat="server"></asp:TextBox>
        <br />
        </fieldset>
        <br />
        <fieldset class="SizeFieldset">
        <legend>Upload profile picture(optional)</legend>
        <asp:Label ID="lblUpload" CssClass="label"  runat="server" Text="Upload picture"/>
         <asp:FileUpload ID="FileUpload1" CssClass="button" runat="server" />
        </fieldset>
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <br />
        <asp:Label ID="Label1" CssClass="label" runat="server"></asp:Label>
    
      
      </div>
      
      </div>
      
     </div>
     <!--content ends here-->
     <!--Social_network starts here-->
     
     <!--Social_network ends here-->
     <!--footer starts here-->
     <div id="footer">
     <p style="font-family:Arial;font-style:italic;text-align:center;font-size:12px;">Designed and developed by Nuruzzaman Nayan</p>
     </div>
     <!--footer ends here-->
    </div>
     <!--pageWrapper ends here-->
    
    
    </form>
</body>
</html>
