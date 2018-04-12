<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default10.aspx.cs" Inherits="Default10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 170px;
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
            border:hidden;
            margin-top:50px;
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
        width: 19px;
    }
        .auto-style5
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 19px;
            height: 26px;
        }
        .auto-style6
        {
            height: 26px;
             border-style: hidden;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
<tr>
<td class="auto-style1" rowspan="5">
    &nbsp;</td>
<td  class="auto-style5" >
</td>
<td align="center" class="auto-style6" style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #660066">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SECURE LOGIN</td>
</tr>
<tr>
<td class="auto-style4"></td>
<td  class="auto-style2" >
<asp:Label ID="lbluser" runat="server" Text="User Id" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style4"></td>
<td " class="auto-style2" class="auto-style3" >
<asp:Label ID="lblpwd" runat="server" Text="Secret key" ForeColor="#0066FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>



<tr>
<td class="auto-style4"></td>
<td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit" runat="server" Text="Login"
onclick="btnsubmit_Click" />
    &nbsp;</td>
<td align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit0" runat="server" Text="Reset"
onclick="btnsubmit1_Click" />
</td>
</tr>
<tr>
<td class="auto-style4"></td>
<td class="auto-style2"></td>
<td>
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
</td>
</tr>
</table>
</asp:Content>

