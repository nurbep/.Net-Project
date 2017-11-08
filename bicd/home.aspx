<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <!--photo gallery starts-->
    <link href="CSS/camera.css" rel="stylesheet" type="text/css" />
    
    <script type='text/javascript' src='JS/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='JS/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='JS/camera.min.js'></script> 
    <script type="text/javascript">
        jQuery(function () {

            jQuery('#camera_wrap_1').camera({
                thumbnails: true
            });

         
        });
	</script>
     <!--photo gallery ends-->
     <!--google map starts here-->
    <script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>
<script>
    var myCenter = new google.maps.LatLng(55.649934727908374, 12.534998059272766);
    var marker;

    function initialize() {
        var mapProp = {
            center: myCenter,
            zoom: 5,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("Gmap"), mapProp);

        marker = new google.maps.Marker({
            position: myCenter,
            animation: google.maps.Animation.BOUNCE
        });

        marker.setMap(map);
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>


<!--google map ends here-->
    <title></title>
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
			<li><a href="forumList.aspx">Forum</a></li>
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
    <asp:TextBox ID="txtPassword" CssClass="sizeInput" runat="server" placeholder="Password"></asp:TextBox>
        <br />
    <p style="text-align:center;"><asp:Button ID="btnLogin" runat="server" Text="Login" 
            CssClass="sizeButton" /></p>
    
      </div>
      <div id="aside_menu" class="sizeAside">
      <ul id="nav_lin">
			<li><a href="create_member.aspx">Sign Up</a></li>
			<li><a href="addPost.aspx">Post an add</a></li>
			<li><a href="writeForum.aspx">Write on forum</a></li>
			<li><a href="login.aspx">Login</a></li>
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
      <div class="fluid_container">
    	
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
            <div data-thumb="images/slides/thumbs/bridge.jpg" data-src="images/slides/bridge.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera is a responsive/adaptive slideshow. <em>Try to resize the browser window</em>
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/leaf.jpg" data-src="images/slides/leaf.jpg">
                <div class="camera_caption fadeFromBottom">
                    It uses a light version of jQuery mobile, <em>navigate the slides by swiping with your fingers</em>
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/road.jpg" data-src="images/slides/road.jpg">
                <div class="camera_caption fadeFromBottom">
                    <em>It's completely free</em> (even if a donation is appreciated)
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/sea.jpg" data-src="images/slides/sea.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera slideshow provides many options <em>to customize your project</em> as more as possible
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/shelter.jpg" data-src="images/slides/shelter.jpg">
                <div class="camera_caption fadeFromBottom">
                    It supports captions, HTML elements and videos and <em>it's validated in HTML5</em> (<a href="http://validator.w3.org/check?uri=http%3A%2F%2Fwww.pixedelic.com%2Fplugins%2Fcamera%2F&amp;charset=%28detect+automatically%29&amp;doctype=Inline&amp;group=0&amp;user-agent=W3C_Validator%2F1.2" target="_blank">have a look</a>)
                </div>
            </div>
            <div data-thumb="images/slides/thumbs/tree.jpg" data-src="images/slides/tree.jpg">
                <div class="camera_caption fadeFromBottom">
                    Different color skins and layouts available, <em>fullscreen ready too</em>
                </div>
            </div>
        </div><!-- #camera_wrap_1 -->
        
    	
   </div><!-- .fluid_container --> 
    
    <div id="comment" class="sizeMain">
      <p style="font: 16px/150% Georgia,Times New Roman; Times;serif;font-weight: normal;font-style: normal;font-size: 100%;color: #124270;">We are Bengali. We have rich culture and tradition. We want to cherish our culture in abroad. 
      So, it is important to be united under the same umbrella.</p>
     </div>
      <div id="pic" class="picAndMap">
          <asp:Image ID="Image1"  Style=" border-radius:10px;
    -webkit-border-radius:10px;
    -moz-border-radius:10px; 
    -o-border-radius:10px; width:100%;height:300px; " runat="server" ImageUrl="~/imageForDesign/rosenborg-rosenhaven-copenhagen-denmark-700x467.jpg" />
      </div>
      <div id="Gmap" class="picAndMap">
      
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
