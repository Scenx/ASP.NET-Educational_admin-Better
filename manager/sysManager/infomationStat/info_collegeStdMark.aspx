<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info_collegeStdMark.aspx.cs" Inherits="manager_sysManager_infomationStat_info_collegeStdMark" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>信息统计→各学院学生成绩信息统计</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; 信息统计→各学院学生成绩信息统计</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="vertical-align: middle;
                        width: 740px; height: 420px">
                        <tr style="height:40px">
                            <td style="width: 40px; height: 40px;">
                                <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/image/system/serch.gif"
                                    Width="40px" /></td>
                            <td style="width: 120px; height: 40px;">
                                &nbsp;快速搜索：</td>
                            <td style="width :210px; height: 40px;">
                                <asp:RadioButton ID="studyNumber1" runat="server" Checked="True" GroupName="kuai" Text="学号" />
                                <asp:TextBox ID="studyNumber2" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width :210px; height: 40px; text-align: left;">
                                <asp:Button ID="fastSearch" runat="server" Text="搜 索" Width="58px" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" OnClick="fastSearch_Click"/></td>
                            <td style="width :60px; height: 40px;">
                                </td>
                            <td style="width :100px; height: 40px;">
                                <asp:LinkButton ID="hignSearch1" runat="server" Font-Bold="False" Font-Italic="False"
                                    Font-Size="11pt" ForeColor="Blue" Width="93px" OnClick="hignSearch1_Click">【高级搜索】</asp:LinkButton></td>
                        </tr>
                        <tr style="height: 380px">
                            <td colspan="6" rowspan="2" style="vertical-align: top">
                                &nbsp;<asp:Panel ID="Panel1" runat="server" BorderStyle="Inset" Height="360px" Width="735px">
                                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 735px;
                                        height: 100px; text-align: left">
                                        <tr style="height: 40px">
                                            <td colspan="3" style="font-size: 11pt; color: blue; text-align: center">
                                                各学院学生成绩信息统计 高级搜索</td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;&nbsp;
                                                <asp:CheckBox ID="studyNumber3" runat="server" Text="学生学号：" /><asp:TextBox
                                                    ID="studyNumber4" runat="server" Width="120px"></asp:TextBox></td>
                                            <td style="width: 245px">
                                                <asp:CheckBox ID="studentName1" runat="server" Text="学生姓名：" /><asp:TextBox
                                                    ID="studentName" runat="server" Width="108px"></asp:TextBox></td>
                                            <td style="width: 245px">
                                                </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td colspan="2">
                                                &nbsp;&nbsp;
                                                <asp:CheckBox ID="college1" runat="server" Checked="True" Enabled="False" Text="学生学院：" /><asp:DropDownList
                                                    ID="college" runat="server" AutoPostBack="True" 
                                                     OnSelectedIndexChanged="college_SelectedIndexChanged"
                                                    Width="371px"  >
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>&nbsp;&nbsp;
                                            </td>
                                            <td style="width: 245px">
                                                &nbsp;<asp:CheckBox ID="grade1" runat="server" Checked="True" Enabled="False" Text="学生年级：" /><asp:DropDownList
                                                    ID="grade" runat="server"  Width="91px" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;&nbsp;
                                                <asp:CheckBox ID="speciality1" runat="server" Text="学生专业：" /><asp:DropDownList ID="speciality"
                                                    runat="server" Width="152px">
                                                </asp:DropDownList></td>
                                            <td colspan="2">
                                                分数：<asp:RadioButton ID="ninety" runat="server" GroupName="popu" Text="90分以上" /><asp:RadioButton
                                                    ID="eighty" runat="server" GroupName="popu" Text="80~89 分" /><asp:RadioButton ID="seventy"
                                                        runat="server" GroupName="popu" Text="70～79分" />
                                                <asp:RadioButton ID="sixty" runat="server" GroupName="popu" Text="60～69分" /><asp:RadioButton ID="lowerSixty" runat="server" GroupName="popu" Text="60分以下" /><asp:RadioButton ID="hignerMark1" runat="server" AutoPostBack="True" GroupName="popu"
                                                    Text="高于：" /><asp:TextBox ID="higherMark" runat="server" Width="20px"></asp:TextBox>
                                                分<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="higherMark"
                                                    ErrorMessage="分数必须是从0～100之间" MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
                                                </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;&nbsp;
                                                <asp:CheckBox ID="courseName1" runat="server" Text="课程名称：" />
                                                <asp:TextBox ID="courseName" runat="server" Width="120px"></asp:TextBox></td>
                                            <td colspan="2">
                                                排名：<asp:RadioButton ID="totalAverageMark" runat="server" GroupName="pai" Text="总平均分" />
                                                <asp:RadioButton ID="totalAverageMarkUnPass" runat="server" GroupName="pai" Text="总平均分 / 不及格" />
                                                <asp:RadioButton ID="proAverageMark" runat="server" GroupName="pai" Text="专业课平均分" /><asp:RadioButton
                                                    ID="proAverageMarkUnPass" runat="server" GroupName="pai" Text="专业课平均分 / 不及格" /></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px; height: 25px">
                                                &nbsp;&nbsp;
                                                <asp:CheckBox ID="courseCode1" runat="server" Text="课程编号：" /><asp:TextBox ID="courseCode"
                                                    runat="server" Width="120px"></asp:TextBox></td>
                                            <td style="width: 245px; height: 25px">
                                                <asp:CheckBox ID="studyYear1" runat="server" Text="学年：" Checked="True" Enabled="False" /><asp:DropDownList
                                                    ID="studyYear" runat="server" Width="83px" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 245px; height: 25px">
                                                &nbsp;<asp:CheckBox ID="semester1" runat="server" Text="学期：" /><asp:DropDownList ID="semester" runat="server" Width="60px">
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;&nbsp;
                                                <asp:CheckBox ID="courseProperty1" runat="server" Text="课程性质：" />
                                                <asp:DropDownList ID="courseProperty" runat="server" Width="112px">
                                                    <asp:ListItem>系内专业课</asp:ListItem>
                                                    <asp:ListItem>系内选修课</asp:ListItem>
                                                    <asp:ListItem>系内实验课</asp:ListItem>
                                                    <asp:ListItem>校公共选修课</asp:ListItem>
                                                    <asp:ListItem>校公共必修课</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 245px"><asp:CheckBox ID="teacherCode1" runat="server" Text="教师编号：" /><asp:TextBox ID="teacherCode"
                                                    runat="server" Width="120px"></asp:TextBox></td>
                                            <td style="width: 245px">
                                                &nbsp;<asp:CheckBox ID="teacherName1" runat="server" Text="教师姓名：" /><asp:TextBox ID="teacherName" runat="server" Width="120px"></asp:TextBox></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td colspan="3" style="text-align: center">
                                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" />
                                                &nbsp; &nbsp; &nbsp;
                                                <input id="Reset2" class="btn3_mouseout" onclick="return Reset1_onclick()" onmousedown="this.className='btn3_mousedown'"
                                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
                                        </tr>
                                    </table>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                    <asp:Label ID="highNumber" runat="server" Text="0" Visible="False"></asp:Label></td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

