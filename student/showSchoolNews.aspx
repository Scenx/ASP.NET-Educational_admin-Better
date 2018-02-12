<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showSchoolNews.aspx.cs" Inherits="student_showSchoolNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 700px;
            height: 540px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../image/system/main_top_bg.gif)">
                    &nbsp; 哈尔滨师范大学公告信息</td>
            </tr>
            <tr style="height: 515px">
                <td colspan="3" rowspan="2" style="vertical-align: top; text-align: center; background-color: #dee9f9;">
                    <table style="width: 695px; height: 480px" border="1" cellpadding="0" cellspacing="0" bordercolordark="#003399" bordercolorlight="#6a82dd" class="css">
                        <tr style =" height: 40px">
                            <td colspan="3" style="font-size: 15pt">
                                <asp:Label ID="Title" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="font-weight: bold; text-align: left">
                                &nbsp; 相关说明：</td>
                        </tr>
                        <tr style="height: 340px">
                            <td colspan="3" style="vertical-align: top; text-align: center">
                                <asp:TextBox ID="content" runat="server" Height="327px" Width="680px" TextMode="MultiLine" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: left; font-weight: bold;">
                                &nbsp; 相关下载：</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: left; height: 25px;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: right">
                                <input id="Button1" name="guanbi" type="button" runat="server" value="关  闭" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" dir="ltr" enableviewstate="true" visible="true"/>
                                &nbsp; &nbsp; &nbsp; &nbsp;
                            </td>
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

