<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_pwdChange.aspx.cs" Inherits="teacher_teacher_pwdChange" %>

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
                    &nbsp;&nbsp; 信息维护→修改密码</td>
            </tr>
            <tr style="height: 435px">
                <td style="vertical-align: top; background-color: #dee9f9; text-align: center" colspan="3">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 400px; height: 200px; background-color: #e4ecf3">
                        <tr>
                            <td style="width: 100px">
                                教工编号：</td>
                            <td colspan="2" style="width: 300px; text-align: left">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="teacherCode" runat="server" Width="200px" BackColor="#DEE9F9"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                原密码：</td>
                            <td colspan="2" style="width: 300px; text-align: left">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="oldpwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                新密码：</td>
                            <td colspan="2" style="width: 300px; text-align: left">
                                &nbsp; &nbsp;<asp:TextBox ID="newpwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="newpwd"
                                    ErrorMessage="新密码不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                再次输入新密码：</td>
                            <td colspan="2" style="width: 300px; text-align: left">
                                &nbsp; &nbsp;<asp:TextBox ID="newpwdagain" runat="server" Height="20px" Width="200px" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="newpwdagain"
                                    ErrorMessage="新密码不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" />
                                &nbsp; &nbsp; &nbsp;&nbsp;
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
