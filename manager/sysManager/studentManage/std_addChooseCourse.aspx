<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addChooseCourse.aspx.cs" Inherits="manager_sysManager_studentManage_std_addChooseCourse" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1003px; height: 490px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 25px">
                <td colspan="3" style="width: 740px; background-image: url(../../../image/system/main_top_bg.gif);">
                    &nbsp; 学生管理→添加学生选课</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="width: 740px; vertical-align: top; background-color: #dee9f9; text-align: center;">
                    <TABLE style="WIDTH: 1000px; HEIGHT: 50px; TEXT-ALIGN: left" cellSpacing=0 
cellPadding=0 border=0><TBODY><TR 
style="HEIGHT: 25px"><TD 
style="WIDTH: 370px; HEIGHT: 25px; BACKGROUND-COLOR: #e4ecf3">  &nbsp;&nbsp;&nbsp; &nbsp; 学生学号： &nbsp;
    <asp:TextBox ID="studyNumber" runat="server" Width="89px"></asp:TextBox><asp:Button
        ID="infoExport" runat="server" class="btn3_mouseout" EnableViewState="False"
        OnClick="infoExport_Click" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
        onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
        Text="信息导入" Width="55px" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
            runat="server" ControlToValidate="studyNumber" ErrorMessage="学生学号不能为空！">*</asp:RequiredFieldValidator></TD><TD 
style="WIDTH: 370px; HEIGHT: 25px; BACKGROUND-COLOR: #e4ecf3">  &nbsp; &nbsp; &nbsp; 学生专业： &nbsp;
    <asp:TextBox ID="speciality" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></TD><TD 
style="WIDTH: 370px; HEIGHT: 25px; BACKGROUND-COLOR: #e4ecf3">  &nbsp; &nbsp; &nbsp; 学生教学班：<asp:TextBox ID="teachedClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></TD></TR><TR 
style="HEIGHT: 25px"><TD 
style="WIDTH: 370px; HEIGHT: 25px; BACKGROUND-COLOR: #e4ecf3">  &nbsp; &nbsp; &nbsp; 学生姓名： &nbsp;
    <asp:TextBox ID="studentName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></TD><TD 
style="WIDTH: 370px; HEIGHT: 25px; BACKGROUND-COLOR: #e4ecf3">  &nbsp; &nbsp; &nbsp; 学院名称： &nbsp;
    <asp:TextBox ID="college" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></TD><TD 
