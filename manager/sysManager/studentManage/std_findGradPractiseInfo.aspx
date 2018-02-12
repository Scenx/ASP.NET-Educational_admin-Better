<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_findGradPractiseInfo.aspx.cs" Inherits="manager_sysManager_studentManage_std_findGradPractiseInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1003px; height: 490px" border="0" cellpadding="0" cellspacing="0">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→查找实习成绩</td>
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
                                &nbsp;&nbsp; 实习带队老师登陆：</td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="width: 75px">
                                &nbsp;&nbsp; 教工编号：</td>
                            <td style="width: 185px">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="studyNumber" runat="server"></asp:TextBox></td>
                            <td style="width: 60px">
                                &nbsp;&nbsp; 密码：</td>
                            <td style="width: 185px">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="pwd" runat="server"></asp:TextBox></td>
                            <td style="width: 70px; text-align: center">
                                <asp:Button ID="confirm" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="确  定" /></td>
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
