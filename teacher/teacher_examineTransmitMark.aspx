<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_examineTransmitMark.aspx.cs" Inherits="teacher_teacher_examineTransmitMark" %>

<%@ Register Src="teacher_main.ascx" TagName="teacher_main" TagPrefix="uc1" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
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
                <td colspan="3" style="height: 110px">
                    <uc1:teacher_main ID="Teacher_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 上传成绩→查看上传成绩</td>
            </tr>
            <tr style="height: 435px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table id="TABLE1" border="0" cellpadding="0" cellspacing="0" class="css" onclick="return TABLE1_onclick()"
                        style="width: 1003px; height: 150px; background-color: #e4ecf3; text-align: left">
                        
                        <tr>
                            <td style="width: 334px">
                                &nbsp;&nbsp;<asp:CheckBox ID="courseName1" runat="server" Text="   课程名：" />
                                &nbsp;&nbsp; &nbsp;<asp:TextBox ID="courseName" runat="server" Width="200px"></asp:TextBox></td>
                            <td style="width: 334px">
                                <asp:CheckBox ID="courseCode1" runat="server" Text="   课程编号：" />
                                <asp:TextBox ID="courseCode" runat="server" Width="200px"></asp:TextBox></td>
                            <td style="width: 334px">
                                <asp:CheckBox ID="transmitDate1" runat="server" Text="上传时间：" />
                                &nbsp;
                                <asp:TextBox ID="transmitDate" runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 334px">
                                &nbsp;&nbsp;<asp:CheckBox ID="studyYear1" runat="server" Text=" 学年：" />
                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:TextBox ID="studyYear" runat="server" Width="200px"></asp:TextBox></td>
                            <td style="width: 334px">
                                <asp:CheckBox ID="semester1" runat="server" Text="  学期：" />
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <asp:TextBox ID="semester" runat="server" Width="200px"></asp:TextBox></td>
                            <td style="width: 334px">
                                <asp:CheckBox ID="studyNumber1" runat="server" Text="  学生学号：" />
                                <asp:TextBox ID="studyNumber" runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 334px; height: 25px">
                                &nbsp;&nbsp;<asp:CheckBox ID="studentName1" runat="server" Text="  学生姓名：" />
                                <asp:TextBox ID="studentName" runat="server" Width="200px"></asp:TextBox></td>
                            <td style="width: 334px; height: 25px">
                                <asp:CheckBox ID="teachedClass1" runat="server" Text="  教学班：" />
                                &nbsp; &nbsp;
                                <asp:TextBox ID="teachedClass" runat="server" Width="200px"></asp:TextBox></td>
                            <td style="width: 334px; height: 25px">
                                <asp:CheckBox ID="adminClass1" runat="server" Text="  行政班：" />
                                &nbsp; &nbsp;
                                <asp:TextBox ID="adminClass" runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="vertical-align: middle; height: 25px; text-align: left">
                                &nbsp; 学生成绩：<asp:CheckBox ID="ninety" runat="server" Text="90分以上" />
                                &nbsp; &nbsp;
                                <asp:CheckBox ID="eighty" runat="server" Text="80分以上" />
                                &nbsp; &nbsp;
                                <asp:CheckBox ID="seventy" runat="server" Text="70分以上" />
                                &nbsp;&nbsp; &nbsp;<asp:CheckBox ID="sixty" runat="server" Text="60分以上" />
                                &nbsp;&nbsp; &nbsp;&nbsp;<asp:CheckBox ID="unpass" runat="server" Text="不及格" /></td>
                            <td style="width: 334px; height: 26px">
                                <asp:CheckBox ID="speciality1" runat="server" Text="  专业：" />
                                &nbsp; &nbsp; &nbsp;&nbsp;
                                <asp:TextBox ID="speciality" runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 25px; text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" />
                                &nbsp; &nbsp; &nbsp;&nbsp;
                                <asp:Button ID="reset" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="重  置" /></td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Size="12px"
                        HorizontalAlign="Center" Width="1003px">
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
