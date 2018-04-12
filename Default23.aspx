<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default23.aspx.cs" Inherits="Default17" %>

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
    <style type="text/css">
        .auto-style1 {
            width: 65px;
        }
        .auto-style2 {
            width: 20px;
        }
    </style>
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
            <h2>About This Template !</h2>
            <p>This is a W3C standards compliant free website template from <a href="http://www.os-templates.com/">OS Templates</a>. This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer. For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>.</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
        <li><img src="images/demo/2.jpg" alt="" />
          <div class="floater">
            <h2>Cursus penati saccum ut curabitur nulla.</h2>
            <p>Temperinte interdum sempus odio urna eget curabitur semper convallis nunc laoreet. Nullain convallis ris elis vest liberos nis diculis feugiat in rutrum. Suspendreristibulumfaucibulum lobortor quis tortortor ris sapien sce enim et volutpat sus. Urnaretiumorci orci fauctor leo justo nulla cras ridiculum&hellip;</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
        <li><img src="images/demo/3.jpg" alt="" />
          <div class="floater">
            <h2>Cursus penati saccum ut curabitur nulla.</h2>
            <p>Temperinte interdum sempus odio urna eget curabitur semper convallis nunc laoreet. Nullain convallis ris elis vest liberos nis diculis feugiat in rutrum. Suspendreristibulumfaucibulum lobortor quis tortortor ris sapien sce enim et volutpat sus. Urnaretiumorci orci fauctor leo justo nulla cras ridiculum&hellip;</p>
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
            <div style="height:300px; margin-top:30px;margin-left:30px;">
         <table>
             <tr>
                 <td class="auto-style1">
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="auto-style2"></td>
                 <td class="auto-style3"></td>
             </tr>
             <tr>
                 <td class="auto-style1">
                     &nbsp;</td>
                 <td class="auto-style2"></td>
                 <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="616px" 
            HeaderStyle-Font-Size="Medium" HeaderStyle-BackColor="#2E3C59" 
            HeaderStyle-ForeColor="White" Font-Names="Times New Roman" Font-Size="Medium">
    <Columns>
        <asp:ButtonField Text="Missing SDI" CommandName="Select" ItemStyle-Width="150px" />
        
      <%--  <asp:BoundField ItemStyle-Width="150px" DataField="age" HeaderText="City" />--%>
        <asp:BoundField ItemStyle-Width="100px" DataField="UId" HeaderText="User ID" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <asp:BoundField ItemStyle-Width="100px" DataField="FirstName" HeaderText="Name" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField ItemStyle-Width="100px" DataField="Email" HeaderText="Email" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <%--<asp:BoundField ItemStyle-Width="100px" DataField="date1" HeaderText="Date" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>--%>
        <%-- <asp:BoundField ItemStyle-Width="100px" DataField="des" HeaderText="Descriptions" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>--%>
        <asp:BoundField ItemStyle-Width="100px" DataField="PhoneNo" HeaderText="Phone" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <asp:BoundField ItemStyle-Width="100px" DataField="Location" HeaderText="Location" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         
         </Columns>

<HeaderStyle BackColor="#009999" Font-Size="Medium" ForeColor="White"></HeaderStyle>
</asp:GridView>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1"></td>
                 <td class="auto-style2"></td>
                 <td class="auto-style9">
                     <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                 </td>
             </tr>
         </table>
        </div>
  </div>
</div>
    </div>
<!-- ####################################################################################################### -->

   
        </form>
</body>
    
</html>
