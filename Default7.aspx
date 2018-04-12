<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
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
        }
        .auto-style5
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 163px;
            height: 30px;
        }
        .auto-style6
        {
            height: 30px;
        }
        .auto-style7
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 315px;
            height: 26px;
        }
        .auto-style9
        {
            height: 26px;
             border-style: hidden;
        }
         .auto-style11
         {
             border-style: hidden;
             border-color: inherit;
             border-width: medium;
             width: 163px;
             height: 32px;
         }
         .auto-style12
         {
             border-style: hidden;
             height: 32px;
         }
         .auto-style13
         {
             border-style: hidden;
             border-color: inherit;
             border-width: medium;
             height: 26px;
         }
         .auto-style14
         {
             border-style: hidden;
             border-color: inherit;
             border-width: medium;
             height: 30px;
         }
         .auto-style15
         {
             border-style: hidden;
             border-color: inherit;
             border-width: medium;
             height: 32px;
         }
         .auto-style16
         {
             border-style: hidden;
             border-color: inherit;
             border-width: medium;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
<tr>
<td class="auto-style7" rowspan="7">
    <asp:Image ID="Image1" runat="server" Height="199px" ImageUrl="~/images/upload-file-512.png" Width="223px" />
    </td>
<td  class="auto-style13" >
</td>
<td align="center" class="auto-style9">
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </td>
</tr>
<tr>
<td class="auto-style14"></td>
<td  class="auto-style5" >
    &nbsp;</td>
<td class="auto-style6">
    &nbsp;</td>
</tr>

<tr>
<td class="auto-style14"></td>
<td  class="auto-style5" >
<asp:Label ID="lblcnfmpwd" runat="server" Text="Public Key" ForeColor="Black" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td class="auto-style6">
<asp:TextBox ID="txtcnmpwd" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style14"></td>
<td  class="auto-style5" >
<asp:Label ID="Label1" runat="server" Text="File Data" ForeColor="Black" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
</td>
<td class="auto-style6">
    <asp:FileUpload ID="FileUpload1" runat="server" />
</td>
</tr>

<tr>
<td class="auto-style15"></td>
<td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit" runat="server" Text="Decrypt"
onclick="btnsubmit_Click" />
    &nbsp;</td>
<td align="left" class="auto-style12" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit0" runat="server" Text="Reset"
onclick="btnsubmit1_Click" />
</td>
</tr>
<tr>
<td class="auto-style16"></td>
<td class="auto-style2">
    <asp:Label ID="Label3" runat="server"></asp:Label>
    </td>
<td>
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
</td>
</tr>
</table>
</asp:Content>

