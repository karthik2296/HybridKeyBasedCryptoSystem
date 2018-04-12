<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1
        {
             border-style: hidden;
             border-color: inherit;
             border-width: medium;
             width: 20px;
         }
        table
        {
            border:hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:300px; margin-top:30px;margin-left:000px;">
        <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></td>
                <td class="auto-style1"></td>
                <td style="font-family: 'Times New Roman', Times, serif; color: #660066; font-size: medium; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REVOKE USER&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Custom-Icon-Design-Pretty-Office-8-Users.ico" Height="209px" Width="205px" />
                </td>
                <td class="auto-style1"></td>
                <td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="670px" 
            HeaderStyle-Font-Size="Medium" HeaderStyle-BackColor="#2E3C59" 
            HeaderStyle-ForeColor="White" Font-Names="Times New Roman" Font-Size="Medium">
    <Columns>
        <asp:ButtonField Text="Revoke" CommandName="Select" ItemStyle-Width="80px" />
        
      <%--  <asp:BoundField ItemStyle-Width="150px" DataField="age" HeaderText="City" />--%>
        <asp:BoundField ItemStyle-Width="100px" DataField="UId" HeaderText="User ID" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <asp:BoundField ItemStyle-Width="100px" DataField="Email" HeaderText="Email" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField ItemStyle-Width="100px" DataField="FirstName" HeaderText="User Name" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <asp:BoundField ItemStyle-Width="100px" DataField="PhoneNo" HeaderText="Phone No" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <asp:BoundField ItemStyle-Width="100px" DataField="SDI1" HeaderText="SDI" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         
         </Columns>

<HeaderStyle BackColor="#009999" Font-Size="Medium" ForeColor="White"></HeaderStyle>
</asp:GridView></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style1"></td>
                <td></td>
            </tr>
        </table>
        
    
        </div>
</asp:Content>

