<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_findStdTeachingEvalution.aspx.cs" Inherits="manager_sysManager_studentManage_std_findStdTeachingEvalution" %>

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
                    &nbsp;&nbsp; 学生管理→教学评估管理→查找教学评估投票情况</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 996px; height: 75px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 332px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="studyNumber1" runat="server" Text="学生学号：" />
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                <asp:CheckBox ID="speciality1" runat="server" Text="学生专业：" />
                                <asp:TextBox ID="speciality" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                <asp:CheckBox ID="teachedClass1" runat="server" Text="教学班：" />
                                <asp:TextBox ID="teachedClass" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 332px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="studentName1" runat="server" Text="学生姓名：" />
                                <asp:TextBox ID="studentName" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                <asp:CheckBox ID="college1" runat="server" Text="学生学院：" />
                                <asp:TextBox ID="college" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                <asp:CheckBox ID="adminClass1" runat="server" Text="行政班：" />
                                <asp:TextBox ID="adminClass" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 332px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="IDcardNumber1" runat="server" Text="身份证号：" />
                                <asp:TextBox ID="IDcardNumber" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px"><asp:CheckBox ID="teacherCode1" runat="server" Text="教师编号：" />
                                <asp:TextBox ID="teacherCode" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                &nbsp;<asp:CheckBox ID="teacherName1" runat="server" Text="教师姓名：" />
                                <asp:TextBox ID="teacherName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 332px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="courseCode1" runat="server" Text="课程编号：" />
                                <asp:TextBox ID="courseCode" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px"><asp:CheckBox ID="courseName1" runat="server" Text="课程名称：" />
                                <asp:TextBox ID="courseName" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                &nbsp;<asp:CheckBox ID="evalutionStudyYear1" runat="server" Text="评估学年：" />
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 332px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="evalutionSemester" runat="server" Text="评估学年：" />
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            <td style="width: 332px; height: 25px">
                                &nbsp;</td>
                            <td style="width: 332px; height: 25px">
                                &nbsp;</td>
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
                        BackColor="White" BorderColor="White" CellPadding="4" PageSize="20" Width="996px">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PreviousPageText="下一页" />
                        <Columns>
                            <asp:BoundField DataField="studyNumber" HeaderText="学生学号" />
                            <asp:BoundField DataField="studentName" HeaderText="学生姓名" />
                            <asp:BoundField DataField="college" HeaderText="学院">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="speciality" HeaderText="学生专业">
                                <ItemStyle Width="120px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="teacherCode" HeaderText="教师编号" />
                            <asp:BoundField DataField="teacherName" HeaderText="教师姓名" />
                            <asp:BoundField DataField="courseCode" HeaderText="课程编号" />
                            <asp:BoundField DataField="courseName" HeaderText="课程名称" />
                            <asp:BoundField DataField="evalutionDate" HeaderText="评估时间" />
                            <asp:BoundField DataField="evalutionSemester" HeaderText="评估学期" />
                            <asp:CommandField EditText="详细信息" HeaderText="详细信息" ShowEditButton="True">
                                <ItemStyle ForeColor="Red" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="删除处分" ShowDeleteButton="True">
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
