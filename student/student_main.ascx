<%@ Control Language="C#" AutoEventWireup="true" CodeFile="student_main.ascx.cs" Inherits="student_main" %>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .auto-style1 {
        width: 1003px;
        height: 237px;
    }
</style>
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
        <td style="text-align: left; width: 978px;height: 25px; background-image: url(../image/system/user_bg.jpg);">
            &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>同学，你好！欢迎使用哈尔滨师范大学教务管理系统！</td>
     </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="auto-style1">
    <tr>
        <td colspan="3" style="background-image: url(../image/system/menu_bg1.jpg)">
            <asp:Menu ID="Menu1" runat="server" Font-Size="12px" MaximumDynamicDisplayLevels="8"
                Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" Font-Bold="False">
                <StaticMenuItemStyle HorizontalPadding="8px" />
                <Items>
                    <asp:MenuItem Text="网上选课" Value="网上选课">
                        <asp:MenuItem Text="校内公共选修课选课" Value="校内公共选修课选课" NavigateUrl="~/student/student_electChooseCourse.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="校内公共必修课选课" Value="校内公共必修课选课"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="网上报名" Value="网上报名">
                        <asp:MenuItem Text="四六级考试报名" Value="四六级考试报名" NavigateUrl="~/student/student_foursixgradeTestSignUp.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="其他等级考试报名" Value="其他等级考试报名" NavigateUrl="~/student/student_othergradeTestSignUp.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="教学质量评估" Value="教学质量评估">
                        <asp:MenuItem Text="年终老师教学质量评估" Value="年终老师教学质量评估" NavigateUrl="~/student/student_teacherEvaluation.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="信息维护" Value="信息维护">
                        <asp:MenuItem Text="修改密码" Value="修改密码" NavigateUrl="~/student/student_pwdChange.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="密码保护" Value="设置密码保护" NavigateUrl="~/student/student_pwdProtect.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="信息查询" Value="信息查询">
                        <asp:MenuItem Text="基本信息查询" Value="基本信息查询" NavigateUrl="~/student/student_basicInfo.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="学籍信息查询" Value="学籍信息查询" NavigateUrl="~/student/student_statusInfo.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="个人课表查询" Value="个人课表查询" NavigateUrl="~/student/student_coursesTable.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="等级考试查询" Value="等级考试查询" NavigateUrl="~/student/student_studentGradeTestMark.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="考试成绩查询" Value="考试成绩查询" NavigateUrl="~/student/student_pastyearMark.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="其他" Value="其他"></asp:MenuItem>
                    <asp:MenuItem Text="实习实践信息维护" Value="毕业生实习信息查询">
                        <asp:MenuItem Text="2004级教育实习信息查询" Value="毕业实习成绩查询" NavigateUrl="~/student/student_graduatePractise.aspx"></asp:MenuItem>
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
