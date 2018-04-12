<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 166px;
        }
        table
        {
            border:hidden;
            margin-top:50px;
           
        }
        .auto-style5
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 166px;
            height: 30px;
        }
        .auto-style6
        {
            height: 30px;
            border-style: hidden;
        }
        .auto-style7
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 235px;
            height: 26px;
        }
        .auto-style8
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 22px;
            height: 26px;
        }
        .auto-style9
        {
            height: 26px;
            width: 166px;
             border-style: hidden;
        }
    .auto-style10
    {
        border-style: hidden;
        border-color: inherit;
        border-width: medium;
        width: 22px;
        height: 30px;
    }
    .auto-style11
    {
        border-style: hidden;
        border-color: inherit;
        border-width: medium;
        width: 22px;
    }
        .a
        {
            height:400px;
        }
        .auto-style12
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 22px;
            height: 31px;
        }
        .auto-style13
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 166px;
            height: 31px;
        }
        .auto-style14
        {
            height: 31px;
            border-style: hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="a">
    <table align="center">
<tr>
<td class="auto-style7" rowspan="5">
    <asp:Image ID="Image1" runat="server" Height="151px" ImageUrl="~/images/encrypt.png" Width="157px" />
    </td>
<td  class="auto-style8" >
</td>
<td align="center" class="auto-style9">
    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
    </td>
</tr>
<tr>
<td class="auto-style10"></td>
<td  class="auto-style5" >
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="File Id" ForeColor="Black"></asp:Label>
</td>
<td class="auto-style6">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td class="auto-style10"></td>
<td  class="auto-style5" >
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="File" ForeColor="Black"></asp:Label>
</td>
<td class="auto-style6">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" />
</td>
</tr>

<tr>
<td class="auto-style12"></td>
<td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit" runat="server" Text="Encrypt"
onclick="btnsubmit_Click" />
    &nbsp;</td>
<td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit0" runat="server" Text="Upload"
onclick="btnsubmit1_Click" Width="69px" />
</td>
</tr>
<tr>
<td class="auto-style11"></td>
<td class="auto-style2">
    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
    </td>
<td class="auto-style6">
    &nbsp;</td>
</tr>
</table>
        </div>
</asp:Content>

