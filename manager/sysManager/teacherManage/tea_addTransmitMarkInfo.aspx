<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea_addTransmitMarkInfo.aspx.cs" Inherits="manager_sysManager_teacherManage_tea_addTransmitMarkInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 教师管理→教师上传成绩管理→添加教师上传成绩</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 600px; height: 60px; background-color: #e4ecf3;
                        text-align: left">
                        <tr>
                            <td colspan="5" rowspan="2" style="color: blue">
                                &nbsp;&nbsp; 上传成绩老师登陆：</td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="width: 75px">
                                &nbsp;&nbsp; 用户名：</td>
                            <td style="width: 185px">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="userName" runat="server"></asp:TextBox></td>
                            <td style="width: 60px">
                                &nbsp;&nbsp; 密码：</td>
                            <td style="width: 185px">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="passWord" runat="server" TextMode="Password"></asp:TextBox></td>
                            <td style="width: 70px; text-align: center">
                                <asp:Button ID="confirm" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="登  陆" OnClick="confirm_Click" /></td>
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
