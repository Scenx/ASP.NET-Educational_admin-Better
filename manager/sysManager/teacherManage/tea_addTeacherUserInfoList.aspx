<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea_addTeacherUserInfoList.aspx.cs" Inherits="manager_sysManager_teacherManage_tea_addTeacherUserInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>教师管理→教师用户信息管理→编辑教师用户信息 </title>
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
                    &nbsp;&nbsp; 教师管理→教师用户信息管理→编辑教师用户信息 &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 此页不可编辑！！！</td>
            </tr>
            <tr style="height: 166px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 150px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp;&nbsp; 用户名： &nbsp;
                                <asp:TextBox ID="userName" runat="server" BackColor="#DEE9F9" Width="141px" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="userName"
                                    ErrorMessage="用户名不能为空!">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000; height: 25px">
                                &nbsp;密码： &nbsp; &nbsp;&nbsp;
                                <asp:TextBox ID="teacherPwd" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="teacherPwd"
                                    ErrorMessage="密码不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000; height: 25px">
                                &nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp;&nbsp; 教师编号：<asp:TextBox ID="teacherCode" runat="server" BackColor="#DEE9F9"
                                    Width="138px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 245px; color: #000000; height: 25px">
                                &nbsp;身份证号：<asp:TextBox ID="IDcardNumber" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师姓名：<asp:TextBox ID="teacherName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 教师学院：<asp:TextBox ID="college" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师职务：<asp:TextBox ID="duty" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师职称：<asp:TextBox ID="technicalpost" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 密码保护1：<asp:DropDownList ID="pwdProtectQue1" runat="server" Enabled="False"
                                    Width="163px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>你的出生地是在哪？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的电视节目是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的体育运动是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的城市是哪个？</asp:ListItem>
                                    <asp:ListItem>你最向往的大学是哪所？</asp:ListItem>
                                </asp:DropDownList></td>
                            <td colspan="2" style="height: 25px">
                                &nbsp; 密保答案1：<asp:TextBox ID="pwdProtectAns1" runat="server" BackColor="#DEE9F9"
                                    Width="225px" ReadOnly="True"></asp:TextBox>
                                &nbsp; (建议管理员不要添加！！！)</td>
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
                                    Width="225px" ReadOnly="True"></asp:TextBox>
                                &nbsp; (建议管理员不要添加！！！)</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="height: 25px">
                                &nbsp; 密码保护邮箱：<asp:TextBox ID="email" runat="server" BackColor="#DEE9F9" Width="350px" ReadOnly="True"></asp:TextBox>
                                &nbsp; (建议管理员不要添加！！！)</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                &nbsp;<asp:Button ID="submit" runat="server" class="btn3_mouseout" Enabled="False"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="此页不可编辑！！！" />
                                &nbsp; &nbsp;&nbsp;
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
                    <uc1:std_listFoot ID="Std_listFoot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
