﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_transmitElectCourseList.aspx.cs" Inherits="teacher_teacher_transmitElectCourseList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 300px;
            height: 425px">
            <tr style="height: 59px">
                <td colspan="2" style="width: 274px; background-image: url(../image/system/top_logo.gif);">
                </td>
                <td style="width: 30px; background-image: url(../image/system/top_bg.gif);">
                </td>
            </tr>
            <tr style="height: 313px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 300px; height: 300px; text-align: left;">
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 学号：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="studyNumber" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 姓名：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="studentName" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 课程代码：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="courseCode" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 课程名称：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="courseName" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 课程性质：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="courseProperty" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 专业：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="speciality" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 平时成绩：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:TextBox ID="peacetimeMark" runat="server" Width="80px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="平时成绩不能为空！" ControlToValidate="peacetimeMark">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="peacetimeMark"
                                    ErrorMessage="平时成绩只能在0到30分之间！" MaximumValue="30" MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 卷面成绩：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:TextBox ID="paperMark" runat="server" Width="80px"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="paperMark"
                                    ErrorMessage="卷面成绩必须在0到100分之间！" MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px; height: 25px;">
                                &nbsp; 总成绩：</td>
                            <td colspan="2" style="width: 224px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="mark" runat="server" Width="80px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mark"
                                    ErrorMessage="总成绩不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="mark"
                                    ErrorMessage="总成绩只能在0到100分之间！" MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 教学班：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="teachedClass" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 行政班：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="adminClass" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 学院：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="college" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 80px">
                                &nbsp; 年级：</td>
                            <td colspan="2" style="width: 224px">
                                &nbsp;
                                <asp:Label ID="grade" runat="server" Text="grade"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center; height: 23px;">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" />
                                &nbsp; &nbsp;
                                <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" />
                                &nbsp;&nbsp; &nbsp;&nbsp;<input id="Button1" runat="server" class="btn3_mouseout"
                                    dir="ltr" enableviewstate="true" name="guanbi" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="button" value="关  闭" visible="true" /></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
            </tr>
            <tr style="height: 50px">
                <td style="width: 172px; background-image: url(../image/system/bottom_bg.gif);">
                </td>
                <td style="width: 102px; background-image: url(../image/system/bottom_bg.gif);">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/system/教务处.bmp" /></td>
                <td style="width: 30px; background-image: url(../image/system/bottom_bg.gif);">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>