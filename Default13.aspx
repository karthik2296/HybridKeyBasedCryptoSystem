<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default13.aspx.cs" Inherits="Default13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1
        {
             border-style: hidden;
             border-color: inherit;
             border-width: medium;
             width: 19px;
         }
        table
        {
            border:hidden;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:300px; margin-top:30px;margin-left:150px;">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style1"></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/cloud1.jpg" Height="209px" Width="205px" />
                </td>
                <td class="auto-style1"></td>
                <td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="443px" 
            HeaderStyle-Font-Size="Medium" HeaderStyle-BackColor="#2E3C59" 
            HeaderStyle-ForeColor="White" Font-Names="Times New Roman" Font-Size="Medium">
    <Columns>
        <asp:ButtonField Text="Delete" CommandName="Select" ItemStyle-Width="80px" />
        
      <%--  <asp:BoundField ItemStyle-Width="150px" DataField="age" HeaderText="City" />--%>
        <asp:BoundField ItemStyle-Width="100px" DataField="UId" HeaderText="Attacker ID" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <%--<asp:BoundField ItemStyle-Width="100px" DataField="oid" HeaderText="Owner Id" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>--%>
        <asp:BoundField ItemStyle-Width="100px" DataField="fid" HeaderText="File Id" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <asp:BoundField ItemStyle-Width="100px" DataField="fname" HeaderText="File Name" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <%--<asp:BoundField ItemStyle-Width="100px" DataField="Location" HeaderText="Location" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>--%>
         
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

