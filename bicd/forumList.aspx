<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forumList.aspx.cs" Inherits="forumList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/gridStyles.css" rel="stylesheet" type="text/css" />
    
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
            CssClass="sizeButton" /></p>
    
      </div>
      <div id="aside_menu" class="sizeAside">
      <ul id="nav_lin">
			<li><a href="create_member.aspx">Sign Up</a></li>
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
 
    
    <asp:GridView ID="GridView1" CellPadding="20" CssClass="Grid" runat="server" 
            GridLines="None" AutoGenerateColumns="False"   ShowHeader="true"
             
             Width="100%">
            <Columns>
            <asp:BoundField DataField="ForumDate"  DataFormatString="{0:MMMM d, yyyy}" HeaderText="Published Date"/>
            <asp:BoundField DataField="FullName" HeaderText="Author" />
            <asp:TemplateField  ItemStyle-Width="80%" HeaderText="Subject">
            
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ForumTitle", "~/seeForum.aspx?ForumTitle={0}") %>'
                    Text='<%# Eval("ForumTitle") %>' />
                
            </ItemTemplate>
        </asp:TemplateField>
        
            
            </Columns>
            <headerstyle backcolor="LightCyan"
          forecolor="MediumBlue" Height="40px"/>
        </asp:GridView>
      
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
