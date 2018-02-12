<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea_findTransmitMarkInfo.aspx.cs" Inherits="manager_sysManager_teacherManage_tea_findTransmitMarkInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 740px; height: 490px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 教师管理→教师上传成绩管理→查找教师上传成绩</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center; height: 453px;">
                    <table id="TABLE1" border="0" cellpadding="0" cellspacing="0" class="css" onclick="return TABLE1_onclick()"
                        style="width: 740px; height: 125px; background-color: #e4ecf3; text-align: left">
                        <tr>
                            <td style="width: 334px; height: 25px">
                                &nbsp;<asp:CheckBox ID="teacherCode1" runat="server" Text="教师编号：" Checked="True" Enabled="False" />
                                &nbsp;
                                <asp:TextBox ID="teacherCode" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 334px; height: 25px">
                                <asp:CheckBox ID="studyNumber1" runat="server" Text="  学生学号：" /><asp:TextBox ID="studyNumber" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 334px; height: 25px">
                                <asp:CheckBox ID="teacherName1" runat="server" Text="教师姓名：" />
                                <asp:TextBox ID="teacherName" runat="server" Width="120px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 334px">
                                &nbsp;<asp:CheckBox ID="courseName1" runat="server" Text="   课程名：" />
                                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="courseName" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 334px">
                                <asp:CheckBox ID="courseCode1" runat="server" Text="   课程编号：" /><asp:TextBox ID="courseCode" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 334px">
                                <asp:CheckBox ID="courseProperty1" runat="server" Text="课程性质：" Checked="True" Enabled="False" />&nbsp;
                                <asp:DropDownList ID="courseProperty" runat="server" Width="112px">
                                    <asp:ListItem>系内专业课</asp:ListItem>
                                    <asp:ListItem>系内选修课</asp:ListItem>
                                    <asp:ListItem>系内实验课</asp:ListItem>
                                    <asp:ListItem>校公共选修课</asp:ListItem>
                                    <asp:ListItem>校公共必修课</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 334px">
                                &nbsp;<asp:CheckBox ID="studyYear1" runat="server" Text=" 学年：" Checked="True" Enabled="False" />
                                &nbsp; &nbsp; &nbsp;&nbsp; <asp:DropDownList ID="studyYear"
                                    runat="server" Width="85px" >
                                </asp:DropDownList>
                                &nbsp;&nbsp;</td>
                            <td style="width: 334px">
                                <asp:CheckBox ID="semester1" runat="server" Text="  学期：" />
                                &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="Semester" runat="server" Width="52px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 334px">
                                <asp:CheckBox ID="studentName1" runat="server" Text="  学生姓名：" />
                                <asp:TextBox ID="studentName" runat="server" Width="120px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 334px; height: 25px">
                                <asp:CheckBox ID="college1" runat="server" Text="  学院：" Checked="True" Enabled="False" /><asp:DropDownList ID="college" runat="server" Width="179px"  OnSelectedIndexChanged="college_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 334px; height: 25px">
                            <asp:CheckBox ID="speciality1" runat="server" Text="  专业：" Width="60px" />
                                &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="speciality" runat="server" Width="137px">
                                </asp:DropDownList></td>
                            <td style="width: 334px; height: 25px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="vertical-align: middle; height: 25px; text-align: left">
                                &nbsp; 学生成绩：<asp:CheckBox ID="ninety" runat="server" Text="90分以上" />
                                &nbsp; &nbsp;
                                <asp:CheckBox ID="eighty" runat="server" Text="80分以上" />
                                &nbsp; &nbsp;
                                <asp:CheckBox ID="seventy" runat="server" Text="70分以上" />
                                &nbsp;&nbsp; &nbsp;<asp:CheckBox ID="sixty" runat="server" Text="60分以上" />
                                &nbsp;&nbsp; &nbsp;&nbsp;<asp:CheckBox ID="unpass" runat="server" Text="不及格" /></td>
                            <td style="width: 334px; height: 26px">
                                &nbsp; &nbsp; &nbsp; &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 25px; text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" />
                                &nbsp; &nbsp; &nbsp;&nbsp;
                                <asp:Button ID="reset" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="重  置" /></td>
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
