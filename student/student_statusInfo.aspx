<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_statusInfo.aspx.cs" Inherits="student_student_statusInfo" %>

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
        <table style="width: 1003px; height: 620px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height :110px">
                <td colspan="3">
                    <uc1:student_main ID="Student_main1" runat="server" />
                </td>
            </tr>
            <tr style="height :25px">
                <td style="background-image: url(../image/system/main_top_bg.gif)" colspan="3">
                    &nbsp;&nbsp; 信息查询→学籍信息查询</td>
            </tr>
            <tr style="height :435px">
                <td style="vertical-align: top; text-align: center; background-color: #dee9f9;" colspan="3">
                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
                        height: 50px; text-align: left; background-color: #e4ecf3;">
                        <tr style="height: 25px">
                            <td style="width: 263px; background-color: #dee9f9">
                                &nbsp;&nbsp;
                                学号：<asp:Label ID="studyNumber" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 263px; background-color: #dee9f9">
                                专业：<asp:Label ID="speciality" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 263px; background-color: #dee9f9">
                                教学班：<asp:Label ID="teachedClass" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 263px; height: 25px; background-color: #dee9f9">
                                &nbsp;&nbsp;
                                姓名：<asp:Label ID="studentname" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 263px; height: 25px; background-color: #dee9f9">
                                学院：<asp:Label ID="college" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 263px; height: 25px; background-color: #dee9f9">
                                行政班：<asp:Label ID="adminClass" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                    </table>
                    <table style="width: 995px; height: 370px; background-color: #dee9f9; text-align: left;" bordercolordark="#003399" bordercolorlight="#6a82dd" border="1" cellpadding="0" cellspacing="0" class="css">
                        <tr style="height: 25px">
                            <td colspan="3" style="font-weight: bold">
                                &nbsp;&nbsp; 所选学分：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                &nbsp;&nbsp; 获得学分：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                &nbsp;&nbsp; 重修学分：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                &nbsp;&nbsp; 正考未通过学分：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 160px">
                            <td style="width: 501.5px; vertical-align: top; text-align: center;">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#003399" CellPadding="2" Width="480px">
                                    <Columns>
                                        <asp:BoundField DataField="course" HeaderText="课程性质" />
                                        <asp:BoundField DataField="creditHourRequire" HeaderText="学分要求" />
                                        <asp:BoundField DataField="obtainCreditHour" HeaderText="获得学分" />
                                        <asp:BoundField DataField="unpassCreditHour" HeaderText="未通过学分" />
                                        <asp:BoundField DataField="restneedCreditHour" HeaderText="还需学分" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" BorderColor="#003399" />
                                </asp:GridView>
                                &nbsp;
                            </td>
                            <td style="width: 501.5px; vertical-align: top; text-align: center;">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#003399" CellPadding="2" Width="480px">
                                    <Columns>
                                        <asp:BoundField DataField="studyYear" HeaderText="学年" />
                                        <asp:BoundField DataField="semester" HeaderText="学期" />
                                        <asp:BoundField DataField="obtainCredit" HeaderText="获得学分" />
                                        <asp:BoundField DataField="unpassCreditHour" HeaderText="未通过学分" />
                                        <asp:BoundField DataField="ifWarn" HeaderText="是否警告" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" BorderColor="#003399" />
                                </asp:GridView>
                                &nbsp;</td>
                        </tr>
                        <tr style="height: 160px">
                            <td style="width: 501.5px; vertical-align: top; text-align: center;">
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#003399" CellPadding="2" Width="480px">
                                    <Columns>
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
                            <td style="width: 501.5px; vertical-align: top; text-align: center;">
                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#003399" CellPadding="2" Width="480px">
                                    <Columns>
                                        <asp:BoundField DataField="ifAllowGraduate" HeaderText="毕业结论" />
                                        <asp:BoundField DataField="diplomaCode" HeaderText="毕业证号" />
                                        <asp:BoundField DataField="degreeStyle" HeaderText="毕业类型" />
                                        <asp:BoundField DataField="degreeProveCode" HeaderText="学位类型" />
                                        <asp:BoundField DataField="graduateNotion" HeaderText="毕业审核类型" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" BorderColor="#003399" />
                                </asp:GridView>
                                &nbsp; &nbsp;&nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="font-weight: bold">
                                &nbsp;&nbsp; 本专业共：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>人
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;平均学分绩点：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;学分绩点总和：<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height :50px">
                <td colspan="3" style="height: 39px">
                    <uc2:foot ID="Foot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
