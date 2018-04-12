<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 205px;
        }
        .auto-style2
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 163px;
        }
        table
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 652px;
            margin-top:30px;
        }
        .auto-style3
        {
            width: 163px;
             border-style: hidden;
        height: 30px;
    }
        .auto-style4
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 16px;
        }
        .auto-style5
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 46px;
        }
        .auto-style6
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 46px;
            height: 23px;
        }
        .auto-style8
        {
            height: 23px;
             border-style: hidden;
        }
        .auto-style9
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 46px;
            height: 30px;
        }
        .auto-style10
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 163px;
            height: 30px;
        }
        .auto-style11
        {
            height: 30px;
        }
        .auto-style13
        {
            width: 163px;
            border-style: hidden;
            height: 23px;
        }
    .auto-style14 {
        border-style: hidden;
        border-color: inherit;
        border-width: medium;
        width: 46px;
        height: 29px;
    }
    .auto-style15 {
        border-style: hidden;
        border-color: inherit;
        border-width: medium;
        width: 163px;
        height: 29px;
    }
    .auto-style16 {
        height: 29px;
    }
    .auto-style17 {
        border-style: hidden;
        border-color: inherit;
        border-width: medium;
        width: 46px;
        height: 32px;
    }
    .auto-style18 {
        border-style: hidden;
        border-color: inherit;
        border-width: medium;
        width: 163px;
        height: 32px;
    }
    .auto-style19 {
        height: 32px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="REGISTER HERE" Font-Bold="True" Font-Size="Medium" ForeColor="#9933FF"></asp:Label>
    <table align="center">
<tr>
<td class="auto-style1" rowspan="12">
    <asp:Image ID="Image1" runat="server" Height="315px" ImageUrl="~/images/register-now.jpg" Width="229px" />
    </td>
<td  class="auto-style6" >
</td>
<td class="auto-style13"  >
   
    </td>
    <td class="auto-style8">

</td>
</tr>
<tr>
<td class="auto-style9"></td>
<td  class="auto-style10" >
<asp:Label ID="lbluser" runat="server" Text="User Id" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td class="auto-style11">
<asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style9"></td>
<td " class="auto-style2" class="auto-style3" >
<asp:Label ID="lblpwd" runat="server" Text="Password" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td class="auto-style11">
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style5"></td>
<td  class="auto-style2" >
<asp:Label ID="lblcnfmpwd" runat="server" Text="Confirm Password" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtcnmpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style5"></td>
<td  class="auto-style2">
<asp:Label ID="lblfname" runat="server" Text="FirstName" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style5"></td>
<td  class="auto-style2">
<asp:Label ID="lbllname" runat="server" Text="LastName" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style9"></td>
<td  class="auto-style10">
<asp:Label ID="lblemail" runat="server" Text="Email" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td class="auto-style11">
<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style9"></td>
<td  class="auto-style10" >
<asp:Label ID="lblCnt" runat="server" Text="Phone No" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td class="auto-style11">
<asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style14"></td>
<td  class="auto-style15" >
<asp:Label ID="lbladd" runat="server" Text="Location" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td class="auto-style16">
<asp:TextBox ID="txtlocation" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style17"></td>
<td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit" runat="server" Text="Register"
onclick="btnsubmit_Click" />
    &nbsp;</td>
<td align="left" class="auto-style19" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit0" runat="server" Text="Login"
onclick="btnsubmit1_Click" />
</td>
</tr>
<tr>
<td class="auto-style4"></td>
<td class="auto-style5">
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
    </td>
<td>
&nbsp;<br />
    Existing User
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login Here</asp:LinkButton>
    &nbsp;</td>
</tr>
</table>
</asp:Content>

