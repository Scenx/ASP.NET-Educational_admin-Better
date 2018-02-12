<%@ Control Language="C#" AutoEventWireup="true" CodeFile="teacher_main.ascx.cs" Inherits="teacher_main" %>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
<table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
    height: 59px">
    <tr>
        <td style="width: 274px; height: 59px; background-image: url(../image/system/top_logo.jpg);">
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
            <asp:Label ID="teacher_username" runat="server" Text="Label"></asp:Label>
            &nbsp;
            <asp:Label ID="teacher_name" runat="server" Text="Label"></asp:Label>老师，你好！欢迎使用华北水利水电大学教务管理系统！</td>
     </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" style="width: 1003px;
    height: 26px">
    <tr>
        <td colspan="3" style="background-image: url(../image/system/menu_bg1.jpg)">
            <asp:Menu ID="Menu1" runat="server" Font-Size="12px" MaximumDynamicDisplayLevels="8"
                Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" Font-Bold="False" Height="297px">
                <StaticMenuItemStyle HorizontalPadding="8px" />
                <Items>
                    <asp:MenuItem Text="上传成绩" Value="网上选课">
                        <asp:MenuItem Text="老师上传成绩" Value="校内公共选修课选课" NavigateUrl="~/teacher/teacher_transmitMark.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="上传补考成绩" Value="上传补考成绩" NavigateUrl="~/teacher/teacher_transmitMakeupMark.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="查看正修课学生" Value="查看正修课学生"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/teacher/teacher_transmitElectCourseMark.aspx" Text="上传选修课成绩"
                            Value="上传选修课成绩"></asp:MenuItem>
                        <asp:MenuItem Text="上传非选修课成绩" Value="上传专业课成绩" NavigateUrl="~/teacher/teacher_transmitProCourseMark.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="教学质量评估" Value="教学质量评估">
                        <asp:MenuItem Text="查看教学质量评估结果" Value="年终老师教学质量评估" NavigateUrl="~/teacher/teacher_evalutionResult.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="信息维护" Value="信息维护">
                        <asp:MenuItem Text="修改密码" Value="修改密码" NavigateUrl="~/teacher/teacher_pwdChange.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="密码保护" Value="设置密码保护" NavigateUrl="~/teacher/teacher_pwdProtect.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="信息查询" Value="信息查询">
                        <asp:MenuItem Text="教工基本信息查询" Value="基本信息查询" NavigateUrl="~/teacher/teacher_basicInfo.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="教工在职信息查询" Value="学籍信息查询" NavigateUrl="~/teacher/teacher_incumbencyInfo.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="教工个人课表查询" Value="个人课表查询" NavigateUrl="~/teacher/teacher_courseTable.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="其他" Value="其他"></asp:MenuItem>
                    <asp:MenuItem Text="实习实践信息维护" Value="毕业生实习信息查询">
                        <asp:MenuItem Text="添加2004级教育实习信息" Value="毕业实习成绩查询" NavigateUrl="~/teacher/teacher_transmitGradMark.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="系统维护" Value="系统维护">
                        <asp:MenuItem Text="退出系统" Value="退出系统" NavigateUrl="~/TS_login.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <DynamicHoverStyle BackColor="#C0DEF2" />
                <DynamicMenuStyle BackColor="#E4E8F1" Height="4px" />
                <DynamicMenuItemStyle VerticalPadding="4px" HorizontalPadding="16px" />
            </asp:Menu>
        </td>
    </tr>
    </table>
