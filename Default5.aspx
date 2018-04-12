<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        table
        {
            border:hidden;
        }
         tr
         {
            border:hidden;
         }
         td
         {
             border:hidden;
         }
         .auto-style2
         {
             width: 26px;
              border:hidden;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:350px; margin-top:30px;margin-left:80px;">
        <table>
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                </td>
                 <td class="auto-style2"></td>
                <td></td>
            </tr>
             <tr>
                <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="545px" 
            HeaderStyle-Font-Size="Medium" HeaderStyle-BackColor="#2E3C59" 
            HeaderStyle-ForeColor="White" Font-Names="Times New Roman" Font-Size="Medium">
    <Columns>
        <asp:ButtonField Text="Download" CommandName="Select" ItemStyle-Width="80px" />
        
      <%--  <asp:BoundField ItemStyle-Width="150px" DataField="age" HeaderText="City" />--%>
        <asp:BoundField ItemStyle-Width="100px" DataField="fid" HeaderText="ID" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField ItemStyle-Width="100px" DataField="fname" HeaderText="File Name" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <asp:BoundField ItemStyle-Width="100px" DataField="key1" HeaderText="Public Key" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <%-- <asp:BoundField ItemStyle-Width="100px" DataField="des" HeaderText="Descriptions" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         --%>
         </Columns>

<HeaderStyle BackColor="#009999" Font-Size="Medium" ForeColor="White"></HeaderStyle>
</asp:GridView>
                 </td>
                 <td class="auto-style2"></td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="183px" ImageUrl="~/images/down.png" Width="204px" />
                 </td>
            </tr>
             <tr>
                <td></td>
                 <td class="auto-style2"></td>
                <td></td>
            </tr>
        </table>
        &nbsp;</div>
</asp:Content>

