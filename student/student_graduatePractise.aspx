<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_graduatePractise.aspx.cs" Inherits="student_student_graduatePractise" %>

<%@ Register Src="student_main.ascx" TagName="student_main" TagPrefix="uc1" %>
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
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
            height: 620px">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:student_main ID="Student_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="background-image: url(../image/system/main_top_bg.gif)" colspan="3">
                    &nbsp;&nbsp; 实习实践信息维护→2004级教育实习信息查询</td>
            </tr>
            <tr style="height: 435px">
                <td style="vertical-align: top; background-color: #dee9f9; text-align: center" colspan="3">
                    <br />
                    <br />
                    <br />
                    <table style="width: 600px; height: 60px; background-color: #e4ecf3; text-align: left;" border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0" cellspacing="0" class="css">
                        <tr>
                            <td rowspan="2" style="color: blue" colspan="5">
                                &nbsp;&nbsp; 实习生登陆：</td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="width:60px">
                                &nbsp;&nbsp; 学号：</td>
                            <td style="width:185px">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="studyNumber" runat="server"></asp:TextBox></td>
                            <td style="width:60px">
                                &nbsp;&nbsp;
                                密码：</td>
                            <td style="width:185px">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="pwd" runat="server"></asp:TextBox></td>
                            <td style="width:70px; text-align: center;">
                                <asp:Button ID="confirm" runat="server" Text="确  定" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"/></td>
                        </tr>
                    </table>
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
