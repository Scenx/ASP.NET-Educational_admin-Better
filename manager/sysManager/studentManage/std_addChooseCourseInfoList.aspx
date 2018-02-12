<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addChooseCourseInfoList.aspx.cs" Inherits="manager_sysManager_studentManage_std_addChooseCourseInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc5" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc6" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>学生管理→编辑学生选课信息</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
   <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px; height: 334px; background-color: #dee9f9;">
            <tr style="height:59px">
                <td colspan="3" style="height: 59px;">
                    <uc6:std_listMain ID="Std_listMain1" runat="server" />
                    </td>
            </tr>
            <tr style="height:25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif); height: 25px;">
                    &nbsp;&nbsp; 学生管理→编辑学生选课信息 &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="height:200px; vertical-align: top;text-align: center; background-color: #dee9f9;">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 175px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程编号：<asp:TextBox ID="courseCode" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="courseCode"
                                    ErrorMessage="选课编号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp; 课程名称：<asp:TextBox ID="courseName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="courseName"
                                    ErrorMessage="课程名称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp; 教材名称：<asp:TextBox ID="teachingMatrialName" runat="server" Width="103px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>（可无）</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3">
                                &nbsp; 上课时间：<asp:DropDownList ID="courseTime" runat="server" Width="643px" Enabled="False">
                                    <asp:ListItem>周一第8,9节{第2-16周};周一第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周二第8,9节{第2-16周};周二第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周三第8,9节{第2-16周};周三第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周四第8,9节{第2-16周};周四第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周五第8,9节{第2-16周};周五第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周一第5,6节{第2-16周};周一第7节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周二第5,6节{第2-16周};周二第7节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周三第5,6节{第2-16周};周三第7节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周四第5,6节{第2-16周};周四第7节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周五第5,6节{第2-16周};周五第7节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周一第1,2节{第2-16周};周一第3节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周二第1,2节{第2-16周};周二第3节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周三第1,2节{第2-16周};周三第3节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周四第1,2节{第2-16周};周四第3节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周五第1,2节{第2-16周};周五第3节{第2-16周}</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 教师姓名：<asp:TextBox ID="teacherName" runat="server" Width="89px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="teacherName"
                                    ErrorMessage="教师姓名不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 教师编号：<asp:TextBox ID="teacherCode" runat="server" Width="105px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="teacherCode"
                                    ErrorMessage="教师编号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 上课地点：<asp:TextBox ID="coursePlace" runat="server" Width="105px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="coursePlace"
                                    ErrorMessage="上课地点不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程学分：
                                <asp:DropDownList ID="creditHour" runat="server" Width="54px" Enabled="False">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="creditHour"
                                    ErrorMessage="课程学分不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 一周学时：<asp:DropDownList ID="weekPeriod" runat="server" Width="54px" Enabled="False">
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 选课容量：<asp:TextBox ID="capacity" runat="server" Width="76px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="capacity"
                                    ErrorMessage="选课容量为空！">*</asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator2"
                                        runat="server" ControlToValidate="capacity" ErrorMessage="上课容量请输入整数数据！" Operator="DataTypeCheck"
                                        Type="Integer">*</asp:CompareValidator><asp:RangeValidator ID="RangeValidator2" runat="server"
                                            ControlToValidate="capacity" ErrorMessage="您填写的选课容量值只能在0到1000之间！" MaximumValue="1000"
                                            MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程备注：<asp:TextBox ID="remark" runat="server" Width="88px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>（可无）</td>
                            <td style="width: 245px">
                                &nbsp; 课程性质：<asp:DropDownList ID="courseProperty" runat="server" Width="113px" Enabled="False">
                                    <asp:ListItem>校公共选修课</asp:ListItem>
                                    <asp:ListItem>校公共必修课</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 上课校区：<asp:DropDownList ID="schoolArea" runat="server" Width="87px" Enabled="False">
                                    <asp:ListItem>南校区</asp:ListItem>
                                    <asp:ListItem>北校区</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 上课学年：<asp:DropDownList ID="courseStudyYear" runat="server" 
                                     Width="78px" Enabled="False">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 245px">
                                &nbsp; 上课学期：<asp:DropDownList ID="courseSemester" runat="server" Width="70px" Enabled="False">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 开课学院：<asp:DropDownList ID="courseCollege" runat="server" Width="98px" Enabled="False">
                                    <asp:ListItem>公共基础部</asp:ListItem>
                                    <asp:ListItem>体育教学部</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="edit" runat="server" class="btn3_mouseout" EnableViewState="False"
                                    OnClick="edit_Click" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="编  辑" />
                                &nbsp; &nbsp; &nbsp;<asp:Button ID="submit" runat="server" class="btn3_mouseout" OnClick="submit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" Enabled="False" />
                                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                <input id="Button1" runat="server" class="btn3_mouseout" dir="ltr" enableviewstate="true"
                                    name="guanbi" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    type="button" value="关  闭" visible="true" /></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
            </tr>
            <tr style="height:50px">
                <td colspan="3" style=" height: 50px;">
                    &nbsp;<uc5:std_listFoot ID="Std_listFoot1" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

