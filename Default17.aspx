<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default17.aspx.cs" Inherits="Default17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>PlusBusiness</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.jcarousel.setup.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="styles.css" type="text/css" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="index.html">Secure Data Share</a></h1>
      <p>Using RSIBE Encryption</p>
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="Default17.aspx">Home</a></li>
         <li><a href="Default14.aspx">Data Owner</a></li>
        <li><a href="Default15.aspx">Authority</a></li>
        <li><a href="Default3.aspx">User</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div id="featured_content">
      <ul>
        <li><img src="images/demo/1.jpg" alt="" />
          <div class="floater">
            <%--<h2>About This Template !</h2>
            <p>This is a W3C standards compliant free website template from <a href="http://www.os-templates.com/">OS Templates</a>. This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer. For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>.</p>--%>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
        <li><img src="images/demo/2.jpg" alt="" />
          <div class="floater">
            <%--<h2>Cursus penati saccum ut curabitur nulla.</h2>
            <p>Temperinte interdum sempus odio urna eget curabitur semper convallis nunc laoreet. Nullain convallis ris elis vest liberos nis diculis feugiat in rutrum. Suspendreristibulumfaucibulum lobortor quis tortortor ris sapien sce enim et volutpat sus. Urnaretiumorci orci fauctor leo justo nulla cras ridiculum&hellip;</p>--%>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
        <li><img src="images/demo/3.jpg" alt="" />
          <div class="floater">
          <%--  <h2>Cursus penati saccum ut curabitur nulla.</h2>
            <p>Temperinte interdum sempus odio urna eget curabitur semper convallis nunc laoreet. Nullain convallis ris elis vest liberos nis diculis feugiat in rutrum. Suspendreristibulumfaucibulum lobortor quis tortortor ris sapien sce enim et volutpat sus. Urnaretiumorci orci fauctor leo justo nulla cras ridiculum&hellip;</p>--%>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
      </ul>
    </div>
    <a href="javascript:void(0);" id="featured-item-prev"><img src="layout/images/prev.png" alt="" /></a> <a href="javascript:void(0);" id="featured-item-next"><img src="layout/images/next.png" alt="" /></a> </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="container">
        <div id="ccontent">
    <div id="leftmenue" style="background-color: #FFFFFF">
      <h2>Submenue</h2>
      <ul>
        <li style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000">Home</li>
        <li style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000">Key Authority</li>
      </ul>
        <p style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000">
            Data Owner</p>
        <ul>
        <li style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000">User</li>
        <li></li>
      </ul>
    </div>
    <div id="content">
      <h1>two-factor Authentication!</h1>
      <p align="justify" style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 704px;">Cloud computing provides a flexible and convenient way for data sharing, which brings various benefits for both the individual and Organization. Users wants to transfer data into different environment sends valuable data. So we need cryptographically enhanced access control on the shared data. Identity-based encryption is providing cryptographical features to build a good flexible data sharing system. </p>
      <p align="justify" style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000">However, access control is not static. That is, when some user&#8217;s authorization is expired, there should be a mechanism that can remove him/her from the system.The revoked user cannot access both the old and new shared data. </p>
      <p align="justify" style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000">To this end, we propose a notion called revocable-storage Two-Factor Authondication Machnisum, which can provide the forward/backward security of ciphertext by introducing the functionalities of user revocation and ciphertext update simultaneously. Finally, we provide implementation results of the proposed scheme to demonstrate its practicability.</p>
    </div>
  </div>
</div>
    </div>
<!-- ####################################################################################################### -->

   
        </form>
</body>
    
</html>
