<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_studentGradeTestMark.aspx.cs" Inherits="student_student_studentGradeTestMark" %>

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
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
            height: 620px">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:student_main ID="Student_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 信息查询→等级考试查询</td>
            </tr>
            <tr style="height: 435px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: left">
                    <asp:Label ID="gradeTestMark" runat="server" Font-Size="11pt" ForeColor="Red"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#003399" CellPadding="3" Width="1003px">
                        <Columns>
                            
                            <asp:BoundField DataField="testName" HeaderText="考试名称" />
                            <asp:BoundField DataField="testStudyYear" HeaderText="考试学年" />
                            <asp:BoundField DataField="testSemester" HeaderText="考试学期">
                                <ItemStyle Width="250px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="testProveCode" HeaderText="准考证号" />
                            <asp:BoundField DataField="mark" HeaderText="成绩" />
                            <asp:BoundField DataField="totalMark" HeaderText="总成绩" />
                        </Columns>
                        <RowStyle ForeColor="#003399" />
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
