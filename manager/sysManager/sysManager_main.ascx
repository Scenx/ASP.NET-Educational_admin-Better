<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sysManager_main.ascx.cs" Inherits="manager_sysManager_sys_manager_main" %>
<link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
<table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
    height: 59px">
    <tr style="height: 59px">
        <td rowspan="2" style="width: 274px; background-image: url(../../image/system/top_logo.jpg);">
        </td>
        <td rowspan="2" style="width: 250px; background-image: url(../../image/system/toptop_Logo.jpg);">
        </td>
        <td rowspan="2" style="width: 479px; background-image: url(../../image/system/top_bg.gif);">
        </td>
    </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
    height: 25px">
    <tr>
        <td rowspan="3" style="width: 25px; background-image: url(../../image/system/用户.jpg);">
        </td>
        <td colspan="2" rowspan="3" style="width: 900px; background-image: url(../../image/system/user_bg.jpg);">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>管理员，你好！欢迎使用华北水利水电大学教务管理系统后台管理！
            </td>
        <td rowspan="2" style="width: 80px;background-image: url(../../image/system/user_bg.jpg);" >
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="10pt" ForeColor="Red"
                PostBackUrl="~/TS_login.aspx" OnClick="LinkButton1_Click">用户注销</asp:LinkButton>
        </td>
    </tr>
</table>
