<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_evalutionResult.aspx.cs" Inherits="teacher_teacher_evalutionResult" %>

<%@ Register Src="teacher_main.ascx" TagName="teacher_main" TagPrefix="uc1" %>
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
        <table border="0" cellpadding="0" cellspacing="0" style="width: 1003px; height: 620px;">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:teacher_main ID="Teacher_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="background-image: url(../image/system/main_top_bg.gif)" colspan="3">
                    &nbsp;&nbsp; 教学质量评估→查看教学质量评估结果</td>
            </tr>
            <tr style="height: 435px">
                <td style="vertical-align: top; background-color: #dee9f9; text-align: center" colspan="3">
                    <br/>
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
