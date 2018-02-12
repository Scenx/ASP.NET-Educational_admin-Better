<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addStudentUserInfo.aspx.cs" Inherits="manager_sysManager_studentManage_std_addStudentUserInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加学生用户信息</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→学生信息管理→添加学生用户信息</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: left">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 150px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 用户名： &nbsp;&nbsp;
                                <asp:TextBox ID="userName" runat="server" Width="90px"></asp:TextBox>
                                <asp:Button ID="infoExport" runat="server" class="btn3_mouseout" EnableViewState="False"
                                    OnClick="infoExport_Click" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="信息导入" Width="55px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userName"
                                    ErrorMessage="用户名(学号)不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 身份证号：<asp:TextBox ID="IDcardNumber" runat="server" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生密码：<asp:TextBox ID="stdPwd" runat="server" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 行政班： &nbsp;&nbsp;
                                <asp:TextBox ID="adminClass" runat="server" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 教学班： &nbsp;&nbsp;
                                <asp:TextBox ID="teachedClass" runat="server" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生姓名：<asp:TextBox ID="studentName" runat="server" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学院名称：<asp:TextBox ID="college" runat="server" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生专业：<asp:TextBox ID="speciality" runat="server" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生年级：<asp:TextBox ID="currentlyGarde" runat="server" ReadOnly="True" BackColor="#DEE9F9"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 密码保护1：<asp:DropDownList ID="pwdProtectQue1" runat="server" Width="163px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>你的出生地是在哪？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的电视节目是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的体育运动是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的城市是哪个？</asp:ListItem>
                                    <asp:ListItem>你最向往的大学是哪所？</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="height: 25px" colspan="2">
                                &nbsp; 密保答案1：<asp:TextBox ID="pwdProtectAns1" runat="server" Width="240px" BackColor="#DEE9F9"></asp:TextBox>&nbsp;
                                (建议管理员不要添加！！！)</td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 密码保护2：<asp:DropDownList ID="pwdProtectQue2" runat="server" Width="162px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>你小学的班主任是谁？</asp:ListItem>
                                    <asp:ListItem>你的初中班主任是谁？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的明星是谁？</asp:ListItem>
                                    <asp:ListItem>你的学生证号是多少？</asp:ListItem>
                                    <asp:ListItem>你的辅导员是谁？</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="height: 25px" colspan="2">
                                &nbsp; 密保答案2：<asp:TextBox ID="pwdProtectAns2" runat="server" Width="237px" BackColor="#DEE9F9"></asp:TextBox>&nbsp;
                                (建议管理员不要添加！！！)</td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="height: 25px" colspan="3">
                                &nbsp; 密码保护邮箱：<asp:TextBox ID="email" runat="server" Width="350px" BackColor="#DEE9F9"></asp:TextBox>&nbsp;
                                (建议管理员不要添加！！！)</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp;<asp:Button ID="submit" runat="server" class="btn3_mouseout"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" Enabled="False" OnClick="submit_Click" />
                                &nbsp; &nbsp;&nbsp;
                                <input id="Reset2" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" />
                                &nbsp; &nbsp; &nbsp;
                            </td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                    <asp:Label ID="submitResult" runat="server" Font-Bold="False" Font-Size="11pt" ForeColor="Red"
                        Text="Label" Visible="False"></asp:Label></td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
