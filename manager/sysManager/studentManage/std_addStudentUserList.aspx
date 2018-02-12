<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addStudentUserList.aspx.cs" Inherits="manager_sysManager_studentManage_std_addStudentUserList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生管理→学生信息管理→查看学生用户信息</title>
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
            height: 300px">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→学生信息管理→查看学生用户信息 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 此页不可编辑！！！！</td>
            </tr>
            <tr style="height: 166px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 175px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 用户名： &nbsp;&nbsp;
                                <asp:TextBox ID="userName" runat="server" BackColor="#DEE9F9" Width="147px" ReadOnly="True"></asp:TextBox>&nbsp;
                            </td>
                            <td style="width: 245px; color: #000000">
                                &nbsp;&nbsp; 学生密码：<asp:TextBox ID="stdPwd" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp;学生姓名：<asp:TextBox ID="studentName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 行政班： &nbsp;&nbsp;
                                <asp:TextBox ID="adminClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 教学班： &nbsp;&nbsp;
                                <asp:TextBox ID="teachedClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp;学生年级：<asp:TextBox ID="currentlyGarde" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学院名称：<asp:TextBox ID="college" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生专业：<asp:TextBox ID="speciality" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 23px">
                                &nbsp; 密码保护1：<asp:DropDownList ID="pwdProtectQue1" runat="server" Enabled="False"
                                    Width="163px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>你的出生地是在哪？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的电视节目是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的体育运动是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的城市是哪个？</asp:ListItem>
                                    <asp:ListItem>你最向往的大学是哪所？</asp:ListItem>
                                </asp:DropDownList></td>
                            <td colspan="2" style="height: 23px">
                                &nbsp; 密保答案1：<asp:TextBox ID="pwdProtectAns1" runat="server" BackColor="#DEE9F9"
                                    Width="240px" ReadOnly="True"></asp:TextBox>&nbsp; (建议管理员不要添加！！！)</td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 密码保护2：<asp:DropDownList ID="pwdProtectQue2" runat="server" Enabled="False"
                                    Width="162px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>你小学的班主任是谁？</asp:ListItem>
                                    <asp:ListItem>你的初中班主任是谁？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的明星是谁？</asp:ListItem>
                                    <asp:ListItem>你的学生证号是多少？</asp:ListItem>
                                    <asp:ListItem>你的辅导员是谁？</asp:ListItem>
                                </asp:DropDownList></td>
                            <td colspan="2" style="height: 25px">
                                &nbsp; 密保答案2：<asp:TextBox ID="pwdProtectAns2" runat="server" BackColor="#DEE9F9"
                                    Width="237px" ReadOnly="True"></asp:TextBox>&nbsp; (建议管理员不要添加！！！)</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="height: 25px">
                                &nbsp; 密码保护邮箱：<asp:TextBox ID="email" runat="server" BackColor="#DEE9F9" Width="350px" ReadOnly="True"></asp:TextBox>&nbsp;
                                (建议管理员不要添加！！！)</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="infoExport" runat="server" class="btn3_mouseout" EnableViewState="False" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="此页不可编辑！！！" Width="118px" Enabled="False" />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<input
                                    id="Button1" runat="server" class="btn3_mouseout" dir="ltr" enableviewstate="true"
                                    name="guanbi" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    type="button" value="关  闭" visible="true" />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 50px">
                <td colspan="3">
                    <uc1:std_listFoot ID="Std_listFoot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
