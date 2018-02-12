<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addChooseCourseInfo.aspx.cs" Inherits="manager_sysManager_studentManage_std_addChooseCourseInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>添加学生课表</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height:25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif); height: 25px;">
                    &nbsp;&nbsp; 学生管理→添加学生选课信息</td>
            </tr>
            <tr>
                <td colspan="3" rowspan="2" style="height:465px; vertical-align: top; background-color: #dee9f9; text-align: left;">
                    <table style="width: 735px; height: 175px; text-align: left;" border="1" cellpadding="0" bordercolordark="#003399" bordercolorlight="#6a82dd" cellspacing="0" class="css">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程编号：<asp:TextBox ID="courseCode" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="courseCode"
                                    ErrorMessage="选课编号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 课程名称：<asp:TextBox ID="courseName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="courseName"
                                    ErrorMessage="课程名称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 教材名称：<asp:TextBox ID="teachingMatrialName" runat="server" Width="103px"></asp:TextBox>（可无）</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3">
                                &nbsp; 上课时间：<asp:DropDownList ID="courseTime" runat="server" Width="643px">
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
                                &nbsp; 教师姓名：<asp:TextBox ID="teacherName" runat="server" Width="89px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="teacherName"
                                    ErrorMessage="教师姓名不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 教师编号：<asp:TextBox ID="teacherCode" runat="server" Width="105px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="teacherCode"
                                    ErrorMessage="教师编号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 上课地点：<asp:TextBox ID="coursePlace" runat="server" Width="105px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="coursePlace"
                                    ErrorMessage="上课地点不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程学分：
                                <asp:DropDownList ID="creditHour" runat="server" Width="54px">
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
                                &nbsp; 一周学时：<asp:DropDownList ID="weekPeriod" runat="server" Width="54px">
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 选课容量：<asp:TextBox ID="capacity" runat="server" Width="76px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="capacity"
                                    ErrorMessage="选课容量为空！">*</asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator2"
                                        runat="server" ControlToValidate="capacity" ErrorMessage="上课容量请输入整数数据！" Operator="DataTypeCheck"
                                        Type="Integer">*</asp:CompareValidator><asp:RangeValidator ID="RangeValidator2" runat="server"
                                            ControlToValidate="capacity" ErrorMessage="您填写的选课容量值太大！" MaximumValue="1000"
                                            MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程备注：<asp:TextBox ID="remark" runat="server" Width="88px"></asp:TextBox>（可无）</td>
                            <td style="width: 245px">
                                &nbsp; 课程性质：<asp:DropDownList ID="courseProperty" runat="server" Width="113px">
                                    <asp:ListItem>校公共选修课</asp:ListItem>
                                    <asp:ListItem>校公共必修课</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 上课校区：<asp:DropDownList ID="schoolArea" runat="server" Width="87px">
                                    <asp:ListItem>南校区</asp:ListItem>
                                    <asp:ListItem>北校区</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 上课学年：<asp:DropDownList ID="courseStudyYear" runat="server" Width="78px" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 245px">
                                &nbsp; 上课学期：<asp:DropDownList ID="courseSemester" runat="server" Width="70px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 开课学院：<asp:DropDownList ID="courseCollege" runat="server" Width="98px">
                                    <asp:ListItem>公共基础部</asp:ListItem>
                                    <asp:ListItem>体育教学部</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="text-align: center;" colspan="3">
                                <asp:Button ID="submit" runat="server" Text="提  交" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" OnClick="submit_Click"/>
                                &nbsp; &nbsp;&nbsp;
                                <input id="Reset1" type="reset" value="重  置" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"/></td>
                        </tr>
                    </table>
                    <asp:Label ID="submitResult" runat="server" Font-Bold="False" Font-Size="11pt" ForeColor="Red"
                        Text="Label" Visible="False"></asp:Label><asp:ValidationSummary ID="ValidationSummary1"
                            runat="server" ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

