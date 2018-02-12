<%@ Control Language="C#" AutoEventWireup="true" CodeFile="guest_main.ascx.cs" Inherits="guest_Default" %>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
<table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
    height: 59px">
    <tr>
        <td style="width: 274px; height: 59px; background-image: url(../image/system/top_logo.gif);">
        </td>
        <td style="width: 167px; height: 59px; background-image: url(../image/system/top_2.gif);">
        </td>
        <td style="width: 562px; height: 59px; background-image: url(../image/system/top_bg.gif);">
        </td>
    </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
    height: 25px; font-size: 12px; background-image: url(image/system/user_bg.jpg);">
    <tr>
        <td style="width:25; text-align: left; height: 25px;">
            <asp:Image ID="Image1" runat="server" Height="25px" Width="25px" ImageUrl="~/image/system/用户.jpg" /></td>
        <td style="text-align: left; height: 25px;width: 978px; background-image: url(../image/system/user_bg.jpg);">
            游客，你好！欢迎使用哈尔滨师范大学教务管理系统！</td>
     </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" style="width: 1003px;
    height: 26px">
    <tr>
        <td colspan="3" rowspan="3" style="background-image: url(../image/system/menu_bg1.jpg)">
            <asp:Menu ID="Menu1" runat="server" Font-Size="12px" MaximumDynamicDisplayLevels="8"
                Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" Font-Bold="False">
                <StaticMenuItemStyle HorizontalPadding="8px" />
                <Items>
                    <asp:MenuItem Text="网上选课" Value="网上选课">
                    </asp:MenuItem>
                    <asp:MenuItem Text="网上报名" Value="网上报名">
                    </asp:MenuItem>
                    <asp:MenuItem Text="教学质量评估" Value="教学质量评估">
                    </asp:MenuItem>
                    <asp:MenuItem Text="信息维护" Value="信息维护">
                    </asp:MenuItem>
                    <asp:MenuItem Text="信息查询" Value="信息查询">
                    </asp:MenuItem>
                    <asp:MenuItem Text="其他" Value="其他"></asp:MenuItem>
                    <asp:MenuItem Text="实习实践信息维护" Value="毕业生实习信息查询">
                    </asp:MenuItem>
                    <asp:MenuItem Text="系统维护" Value="系统维护">
                        <asp:MenuItem Text="退出系统" Value="退出系统"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <DynamicHoverStyle BackColor="#C0DEF2" />
                <DynamicMenuStyle BackColor="#E4E8F1" Height="4px" />
                <DynamicMenuItemStyle VerticalPadding="4px" HorizontalPadding="16px" />
            </asp:Menu>
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
</table>
