<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_findGradeTestSignUpInfo.aspx.cs" Inherits="manager_sysManager_studentManage_std_findGradeTestSignUpInfo" %>

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
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif); height: 24px">
                    &nbsp; 学生管理→查找等级考试报名信息</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 125px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 312px">
                                <asp:CheckBox ID="studyNumber1" runat="server" Text="学生学号：" /><asp:TextBox ID="studyNumber" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 402px">
                                <asp:CheckBox ID="IDcardNumber1" runat="server" Text="身份证号：" />
                                <asp:TextBox ID="IDcardNumber" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 282px">
                                <asp:CheckBox ID="studentName1" runat="server" Text="学生姓名：" /><asp:TextBox ID="studentName" runat="server" Width="108px"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 312px">
                                &nbsp;<asp:CheckBox ID="testName1" runat="server" Checked="True" Enabled="False"
                                    Text="考试名称：" />
                                <asp:DropDownList ID="testName" runat="server" Width="125px">
                                    <asp:ListItem>英语四级等级考试</asp:ListItem>
                                    <asp:ListItem>英语六级等级考试</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 402px">
                                <asp:CheckBox ID="testStyle1" runat="server" Checked="True" Enabled="False" Text="考试类型：" />
                                <asp:DropDownList ID="testStyle" runat="server" Width="125px">
                                    <asp:ListItem>英语等级考试</asp:ListItem>
                                    <asp:ListItem>计算机等级考试</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 282px">
                                <asp:CheckBox ID="testStudyYear1" runat="server" Checked="True" Enabled="False" Text="报名学年：" /><asp:DropDownList ID="testStudyYear" runat="server"  Width="91px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 312px">
                                &nbsp;<asp:CheckBox ID="testSemster1" runat="server" Checked="True" Enabled="False"
                                    Text="报名学期：" />
                                <asp:DropDownList ID="testSemester" runat="server" Width="63px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 402px">
                                <asp:CheckBox ID="college1" runat="server" Checked="True" Enabled="False" Text="学生学院：" />
                                <asp:DropDownList ID="college" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="college_SelectedIndexChanged"
                                    Width="209px">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 282px">
                                <asp:CheckBox ID="speciality1" runat="server" Text="学生专业：" />
                                <asp:DropDownList ID="speciality" runat="server" Width="112px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 312px">
                                &nbsp;<asp:CheckBox ID="ifPayment1" runat="server" Text="是否缴费：" />
                                <asp:DropDownList ID="ifPayment" runat="server" Width="63px">
                                    <asp:ListItem>已缴费</asp:ListItem>
                                    <asp:ListItem>未缴费</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 402px">
                                </td>
                            <td style="width: 282px">
                                &nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" OnClick="submit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" />
                                &nbsp; &nbsp;&nbsp;
                                <input id="Reset1" class="btn3_mouseout" onclick="return Reset1_onclick()" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
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
