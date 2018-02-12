<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addStudentCourseTable.aspx.cs" Inherits="manager_sysManager_studentManage_std_addStudentCourseTable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 735px;
            height: 232px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→课表信息管理→添加课表</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 125px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学院名称：<asp:DropDownList ID="DropDownList3" runat="server" Width="98px">
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 专业名称：<asp:TextBox ID="courseName" runat="server"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 课表名称：<asp:TextBox ID="teachingMatrialName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px;">
                                &nbsp; 星期几： &nbsp;&nbsp;
                                <asp:DropDownList ID="weekday" runat="server" Width="98px">
                                </asp:DropDownList></td>
                            <td style="width: 245px; height: 25px;">
                                &nbsp; 时间段： &nbsp;&nbsp;
                                <asp:DropDownList ID="daytime" runat="server" Width="98px">
                                </asp:DropDownList></td>
                            <td style="width: 245px; height: 25px;">
                                &nbsp; 课程名称：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程编号：<asp:TextBox ID="teacherName" runat="server"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 教师编号：<asp:TextBox ID="teacherCode" runat="server"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 教师名称：<asp:TextBox ID="coursePlace" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 课程起始：<asp:TextBox ID="creditHour" runat="server"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 一周学时：<asp:TextBox ID="weekPeriod" runat="server"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 上课地点：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
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
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="White" CellPadding="4" PageSize="20" Width="735px">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PreviousPageText="下一页" />
                        <Columns>
                            <asp:BoundField DataField="college" HeaderText=" 学院名称" />
                            <asp:BoundField DataField="courseTableName" HeaderText="课表名称" />
                            <asp:BoundField DataField="courseCode" HeaderText="课程编号" />
                            <asp:BoundField DataField="courseName" HeaderText="课程名称" />
                            <asp:BoundField DataField="teacherName" HeaderText="教师姓名" />
                            <asp:BoundField DataField="capacity" HeaderText="教师编号" />
                            <asp:CommandField EditText="详细信息" HeaderText="详细信息" ShowEditButton="True">
                                <ItemStyle ForeColor="Red" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                                <ItemStyle ForeColor="Red" />
                            </asp:CommandField>
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
