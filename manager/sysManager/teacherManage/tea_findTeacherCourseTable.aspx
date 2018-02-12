<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea_findTeacherCourseTable.aspx.cs" Inherits="manager_sysManager_teacherManage_tea_findTeacherCourseTable" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 教师管理→教师课表管理→查找教师课表信息</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 996px; height: 75px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 332px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="teacherCode1" runat="server" Text="教师编号：" />
                                <asp:TextBox ID="teacherCode" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                <asp:CheckBox ID="IDcardNumber1" runat="server" Text="身份证号：" />
                                <asp:TextBox ID="IDcardNumber" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                <asp:CheckBox ID="teacherName1" runat="server" Text="教师姓名：" />
                                <asp:TextBox ID="teacherName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 332px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="college1" runat="server" Text="教师学院：" />
                                <asp:TextBox ID="college" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                <asp:CheckBox ID="teacherDuty1" runat="server" Text="教师职务：" />
                                <asp:TextBox ID="duty" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                <asp:CheckBox ID="technicalpost1" runat="server" Text="教师职称：" />
                                <asp:TextBox ID="technicalpost" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" />
                                &nbsp; &nbsp;&nbsp;
                                <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
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
