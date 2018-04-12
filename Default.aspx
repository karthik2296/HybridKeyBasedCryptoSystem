<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        .auto-style12
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 46px;
            height: 26px;
        }
        .auto-style13
        {
            width: 163px;
            border-style: hidden;
            height: 26px;
        }
    </style>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="REGISTER HERE" Font-Bold="True" Font-Size="Medium" ForeColor="#9933FF"></asp:Label>
    <table align="center">
<tr>
<td class="auto-style1" rowspan="12">
    <asp:Image ID="Image1" runat="server" Height="315px" ImageUrl="~/images/register-now.jpg" Width="229px" />
    </td>
<td  class="auto-style12" >
</td>
<td class="auto-style13"  >
   
    </td>
    <td></td>
   
</tr>
       
<tr>
<td class="auto-style5"></td>
<td  class="auto-style2" >
<asp:Label ID="lbluser" runat="server" Text="Data Owner Id" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style5"></td>
<td " class="auto-style2" class="auto-style3" >
<asp:Label ID="lblpwd" runat="server" Text="Password" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td>
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
<td class="auto-style5"></td>
<td  class="auto-style2">
<asp:Label ID="lblemail" runat="server" Text="Email" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td>
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
<td class="auto-style5"></td>
<td  class="auto-style2" >
<asp:Label ID="lbladd" runat="server" Text="Location" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td class="auto-style11">
<asp:TextBox ID="txtlocation" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style5"></td>
<td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit" runat="server" Text="Save"
onclick="btnsubmit_Click" />
    &nbsp;</td>
<td align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit0" runat="server" Text="Login"
onclick="btnsubmit1_Click" />
</td>
</tr>
<tr>
<td class="auto-style4"></td>
<td class="auto-style5">
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
    </td>
<td>
    Existing User
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login Here</asp:LinkButton>
</td>
</tr>
</table>
 </asp:Content>

