<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info_collegeGradeMark.aspx.cs" Inherits="manager_sysManager_infomationStat_info_collegeGradeMark" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1004px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; 信息统计→各学院等级考试成绩信息统计</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 996px; height: 75px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 332px">
                                &nbsp;&nbsp;
                                <asp:CheckBox ID="collegeName1" runat="server" Text="学院名称：" />&nbsp;<asp:DropDownList
                                    ID="collegeName" runat="server" Width="152px">
                                </asp:DropDownList></td>
                            <td style="width: 332px">
                                &nbsp;
                                <asp:CheckBox ID="speciality1" runat="server" Text="专业：" />
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="152px">
                                </asp:DropDownList></td>
                            <td style="width: 332px">
                                &nbsp;&nbsp;
                                <asp:CheckBox ID="class1" runat="server" Text="年级：" />
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 332px">
                                &nbsp;&nbsp;
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="学年：" />
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            <td style="width: 332px">
                                &nbsp;
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="学期：" />
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            <td style="width: 332px">
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                &nbsp;&nbsp;
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" />&nbsp; &nbsp; &nbsp;&nbsp;
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
                            <asp:BoundField DataField="IDcardNumber" HeaderText="身份证号">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="studentName" HeaderText="学生姓名" />
                            <asp:BoundField DataField="college" HeaderText="学生学院">
                                <ItemStyle Width="120px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="speciality" HeaderText="学生专业">
                                <ItemStyle Width="120px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="testDate" HeaderText="考试日期" />
                            <asp:BoundField DataField="testTime" HeaderText="考试时间" />
                            <asp:BoundField DataField="testName" HeaderText="考试名称" />
                            <asp:BoundField DataField="testMark" HeaderText="考试成绩" />
                            <asp:BoundField DataField="totalMark" HeaderText="考试总分" />
                            <asp:CommandField EditText="详细信息" HeaderText="详细信息" ShowEditButton="True">
                                <ItemStyle ForeColor="Red" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="删除课程" ShowDeleteButton="True">
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
