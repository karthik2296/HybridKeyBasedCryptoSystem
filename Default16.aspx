<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default16.aspx.cs" Inherits="Default16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        table
        {
            border:hidden;
        }
         .auto-style2
         {
             width: 30px;
             border:hidden;
         }
        .auto-style3
        {
            width: 206px;
        }
        .auto-style4
        {
            width: 206px;
            height: 32px;
        }
        .auto-style5
        {
            border-style: hidden;
            border-color: inherit;
            border-width: medium;
            width: 30px;
            height: 32px;
        }
        .auto-style6
        {
            height: 32px;
            width: 510px;
        }
        .auto-style7
        {
            width: 510px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:500px; margin-top:30px;margin-left:30px;">
         <table>
             <tr>
                 <td class="auto-style3">
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                 </td>
                 <td class="auto-style2"></td>
                 <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000;" class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;owner Id&nbsp;
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="163px" DataSourceID="SqlDataSource3" DataTextField="UserId" DataValueField="UserId" Font-Names="Times New Roman" Font-Size="Medium" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                     </asp:DropDownList>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">
                     </td>
                 <td class="auto-style5"></td>
                 <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Image ID="Image1" runat="server" Height="208px" ImageUrl="~/images/Share alt 2.png" Width="196px" />
                 </td>
                 <td class="auto-style2"></td>
                 <td class="auto-style7">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="467px" 
            HeaderStyle-Font-Size="Medium" HeaderStyle-BackColor="#2E3C59" 
            HeaderStyle-ForeColor="White" Font-Names="Times New Roman" Font-Size="Medium">
    <Columns>
       <%-- <asp:ButtonField Text="Accept" CommandName="Select" ItemStyle-Width="80px" />--%>
        
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
         <%--<asp:BoundField ItemStyle-Width="100px" DataField="des" HeaderText="Descriptions" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>--%>
       <%-- <asp:BoundField ItemStyle-Width="100px" DataField="key1" HeaderText="Public key" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>--%>
         
         </Columns>

<HeaderStyle BackColor="#009999" Font-Size="Medium" ForeColor="White"></HeaderStyle>
</asp:GridView>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3"></td>
                 <td class="auto-style2"></td>
                 <td class="auto-style7">
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DataShareConnectionString %>" SelectCommand="SELECT [UserId] FROM [UserData]"></asp:SqlDataSource>
                 </td>
             </tr>
         </table>
        </div>
</asp:Content>

