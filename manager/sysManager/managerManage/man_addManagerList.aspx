<%@ Page Language="C#" AutoEventWireup="true" CodeFile="man_addManagerList.aspx.cs" Inherits="manager_sysManager_managerManage_man_addManagerList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>管理员管理→编辑管理员信息</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 740px; height: 490px; background-color: #dee9f9;" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; 管理员管理→编辑管理员信息</td>
            </tr>
            <tr style="height: 356px">
                <td colspan="3" style="vertical-align: top; text-align: left">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 175px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 215px">
                                &nbsp; 用户名： &nbsp; &nbsp;&nbsp;
                                <asp:Label ID="userName" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 215px; color: #000000">
                                &nbsp; 管理员密码：<asp:TextBox ID="password" runat="server" Width="120px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password"
                                    ErrorMessage="密码不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 305px; color: #000000">
                                &nbsp; 确认密码：<asp:TextBox ID="passwordAgain" runat="server" Width="120px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordAgain"
                                    ErrorMessage="确认密码不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000; height: 25px">
                            <td style="width: 245px">
                                管理员姓名：<asp:TextBox ID="managerName" runat="server" Width="120px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="managerName"
                                    ErrorMessage="管理员姓名不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp;</td>
                            <td style="width: 245px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                管理员电话：<asp:TextBox ID="tel" runat="server" Width="120px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tel"
                                    ErrorMessage="管理员电话不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp;系统管理员类型：<asp:DropDownList ID="managerStyle" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="managerStyle_SelectedIndexChanged" Width="109px" Enabled="False">
                                    <asp:ListItem>一级管理员</asp:ListItem>
                                    <asp:ListItem>二级管理员</asp:ListItem>
                                    <asp:ListItem>院系管理员</asp:ListItem>
                                    <asp:ListItem>部门管理员</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                部门：<asp:Label ID="unit" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 密码保护1：<asp:DropDownList ID="pwdProtectQue1" runat="server" Width="140px" Enabled="False">
                                    <asp:ListItem>你的出生地是在哪？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的电视节目是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的体育运动是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的城市是哪个？</asp:ListItem>
                                    <asp:ListItem>你最向往的大学是哪所？</asp:ListItem>
                                </asp:DropDownList></td>
                            <td colspan="2" style="height: 25px">
                                &nbsp; 密保答案1：<asp:TextBox ID="pwdProtectAns1" runat="server" Width="350px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>&nbsp;
                                （可为空！）
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 密码保护2：<asp:DropDownList ID="pwdProtectQue2" runat="server" Width="140px" Enabled="False">
                                    <asp:ListItem>你小学的班主任是谁？</asp:ListItem>
                                    <asp:ListItem>你的初中班主任是谁？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的明星是谁？</asp:ListItem>
                                    <asp:ListItem>你的学生证号是多少？</asp:ListItem>
                                    <asp:ListItem>你的辅导员是谁？</asp:ListItem>
                                </asp:DropDownList></td>
                            <td colspan="2" style="height: 25px">
                                &nbsp; 密保答案2：<asp:TextBox ID="pwdProtectAns2" runat="server" Width="350px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>&nbsp;
                                （可为空！）</td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 密码保护3：<asp:DropDownList ID="pwdProtectQue3" runat="server" Width="140px" Enabled="False">
                                    <asp:ListItem>你的生日是哪天？</asp:ListItem>
                                    <asp:ListItem>你的业余爱好是什么？</asp:ListItem>
                                    <asp:ListItem>你最想去的地方是哪？</asp:ListItem>
                                    <asp:ListItem>你在大学的专业是什么？</asp:ListItem>
                                    <asp:ListItem>你所在的学院名称是什么？</asp:ListItem>
                                </asp:DropDownList></td>
                            <td colspan="2">
                                &nbsp; 密保答案3：<asp:TextBox ID="pwdProtectAns3" runat="server" Width="350px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                （可为空！）</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="height: 25px">
                                &nbsp; 密码保护邮箱：<asp:TextBox ID="email" runat="server" Width="350px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="email"
                                    ErrorMessage="密保邮箱不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"
                                    ErrorMessage="邮箱格式不正确！" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr style="height: 100px">
                            <td colspan="3" style="height: 25px">
                                &nbsp; 管理员的简介：<asp:TextBox ID="managerIntroduce" runat="server" Height="85px" TextMode="MultiLine"
                                    Width="586px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="managerIntroduce"
                                    ErrorMessage="管理员简介不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="edit" runat="server" class="btn3_mouseout" OnClick="edit_Click" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="编  辑" />
                                &nbsp; &nbsp;
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" Enabled="False" OnClick="submit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" />&nbsp; &nbsp; &nbsp;<input id="Button1" runat="server" class="btn3_mouseout"
                                        dir="ltr" enableviewstate="true" name="guanbi" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" type="button" value="关  闭" visible="true" />
                                &nbsp; &nbsp; &nbsp;</td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
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
