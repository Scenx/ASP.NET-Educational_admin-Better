<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sys_examineOtherRolePopedom.aspx.cs" Inherits="manager_sysManager_systemManage_sys_examineOtherRolePopedom" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif); width: 740px;">
                    &nbsp; 系统管理→权限管理→查看其他角色权限</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center; width: 740px;">
                    <table style="width: 735px; height: 114px; text-align: left;" border="1" cellpadding="0" cellspacing="0" bordercolordark="#003399" bordercolorlight="#6a82dd" class="css">
                        <tr style="height: 25px">
                            <td style="width: 160px" rowspan="3">
                                &nbsp; 学生权限：</td>
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="校内公共选修课选课" />&nbsp;
                                <asp:CheckBox ID="CheckBox2" runat="server" Checked="True" Text="校内公共必修课选课" />&nbsp;
                                <asp:CheckBox ID="CheckBox3" runat="server" Checked="True" Text="四六级考试报名" />&nbsp;
                                <asp:CheckBox ID="CheckBox4" runat="server" Checked="True" Text="其他等级考试报名" />&nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox5" runat="server" Checked="True" Text="年终教师教学质量评估" />&nbsp;
                                <asp:CheckBox ID="CheckBox6" runat="server" Checked="True" Text="修改密码" />&nbsp;
                                <asp:CheckBox ID="CheckBox7" runat="server" Checked="True" Text="密码保护" />&nbsp;
                                <asp:CheckBox ID="CheckBox8" runat="server" Checked="True" Text="基本信息查询" />&nbsp;
                                <asp:CheckBox ID="CheckBox9" runat="server" Checked="True" Text="学籍信息查询" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox10" runat="server" Checked="True" Text="个人课表查询" />
                                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox11" runat="server" Checked="True" Text="等级考试查询" />
                                <asp:CheckBox ID="CheckBox12" runat="server" Checked="True" Text="考试成绩查询" />
                                <asp:CheckBox ID="CheckBox13" runat="server" Checked="True" Text="实习信息查询" />
                                <asp:CheckBox ID="CheckBox14" runat="server" Checked="True" Text="退出系统" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 160px; background-color: #e4ecf3;" rowspan="3">
                                &nbsp; 教师权限：</td>
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox15" runat="server" Checked="True" Text="上传成绩" />&nbsp;
                                <asp:CheckBox ID="CheckBox16" runat="server" Checked="True" Text="上传补考成绩" />&nbsp;
                                <asp:CheckBox ID="CheckBox17" runat="server" Checked="True" Text="上传重修成绩" />&nbsp;
                                <asp:CheckBox ID="CheckBox18" runat="server" Checked="True" Text="查看上传成绩" />&nbsp;
                                <asp:CheckBox ID="CheckBox19" runat="server" Checked="True" Text="查看教学评估结果" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox20" runat="server" Checked="True" Text="修改密码" />&nbsp;
                                <asp:CheckBox ID="CheckBox21" runat="server" Checked="True" Text="密码保护" />&nbsp;
                                <asp:CheckBox ID="CheckBox22" runat="server" Checked="True" Text="教工基本信息查询" />&nbsp;
                                <asp:CheckBox ID="CheckBox23" runat="server" Checked="True" Text="教工在职信息查询" />&nbsp;
                                <asp:CheckBox ID="CheckBox24" runat="server" Checked="True" Text="教工个人课表" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox25" runat="server" Checked="True" Text="添加教育实习成绩信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox26" runat="server" Checked="True" Text="退出系统" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 160px" rowspan="2">
                                &nbsp; 学院管理员权限：</td>
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox27" runat="server" Checked="True" Text="发布本学院新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox28" runat="server" Checked="True" Text="查找本学院新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox29" runat="server" Checked="True" Text="删除本学院新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox41" runat="server" Checked="True" Text="编辑学院新闻消息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox30" runat="server" Checked="True" Text="管理员基本信息" />
                                <asp:CheckBox ID="CheckBox31" runat="server" Checked="True" Text="修改密码" />&nbsp;
                                <asp:CheckBox ID="CheckBox32" runat="server" Checked="True" Text="密码保护" />&nbsp;
                                <asp:CheckBox ID="CheckBox33" runat="server" Checked="True" Text="退出系统" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 160px; background-color: #e4ecf3;" rowspan="2">
                                &nbsp; 部门管理员权限：</td>
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox34" runat="server" Checked="True" Text="发布本部门新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox35" runat="server" Checked="True" Text="查找本部门新闻信息" />
                                &nbsp;<asp:CheckBox ID="CheckBox36" runat="server" Checked="True" Text="删除本部门新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox42" runat="server" Checked="True" Text="管理员基本信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox37" runat="server" Checked="True" Text="管理员基本信息" />
                                <asp:CheckBox ID="CheckBox38" runat="server" Checked="True" Text="修改密码" />&nbsp;
                                <asp:CheckBox ID="CheckBox39" runat="server" Checked="True" Text="密码保护" />&nbsp;
                                <asp:CheckBox ID="CheckBox40" runat="server" Checked="True" Text="退出系统" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 160px" rowspan="10">
                                &nbsp; 一级管理员权限：（一级管理员主要负责添加和删除信息！）</td>
                            <td colspan="2" style="width: 575px">
                                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox43" runat="server" Checked="True" Text="变换学生主自菜单的顺序" />&nbsp;
                                <asp:CheckBox ID="CheckBox44" runat="server" Checked="True" Text="变换老师主自菜单的顺序" />&nbsp;
                                <asp:CheckBox ID="CheckBox45" runat="server" Checked="True" Text="启用 / 关闭学生主子菜单" />&nbsp;
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox46" runat="server" Checked="True" Text="启用 / 关闭老师主子菜单" />&nbsp;
                                <asp:CheckBox ID="CheckBox47" runat="server" Checked="True" Text="临时删除学生子菜单" />&nbsp;
                                <asp:CheckBox ID="CheckBox48" runat="server" Checked="True" Text="启用 / 关闭老师子菜单" />&nbsp;
                                <asp:CheckBox ID="CheckBox111" runat="server" Checked="True" Text="修改密码" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox49" runat="server" Checked="True" Text="查看一级管理员权限" />&nbsp;
                                <asp:CheckBox ID="CheckBox50" runat="server" Checked="True" Text="查看二级管理员权限" />&nbsp;
                                <asp:CheckBox ID="CheckBox51" runat="server" Checked="True" Text="查看部门 / 院系管理员权限" />&nbsp;
                                <asp:CheckBox ID="CheckBox112" runat="server" Checked="True" Text="密码保护" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox52" runat="server" Checked="True" Text="添加 / 删除 /查找 / 编辑学生基本信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox53" runat="server" Checked="True" Text="添加 / 删除 / 查找 /编辑学生用户信息" />&nbsp;
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox54" runat="server" Checked="True" Text="添加 / 查找学生课表" />&nbsp;&nbsp;<asp:CheckBox
                                    ID="CheckBox55" runat="server" Checked="True" Text="添加 / 删除学生选课" />&nbsp;
                                <asp:CheckBox ID="CheckBox56" runat="server" Checked="True" Text="添加 / 删除处分信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox114" runat="server" Checked="True" Text="管理员基本信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox57" runat="server" Checked="True" Text="添加 / 删除奖学金获得者信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox58" runat="server" Checked="True" Text="添加 / 删除贫困生信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox59" runat="server" Checked="True" Text="添加 / 删除教师评估投票" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox60" runat="server" Checked="True" Text="添加 / 删除等级考试成绩" />&nbsp;
                                <asp:CheckBox ID="CheckBox61" runat="server" Checked="True" Text="添加 / 删除等级考试报名" />&nbsp;
                                <asp:CheckBox ID="CheckBox62" runat="server" Checked="True" Text="添加 / 删除毕业实习信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox63" runat="server" Checked="True" Text="添加 / 删除教师基本信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox64" runat="server" Checked="True" Text="添加 / 删除教师获奖信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox65" runat="server" Checked="True" Text="添加 / 删除教师处分信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox66" runat="server" Checked="True" Text="添加 / 删除教师处分信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox67" runat="server" Checked="True" Text="添加 / 教师上传成绩" />&nbsp;
                                <asp:CheckBox ID="CheckBox68" runat="server" Checked="True" Text="添加 / 删除教师用户信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px">
                                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox69" runat="server" Checked="True" Text="添加 / 删除院系新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox70" runat="server" Checked="True" Text="添加 / 删除部门新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox95" runat="server" Checked="True" Text="添加 / 删除等级报名信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox113" runat="server" Checked="True" Text="退出系统" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 160px; background-color: #e4ecf3;" rowspan="8">
                                &nbsp; 二级管理员权限：（二级管理员主要负责查找和编辑信息！）</td>
                            <td colspan="2" style="width: 575px; height: 25px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox71" runat="server" Checked="True" Text="查看一级管理员权限" />&nbsp;
                                <asp:CheckBox ID="CheckBox72" runat="server" Checked="True" Text="查看二级管理员权限" />&nbsp;
                                <asp:CheckBox ID="CheckBox73" runat="server" Checked="True" Text="查看部门 / 院系管理员权限" />&nbsp;
                                <asp:CheckBox ID="CheckBox115" runat="server" Checked="True" Text="管理员基本信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox74" runat="server" Checked="True" Text="添加 / 删除 /查找 / 编辑学生基本信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox75" runat="server" Checked="True" Text="添加 / 删除 / 查找 /编辑学生用户信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox116" runat="server" Checked="True" Text="密码保护" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox76" runat="server" Checked="True" Text="添加 / 查找学生课表" />
                                &nbsp;<asp:CheckBox ID="CheckBox77" runat="server" Checked="True" Text="添加 / 删除学生选课" />&nbsp;
                                <asp:CheckBox ID="CheckBox78" runat="server" Checked="True" Text="添加 / 删除处分信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox117" runat="server" Checked="True" Text="修改密码" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; height: 10px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox79" runat="server" Checked="True" Text="添加 / 删除奖学金获得者信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox80" runat="server" Checked="True" Text="添加 / 删除贫困生信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox81" runat="server" Checked="True" Text="添加 / 删除教师评估投票" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox82" runat="server" Checked="True" Text="添加 / 删除等级考试成绩" />&nbsp;
                                <asp:CheckBox ID="CheckBox83" runat="server" Checked="True" Text="添加 / 删除等级考试报名" />&nbsp;
                                <asp:CheckBox ID="CheckBox84" runat="server" Checked="True" Text="添加 / 删除毕业实习信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox85" runat="server" Checked="True" Text="添加 / 删除教师基本信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox86" runat="server" Checked="True" Text="添加 / 删除教师获奖信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox87" runat="server" Checked="True" Text="添加 / 删除教师处分信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox88" runat="server" Checked="True" Text="添加 / 删除教师处分信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox89" runat="server" Checked="True" Text="添加 / 教师上传成绩" />&nbsp;
                                <asp:CheckBox ID="CheckBox90" runat="server" Checked="True" Text="添加 / 删除教师用户信息" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="width: 575px; background-color: #e4ecf3;">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox91" runat="server" Checked="True" Text="添加 / 删除院系新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox92" runat="server" Checked="True" Text="添加 / 删除部门新闻信息" />&nbsp;
                                <asp:CheckBox ID="CheckBox96" runat="server" Checked="True" Text="添加 / 删除等级报名信息" />
                                <asp:CheckBox ID="CheckBox118" runat="server" Checked="True" Text="退出系统" /></td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
