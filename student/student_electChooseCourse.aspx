<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_electChooseCourse.aspx.cs" Inherits="student_student_electChooseCourse" %>

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
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px; height: 1200px;">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:student_main ID="Student_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 网上选课→校内公共选修课选课</td>
            </tr>
            <tr style="height: 1015px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 1000px; height: 50px; text-align: left;">
                        <tr style="height: 25px">
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3;">
                                &nbsp; 学号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3;">
                                &nbsp; 专业：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3;">
                                &nbsp; 教学班：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 姓名：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 学院：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 行政班：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                    </table>
                    <table border="1" cellpadding="0" bordercolordark="#003399" bordercolorlight="#6a82dd" cellspacing="0" style="width: 1000px; height: 950px; text-align: left;">
                        <tr style="height: 25px">
                            <td style="background-color: #e4ecf3" colspan="3">
                                &nbsp;&nbsp; 有无余量：<asp:DropDownList ID="DropDownList1" runat="server" Width="50px" >
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
                            <td style="background-color: #e4ecf3" colspan="3">
                                &nbsp;&nbsp; 上课校区：<asp:DropDownList ID="DropDownList4" runat="server" Width="59px">
                                    <asp:ListItem>南校区</asp:ListItem>
                                    <asp:ListItem>北校区</asp:ListItem>
                                </asp:DropDownList>课程性质：<asp:DropDownList ID="DropDownList5" runat="server" Width="70px">
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="background-color: #e4ecf3" colspan="3">
                                &nbsp; &nbsp; 课程名查询：<asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp;
                                <asp:Button ID="confirm" runat="server" Text="确  定" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"/></td>
                        </tr>
                        <tr style="height : 550px">
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
                        <tr style="height : 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" Text="提  交" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" OnClick="submit_Click"/>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                <asp:Button ID="close" runat="server" Text="关  闭" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"/></td>
                        </tr>
                        <tr style="height : 25px">
                            <td colspan="3" style="color: #0000ff">
                                &nbsp;&nbsp; 已选课程：</td>
                        </tr>
                        <tr style="height : 150px">
                            <td colspan="3" style="vertical-align: top; text-align: center">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#003399" CellPadding="3" OnRowDeleting="GridView2_RowDeleting" Width="1000px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
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
                        <tr style="height : 25px">
                            <td colspan="3" style="color: #0000cc">
                                &nbsp; &nbsp; 学分统计：</td>
                        </tr>
                        <tr style="height : 100px">
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
                            </td>
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
