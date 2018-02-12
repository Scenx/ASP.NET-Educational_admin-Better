<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_semesterMark.aspx.cs" Inherits="student_student_semesterMark" %>



<%@ Register Src="student_main.ascx" TagName="student_main" TagPrefix="uc3" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>学生最高成绩</title>
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
        <table style="width: 1003px; height: 621px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr>
                <td colspan="9" style="height: 110px">
                    <uc3:student_main ID="Student_main1" runat="server" />
                </td>
            </tr>
            <tr>
            <td colspan="9" style="height: 25px; background-image: url(../image/system/main_top_bg.gif); text-align: left; color: black;">
                &nbsp;&nbsp; 信息查询→考试成绩查询→学期成绩查询</td>
            </tr>
            <tr style="height: 25px;">
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    学年&nbsp;
                    <asp:DropDownList ID="studyYear" runat="server" CssClass="css" Width="73px" AppendDataBoundItems="True"  AutoPostBack="True" OnSelectedIndexChanged="studyYear_SelectedIndexChanged" >
                    </asp:DropDownList>
                </td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    学期&nbsp;
                    <asp:DropDownList ID="semester" runat="server" Width="47px" AutoPostBack="True" OnSelectedIndexChanged="semester_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="studyYearMark" runat="server" Text="学年成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="studyYearMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="semesterMark" runat="server" Text="学期成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="semesterMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="passyearMark" runat="server" Text="历年成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="passyearMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="tiptopMark" runat="server" Text=" 课程最高成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="tiptopMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="unpassMark" runat="server" Text="未通过成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="unpassMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="sudent_print" runat="server" Text="成绩打印" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" /></td>
            </tr>
            <tr>
                <td colspan="9" style="height: 410px; vertical-align: top; text-align: left; background-color: #dee9f9;">
                    <table style="width: 1003px; height: 400px" bordercolordark="#003399" bordercolorlight="#6a82dd" border="1" cellpadding="0" cellspacing="0" class="css">
                        <tr>
                            <td style="height: 25px; text-align: center; font-size: 12pt; color: blue; background-color: #dee9f9;" colspan="3">
                                已修课学期成绩查询</td>
                        </tr>
                        <tr style="height:25px">
                            <td style="width: 370px; height: 25px; background-color: #dee9f9;">
                                &nbsp;&nbsp;
                                学号：<asp:Label ID="studyNumber" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #dee9f9;">
                                &nbsp; &nbsp;
                                专业：<asp:Label ID="speciality" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #dee9f9;">
                                &nbsp; &nbsp;
                                教学班：<asp:Label ID="teachedClass" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height:25px">
                            <td style="width: 370px; height: 25px; background-color: #dee9f9;">
                                &nbsp;&nbsp;
                                姓名：<asp:Label ID="studentname" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #dee9f9;">
                                &nbsp; &nbsp;
                                学院：<asp:Label ID="college" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #dee9f9;">
                                &nbsp; &nbsp;
                                行政班：<asp:Label ID="adminClass" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height:325px; vertical-align: top; text-align: left;">
                                &nbsp;&nbsp;
                                <asp:Label ID="search" runat="server" Font-Bold="False" Font-Size="11pt" ForeColor="Red"
                                    Text="请输入你所要搜索信息的条件："></asp:Label>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#3366CC"
                                    BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Size="12px" HorizontalAlign="Center"
                                    Width="1003px" BackColor="White">
                                    <FooterStyle BackColor="#EFEFEF" ForeColor="#003399" />
                                    <Columns>
                                        <asp:BoundField DataField="studyYear" HeaderText="学年" />
                                        <asp:BoundField DataField="semester" HeaderText="学期" />
                                        <asp:BoundField DataField="courseCode" HeaderText="课程代码" />
                                        <asp:BoundField DataField="courseName" HeaderText="课程名称">
                                            <ItemStyle Width="200px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="courseProperty" HeaderText="课程性质" />
                                        <asp:BoundField DataField="creditHour" HeaderText="学分" />
                                        <asp:BoundField DataField="markDot" HeaderText="绩点" />
                                        <asp:BoundField DataField="mark" HeaderText="最高成绩值" />
                                        <asp:BoundField DataField="mark" HeaderText="成绩" />
                                        <asp:BoundField DataField="minorTag" HeaderText="辅修标记" />
                                        <asp:BoundField DataField="makeupMark" HeaderText="补考成绩" />
                                        <asp:BoundField DataField="restudyMark" HeaderText="重修成绩" />
                                        <asp:BoundField DataField="collegeName" HeaderText="学院名称">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="remark" HeaderText="备注" />
                                        <asp:BoundField DataField="restudyTag" HeaderText="重新标记" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <PagerStyle BackColor="#EFEFEF" ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="9" style="height: 50px">
                    <uc4:foot ID="Foot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
