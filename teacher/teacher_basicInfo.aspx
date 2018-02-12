<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_basicInfo.aspx.cs" Inherits="teacher_teacher_basicInfo" %>

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
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
            height: 620px">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:teacher_main ID="Teacher_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="background-image: url(../image/system/main_top_bg.gif)" colspan="3">
                    &nbsp;&nbsp; 信息查询→教工基本信息</td>
            </tr>
            <tr style="height: 435px">
                <td style="vertical-align: top; text-align: center; background-color: #dee9f9;" colspan="3">
                    <br />
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 995px; height: 323px; text-align: left">
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 教工编号：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:Label ID="teacherCode" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 健康状况：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="healthCondition" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 手机电话号码：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="handPhoneNumber" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td rowspan="6" style="width: 163px">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/system/韩老师.jpg" /></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 身份证号：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:Label ID="IDcardNumber" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 学院：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="college" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp;科研方向：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="researchDirection" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 教师姓名：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:Label ID="teacherName" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 职务：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="duty" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 邮箱：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="email" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 曾用名：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="usedName" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 职称：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="technicalpost" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 党团时间：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="partyTime" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 性别：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="sex" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 学历层次：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="educationalLevel" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 家庭所在地</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homeLocus" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 出生日期：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="birthday" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 毕业院校：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="graduateCollege" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp;
                            </td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 民族：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="nation" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 工作起始时间：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="joinTime" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td colspan="3" rowspan="4" style="background-color: #e4ecf3">
                                &nbsp; 备注：<asp:TextBox ID="remark" runat="server" Height="71px" TextMode="MultiLine"
                                    Width="390px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 籍贯：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="nativePlace" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 家庭邮编：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homePostalcode" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 政治面貌：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="politicsVisage" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 家庭电话：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homeTel" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 出生地：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homePlace" runat="server" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 家庭地址：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homeAddress" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="7" style="font-size: 12pt; color: red; height: 25px; text-align: center;
                                text-decoration: underline">
                                &nbsp;如果教工编号、姓名、学院等出现错误，请将相应的信息（）以书面形式送到教务处，申请修改。并注明原来的教工编号、姓名、学院。</td>
                        </tr>
                        <tr>
                            <td colspan="7" style="height: 25px; text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" />
                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="close" runat="server" class="btn3_mouseout"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="关  闭" /></td>
                        </tr>
                    </table>
                    <br />
                    <br />
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
