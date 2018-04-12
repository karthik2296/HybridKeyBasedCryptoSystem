<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default21.aspx.cs" Inherits="Default21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
         table
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            margin-left: 6px;
        }
        .auto-style2
        {
             height: 26px;
         }
        .auto-style3
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 192px;
            height: 26px;
        }
        .auto-style5
        {
        width: 129px;
    }
        .auto-style6
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 129px;
            height: 26px;
        }
        .auto-style7
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            height: 26px;
        }
         .auto-style8 {
             width: 129px;
             height: 26px;
         }
         .auto-style9 {
             height: 26px;
             width: 192px;
         }
         .auto-style10 {
             width: 192px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:300px; margin-top:30px;margin-left:30px;">
         <table>
             <tr>
                 <td class="auto-style6">
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="auto-style7"></td>
                 <td class="auto-style3"></td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     &nbsp;</td>
                 <td class="auto-style2"></td>
                 <td class="auto-style10">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="633px" 
            HeaderStyle-Font-Size="Medium" HeaderStyle-BackColor="#2E3C59" 
            HeaderStyle-ForeColor="White" Font-Names="Times New Roman" Font-Size="Medium">
    <Columns>
        <asp:ButtonField Text="Revoke SDI" CommandName="Select" ItemStyle-Width="120px" />
        
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
       <%-- <asp:BoundField ItemStyle-Width="100px" DataField="PhoneNo" HeaderText="Phone" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>--%>
         <asp:BoundField ItemStyle-Width="100px" DataField="Location" HeaderText="Location" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField ItemStyle-Width="100px" DataField="SDI1" HeaderText="SDI" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
         
         </Columns>

<HeaderStyle BackColor="#009999" Font-Size="Medium" ForeColor="White"></HeaderStyle>
</asp:GridView>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8"></td>
                 <td class="auto-style2"></td>
                 <td class="auto-style9">
                     <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>
             </tr>
         </table>
        </div>
</asp:Content>

