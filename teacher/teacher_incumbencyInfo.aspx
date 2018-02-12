<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_incumbencyInfo.aspx.cs" Inherits="teacher_teacher_incumbencyInfo" %>

<%@ Register Src="teacher_main.ascx" TagName="teacher_main" TagPrefix="uc1" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>老师在职信息</title>
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
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
            height: 620px">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:teacher_main ID="Teacher_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="background-image: url(../image/system/main_top_bg.gif)" colspan="3">
                    &nbsp;&nbsp; 信息查询→教工在职信息</td>
            </tr>
            <tr style="height: 435px">
                <td style="vertical-align: top; background-color: #dee9f9; text-align: center" colspan="3">
                    <table style="width: 1003px; height: 50px; text-align: left; background-color: #e4ecf3;" border="0" cellpadding="0" cellspacing="0" class="css">
                        <tr style="height:25px">
                            <td style="width: 334px">
                                &nbsp;&nbsp; 教工编号：<asp:Label ID="teacherCode" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 334px">
                                姓名：<asp:Label ID="teacherName" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 334px">
                                学院：<asp:Label ID="college" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height:25px">
                            <td style="width: 334px">
                                &nbsp;&nbsp; 职称：<asp:Label ID="technicalPost" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 334px">
                                学年：<asp:DropDownList ID="studyYear" runat="server">
                                </asp:DropDownList></td>
                            <td style="width: 334px">
                                学期：<asp:DropDownList ID="semester" runat="server" Width="68px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                    </table>
                    <br />
                    <table border="1" cellpadding="0" cellspacing="0" bordercolordark="#003399" bordercolorlight="#6a82dd" class="css" style="width: 995px;
                        height: 194px">
                        <tr>
                            <td rowspan="3" style="width: 502px; vertical-align: top; text-align: center;">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#003399" CellPadding="2" Width="480px">
                                    <Columns>
                                        <asp:BoundField DataField="technicalpost" HeaderText="职称" />
                                        <asp:BoundField DataField="ifExcellence" HeaderText="是否优秀教师" />
                                        <asp:BoundField DataField="excellenceTimes" HeaderText="获奖次数" />
                                        <asp:BoundField DataField="excellenceTime" HeaderText="获奖时间" />
                                        <asp:BoundField DataField="excellenceReason" HeaderText="获奖事由" />
                                        <asp:BoundField DataField="excellenceName" HeaderText="获奖名称" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" BorderColor="#003399" />
                                </asp:GridView>
                                &nbsp;
                            </td>
                            <td colspan="2" rowspan="3" style="width: 502px; vertical-align: top; text-align: center;">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#003399" CellPadding="2" Width="480px">
                                    <Columns>
                                        <asp:BoundField DataField="ifPunish" HeaderText="是否处分" />
                                        <asp:BoundField DataField="punishReason" HeaderText="处分原因" />
                                        <asp:BoundField DataField="punishResult" HeaderText="处分结果" />
                                        <asp:BoundField DataField="punishDate" HeaderText="处分日期" />
                                        <asp:BoundField DataField="punishUnit" HeaderText="处分单位" />
                                        <asp:BoundField DataField="unchainPunishDate" HeaderText="解除处分日期" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" BorderColor="#003399" />
                                </asp:GridView>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
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
