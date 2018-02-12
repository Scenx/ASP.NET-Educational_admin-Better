<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea_findTeachingEvalutionResult.aspx.cs" Inherits="manager_sysManager_teacherManage_tea_findTeachingEvalutionResult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1003px; height: 490px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 教师管→教师评估信息管理→查找教师评估结果</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 996px; height: 75px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 332px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="userName1" runat="server" Text="用户名：" />
                                &nbsp; &nbsp;
                                <asp:TextBox ID="userName" runat="server"></asp:TextBox></td>
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#003399" CellPadding="4" Height="122px" Width="1003px">
                        <Columns>
                            <asp:BoundField DataField="courseName" HeaderText="课程名" />
                            <asp:BoundField DataField="teacherName" HeaderText="教师名" />
                            <asp:BoundField DataField="courseCode" HeaderText="课程代码" />
                            <asp:BoundField DataField="tKnowledgeLevel" HeaderText="教师知识水平" />
                            <asp:BoundField DataField="tPutonghuaLevel" HeaderText="教师普通话水平" />
                            <asp:BoundField DataField="tSchoolWay" HeaderText="老师教学方式" />
                        </Columns>
                        <RowStyle ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
