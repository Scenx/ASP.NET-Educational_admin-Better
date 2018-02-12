<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_transmitElectCourseMark.aspx.cs" Inherits="teacher_teacher_transmitElectCourseMark" %>

<%@ Register Src="teacher_main.ascx" TagName="teacher_main" TagPrefix="uc1" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>上传成绩→老师上传选修课成绩</title>
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
                    &nbsp;&nbsp; 上传成绩→老师上传选修课成绩</td>
            </tr>
            <tr style="height: 435px">
                <td style="vertical-align: top; background-color: #dee9f9; text-align: left" colspan="3">
                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
                        height: 75px; background-color: #e4ecf3; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 334px">
                                &nbsp;&nbsp; 教工编号：<asp:Label ID="teacherCode" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 334px">
                                &nbsp; &nbsp;姓名：<asp:Label ID="teacherName" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 334px">
                                &nbsp; &nbsp;
                                学院：<asp:Label ID="college" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 334px">
                                &nbsp;&nbsp; 职称：<asp:Label ID="tecnicalPost" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 334px">
                                &nbsp;&nbsp;
                                学年：<asp:DropDownList ID="studyYear" runat="server">
                                </asp:DropDownList></td>
                            <td style="width: 334px">
                                &nbsp; &nbsp;
                                学期：<asp:DropDownList ID="semester" runat="server" Width="44px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 334px">
                                &nbsp;&nbsp; 课程性质：<asp:DropDownList ID="courseProperty" runat="server" AutoPostBack="True"
                                    Width="80px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>校公共选修课</asp:ListItem>
                                    <asp:ListItem>校公共必修课</asp:ListItem>
                                </asp:DropDownList>说明：校公共必修课（体育）</td>
                            <td style="width: 334px">
                                &nbsp;
                                </td>
                            <td style="width: 334px">
                                &nbsp;
                                </td>
                        </tr>
                    </table>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Size="12px"
                                    HorizontalAlign="Center" Width="1000px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated" AllowPaging="True">
                                    <FooterStyle BackColor="#EFEFEF" ForeColor="#003399" />
                                    <Columns>
                                        <asp:BoundField DataField="studyNumber" HeaderText="学号" />
                                        <asp:BoundField DataField="studentName" HeaderText="姓名" />
                                        <asp:BoundField DataField="courseCode" HeaderText="课程代码" />
                                        <asp:BoundField DataField="courseName" HeaderText="课程名称">
                                            <ItemStyle Width="200px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="courseProperty" HeaderText="课程性质" />
                                        <asp:BoundField DataField="speciality" HeaderText="专业" />
                                        <asp:BoundField DataField="adminClass" HeaderText="行政班">
                                            <ItemStyle Width="120px" />
                                        </asp:BoundField>
                                        
                                        <asp:TemplateField HeaderText="上传成绩"><ItemTemplate>
                                       <asp:LinkButton ID="LinkButton1" runat="server" CommandName="LBClick" ForeColor="Red" Font-Bold="True">上传成绩</asp:LinkButton>
                                        </ItemTemplate></asp:TemplateField>
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <PagerStyle BackColor="#DEE9F9" ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" />
                                    <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                                        NextPageText="下一页" PreviousPageText="上一页" />
                                </asp:GridView>
                    <asp:Label ID="search" runat="server" Font-Size="11pt" ForeColor="Red" Text="请输入您的查询信息："></asp:Label></td>
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
