<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addStdChooseCourseInfoList.aspx.cs" Inherits="manager_sysManager_studentManage_std_addStdChooseCourseInfoList" %>

<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc1" %>
<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生管理→查看学生选课详细信息</title>
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
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 420px; background-color: #dee9f9;">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc1:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif); text-align: left;">
                    &nbsp;&nbsp; 学生管理→查看学生选课详细信息 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;此页信息不可编辑！！！！！！</td>
            </tr>
            <tr style="height: 286px">
                <td colspan="3" style="vertical-align: top; text-align: left">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 250px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学生学号：<asp:TextBox ID="studyNumber" runat="server" Width="148px" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 身份证号：<asp:TextBox ID="IDcardNumber" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生姓名：<asp:TextBox ID="studentName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学院名称：<asp:TextBox ID="college" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; &nbsp; &nbsp; 行政班：<asp:TextBox ID="adminClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 是否预订教材：<asp:TextBox ID="teachingMatrialName" runat="server" Width="103px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 24px;">
                                &nbsp; 学生专业：<asp:TextBox ID="speciality" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 24px;">
                                &nbsp; &nbsp; &nbsp; 教学班：<asp:TextBox ID="teachedClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 24px;">
                                &nbsp; 报名日期：<asp:TextBox ID="chooseDate" runat="server" BackColor="#DEE9F9" Width="158px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程编号：<asp:TextBox ID="courseCode" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                </td>
                            <td style="width: 245px; color: #000000">
                                &nbsp; 课程名称：<asp:TextBox ID="courseName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                </td>
                            <td style="width: 245px; color: #000000">
                                &nbsp; 上课地点：<asp:TextBox ID="coursePlace" runat="server" Width="160px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                </td>
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
                                </td>
                            <td style="width: 245px">
                                &nbsp; 教师编号：<asp:TextBox ID="teacherCode" runat="server" Width="105px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                </td>
                            <td style="width: 245px">
                                &nbsp; 上课校区：<asp:DropDownList ID="schoolArea" runat="server" Width="87px" Enabled="False">
                                    <asp:ListItem>南校区</asp:ListItem>
                                    <asp:ListItem>北校区</asp:ListItem>
                                </asp:DropDownList></td>
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
                                </td>
                            <td style="width: 245px">
                                &nbsp; 一周学时：<asp:DropDownList ID="weekPeriod" runat="server" Width="54px" Enabled="False">
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp;&nbsp; 开课学院：<asp:DropDownList ID="courseCollege" runat="server" Width="98px" Enabled="False">
                                    <asp:ListItem>公共基础部</asp:ListItem>
                                    <asp:ListItem>体育教学部</asp:ListItem>
                                </asp:DropDownList></td>
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
                                &nbsp; 上课学期：<asp:DropDownList ID="courseSemester" runat="server" Width="70px" Enabled="False">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 上课学年：<asp:DropDownList ID="courseStudyYear" runat="server"  Width="78px">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 245px">
                                &nbsp; </td>
                            <td style="width: 245px">
                                &nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" OnClick="submit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="此页不可编辑" Width="129px" Enabled="False" />
                                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                <input id="Button1" runat="server" class="btn3_mouseout" dir="ltr" enableviewstate="true"
                                    name="guanbi" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    type="button" value="关  闭" visible="true" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 50px">
                <td colspan="3">
                    <uc2:std_listFoot ID="Std_listFoot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
