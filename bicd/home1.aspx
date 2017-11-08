<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home1.aspx.cs" Inherits="home1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/bicd.css" rel="stylesheet" type="text/css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>
    <script src="JS/jquery.horizontalNav.js" type="text/javascript"></script>
     <script>
         $(document).ready(function () {
             $('.full-width').horizontalNav();
         });
  </script>

    <title></title>
    <style>
    
  /**
   * Base styles for horizontal navigation
   */
  .horizontal-nav {
    background: #efefef;
    border-radius: 6px;
  }
  .horizontal-nav ul {
    background: #128F9A;
    float: left;
    text-align: center;
    border-radius: 6px;
    border: 1px solid #0e7079;
  }
  .horizontal-nav ul li {
    float: left;
    border-left: 1px solid #0e7079;
  }
  .horizontal-nav ul li:first-child {
    border-left: 0 none;
  }
  .horizontal-nav ul li a {
    display: block;
    padding: 10px 20px;
    color: #fff;
    border-top: 1px solid rgba(255,255,255, 0.25);
    border-left: 1px solid rgba(255,255,255, 0.25);
  }
  .horizontal-nav ul li:first-child a {
    border-left: 0 none;
  }
  .horizontal-nav ul li a:hover {
    background: #12808a;
  }
  .horizontal-nav ul li:first-child a {
    border-top-left-radius: 6px;
    border-bottom-left-radius: 6px;
  }
  .horizontal-nav ul li:last-child a {
    border-top-right-radius: 6px;
    border-bottom-right-radius: 6px;
  }
    
  </style>
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
      <nav class="horizontal-nav full-width">
              <ul>
                <li><a href="#">Navigation Item</a></li>
                <li><a href="#">Work</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </nav>
      <!--content starts here-->
     <div id="content">
     
     </div>
     <!--content ends here-->
     <!--Social_network starts here-->
     <div id="Social_network">
     </div>
     <!--Social_network ends here-->
     <!--footer starts here-->
     <div id="footer">
     </div>
     <!--footer ends here-->
    </div>
     <!--pageWrapper starts here-->
    
    </form>
</body>
</html>
