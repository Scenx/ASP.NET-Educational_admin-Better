<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_pwdProtect.aspx.cs" Inherits="teacher_teacher_pwdProtect" %>

<%@ Register Src="teacher_main.ascx" TagName="teacher_main" TagPrefix="uc1" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
            height: 620px">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:teacher_main ID="Teacher_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="background-image: url(../image/system/main_top_bg.gif)" colspan="3">
                    &nbsp;&nbsp; 信息维护→密码保护</td>
            </tr>
            <tr style="height: 435px">
                <td style="vertical-align: top; background-color: #dee9f9; text-align: center" colspan="3">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 600px; height: 200px; background-color: #e4ecf3">
                        <tr>
                            <td style="width: 100px">
                                提示问题1：</td>
                            <td colspan="2" style="width: 450px; text-align: left">
                                &nbsp; &nbsp;<asp:DropDownList ID="pwdProtectQue1" runat="server" Width="163px">
                                    <asp:ListItem>你的出生地是在哪？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的电视节目是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的体育运动是什么？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的城市是哪个？</asp:ListItem>
                                    <asp:ListItem>你最向往的大学是哪所？</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                提示问题答案1：</td>
                            <td colspan="2" style="width: 450px; text-align: left">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="pwdProtectAns1" runat="server" Width="210px"></asp:TextBox>
                                &nbsp; （请牢记，忘记密码取回使用！！）<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ControlToValidate="pwdProtectAns1" ErrorMessage="提示问题答案1不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                提示问题2：</td>
                            <td colspan="2" style="width: 450px; text-align: left">
                                &nbsp;&nbsp;
                                <asp:DropDownList ID="pwdProtectQue2" runat="server" Width="162px">
                                    <asp:ListItem>你小学的班主任是谁？</asp:ListItem>
                                    <asp:ListItem>你的初中班主任是谁？</asp:ListItem>
                                    <asp:ListItem>你最喜欢的明星是谁？</asp:ListItem>
                                    <asp:ListItem>你的学生证号是多少？</asp:ListItem>
                                    <asp:ListItem>你的辅导员是谁？</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                提示问题答案2：</td>
                            <td colspan="2" style="width: 450px; text-align: left">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="pwdProtectAns2" runat="server" Width="210px"></asp:TextBox>
                                &nbsp; （请牢记，忘记密码取回使用！！）<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="pwdProtectAns2" ErrorMessage="提示问题答案2不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                请输入你的密码：</td>
                            <td colspan="2" style="width: 450px; text-align: left">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="stdPwd" runat="server" TextMode="Password" Width="155px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="stdPwd"
                                    ErrorMessage="输入的密码不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" />
                                &nbsp; &nbsp; &nbsp;
                                <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr style="height: 50px">
                <td colspan="3">
                    <uc2:foot ID="Foot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
