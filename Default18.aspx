<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default18.aspx.cs" Inherits="Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        table
        {
            border:hidden;
        }
         .auto-style2
         {
             width: 19px;
             border:hidden;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="height:300px; margin-top:30px;margin-left:30px;">
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
                     <asp:Image ID="Image1" runat="server" Height="208px" ImageUrl="~/images/demo/handshake.png" Width="196px" />
                 </td>
                 <td class="auto-style2"></td>
                 <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="603px" 
            HeaderStyle-Font-Size="Medium" HeaderStyle-BackColor="#2E3C59" 
            HeaderStyle-ForeColor="White" Font-Names="Times New Roman" Font-Size="Medium" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:ButtonField Text="Accept" CommandName="Select" ItemStyle-Width="80px" />
        
      <%--  <asp:BoundField ItemStyle-Width="150px" DataField="age" HeaderText="City" />--%>
        <asp:BoundField ItemStyle-Width="100px" DataField="sid" HeaderText="User ID" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <asp:BoundField ItemStyle-Width="100px" DataField="fid" HeaderText="File ID" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField ItemStyle-Width="100px" DataField="fname" HeaderText="File Name" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         <%--<asp:BoundField ItemStyle-Width="100px" DataField="date1" HeaderText="Date" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>--%>
         <asp:BoundField ItemStyle-Width="100px" DataField="des" HeaderText="Descriptions" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField ItemStyle-Width="100px" DataField="key1" HeaderText="Public key" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         
         </Columns>

<HeaderStyle BackColor="#009999" Font-Size="Medium" ForeColor="White"></HeaderStyle>
</asp:GridView>
                 </td>
             </tr>
             <tr>
                 <td></td>
                 <td class="auto-style2"></td>
                 <td></td>
             </tr>
         </table>
        </div>
</asp:Content>