style="WIDTH: 370px; HEIGHT: 25px; BACKGROUND-COLOR: #e4ecf3">  &nbsp; &nbsp; &nbsp; 学生行政班：<asp:TextBox ID="adminClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></TD></TR></TBODY></TABLE>
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" style="width: 1000px; height: 950px; text-align: left">
                        <tr style="height: 25px">
                            <td colspan="3" style="background-color: #e4ecf3">
                                &nbsp;&nbsp; 有无余量：<asp:DropDownList ID="DropDownList1" runat="server" Width="50px">
                                    <asp:ListItem>无</asp:ListItem>
                                    <asp:ListItem>有</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp; &nbsp;上课时间：
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="770px">
                                    <asp:ListItem>周一第8,9节{第2-16周};周一第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周二第8,9节{第2-16周};周二第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周三第8,9节{第2-16周};周三第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周四第8,9节{第2-16周};周四第10节{第2-16周}</asp:ListItem>
                                    <asp:ListItem>周五第8,9节{第2-16周};周五第10节{第2-16周}</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="background-color: #e4ecf3">
                                &nbsp;&nbsp; 上课校区：<asp:DropDownList ID="DropDownList4" runat="server" Width="59px">
                                    <asp:ListItem>南校区</asp:ListItem>
                                    <asp:ListItem>北校区</asp:ListItem>
                                </asp:DropDownList>课程性质：<asp:DropDownList ID="DropDownList5" runat="server" Width="100px">
                                    <asp:ListItem>校内公共选修课</asp:ListItem>
                                    <asp:ListItem>校内公共必修课</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="background-color: #e4ecf3">
                                &nbsp; &nbsp; 课程名查询：<asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp;
                                <asp:Button ID="confirm" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="确  定" Enabled="False" /></td>
                        </tr>
                        <tr style="height: 550px">
                            <td colspan="3" style="vertical-align: top; text-align: center">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#3366CC" CellPadding="4" Width="1000px">
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="选课">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckBox1" runat="server" BorderColor="#003399" BorderWidth="1px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="预定教材">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckBox2" runat="server" BorderColor="#003399" BorderWidth="1px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="courseName" HeaderText="课程名">
                                            <ItemStyle Width="100px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="teacherName" HeaderText="教师名" />
                                        <asp:BoundField DataField="courseTime" HeaderText="上课时间">
                                            <ItemStyle Width="180px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="coursePlace" HeaderText="上课地点">
                                            <ItemStyle Width="120px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="creditHour" HeaderText="学分" />
                                        <asp:BoundField DataField="weekPeriod" HeaderText="周课时" />
                                        <asp:BoundField DataField="weekDateFrom" HeaderText="起始结束周" />
                                        <asp:BoundField DataField="capacity" HeaderText="容量" />
                                        <asp:BoundField DataField="choosed" HeaderText="已选" />
                                        <asp:BoundField DataField="remain" HeaderText="余量" />
                                        <asp:BoundField DataField="remark" HeaderText="备注" />
                                        <asp:BoundField DataField="courseProperty" HeaderText="课程性质" />
                                        <asp:BoundField DataField="schoolArea" HeaderText="上课校区" />
                                        <asp:BoundField DataField="courseCollege" HeaderText="开课学院" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                                        NextPageText="下一页" PreviousPageText="前一页" />
                                    <PagerStyle ForeColor="Blue" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" OnClick="submit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" EnableViewState="False" />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                <asp:Button ID="close" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="关  闭" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="color: #0000ff">
                                &nbsp;&nbsp; 已选课程：</td>
                        </tr>
                        <tr style="height: 150px">
                            <td colspan="3" style="vertical-align: top; text-align: center">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#003399" CellPadding="3" OnRowDeleting="GridView2_RowDeleting" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"
                                    Width="1000px">
                                    <AlternatingRowStyle BackColor="#EFEFFF" />
                                    <Columns>
                                        <asp:BoundField DataField="courseName" HeaderText="课程名称" />
                                        <asp:BoundField DataField="teacherName" HeaderText="教师名称" />
                                        <asp:BoundField DataField="creditHour" HeaderText="学分" />
                                        <asp:BoundField DataField="weekPeriod" HeaderText="周学时" />
                                        <asp:BoundField DataField="weekDateFrom" HeaderText="起始结束周" />
                                        <asp:BoundField DataField="schoolArea" HeaderText="校区" />
                                        <asp:BoundField DataField="courseTime" HeaderText="上课时间">
                                            <ItemStyle Width="200px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="coursePlace" HeaderText="上课地点">
                                            <ItemStyle Width="100px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="remark" HeaderText="备注" />
                                        <asp:BoundField DataField="ifTeachingMaterial" HeaderText="预定教材" />
                                        <asp:BoundField DataField="courseProperty" HeaderText="课程性质" />
                                        <asp:CommandField DeleteText="退选" HeaderText="退选" ShowDeleteButton="True">
                                            <ItemStyle Font-Bold="True" ForeColor="Red" Width="30px" />
                                        </asp:CommandField>
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="color: #0000cc">
                                &nbsp; &nbsp; 学分统计：</td>
                        </tr>
                        <tr style="height: 100px">
                            <td colspan="3" style="vertical-align: top">
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#3366CC" CellPadding="4" Width="300px">
                                    <AlternatingRowStyle BackColor="#EFEFFF" />
                                    <Columns>
                                        <asp:BoundField DataField="courseCode" HeaderText="课程编号" />
                                        <asp:BoundField DataField="courseProperty" HeaderText="课程性质" />
                                        <asp:BoundField DataField="creditHour" HeaderText="获得学分" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                </asp:GridView>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" />
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
