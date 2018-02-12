<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_basicInfo.aspx.cs" Inherits="student_student_basicInfo" %>

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
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
            height: 935px">
            <tr>
                <td colspan="3" style="height: 110px">
                    <uc1:student_main ID="Student_main1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 25px; background-image: url(../image/system/main_top_bg.gif); color: black;">
                    &nbsp;&nbsp; 信息查询→个人基本信息查询</td>
            </tr>
            <tr>
                <td colspan="3" style="height: 750px; vertical-align: top; text-align: center; background-color: #dee9f9;">&nbsp;
                    <table style="width: 995px; height: 600px; text-align: left;" border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellspacing="0" class="css">
                        <tr>
                            <td style="height: 29px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                学号：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:Label ID="studyNumber" runat="server" Text="Label"></asp:Label></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                学生证号：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="stdproveCode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                家庭邮编：</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="homePostalcode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td rowspan="6" style="width: 165px; background-color: #e4ecf3">
                                &nbsp;
                                <asp:Image ID="photo" runat="server" Height="120px" ImageUrl="~/image/student/yi.bmp" Width="83px" /></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                身份证号：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:Label ID="IDcardNumber" runat="server" Text="Label"></asp:Label></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                培养方向：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="culitivateDirection" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                家庭电话：</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="homeTel" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="background-color: #e4ecf3; width: 110px; height: 25px;">
                                &nbsp;
                                姓名：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:Label ID="studentName" runat="server" Text="Label"></asp:Label></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                专业方向：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="specialityDirection" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                父亲姓名：</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="fatherName" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                曾用名：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="usedName" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                入学日期：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="entranceDate" runat="server" Width="120px" ReadOnly="True"></asp:TextBox>&nbsp;</td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                父亲单位：</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="fatherWorkplace" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                性别：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="sex" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                毕业中学：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="graduateSchool" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                父亲单位邮编：</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="fatherPostalcode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;出生日期：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="birthday" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                宿舍号：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="dormitoryCode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                母亲姓名：</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="motherName" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                民族：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="nation" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                电子邮箱：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="email" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                母亲单位：</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="motherWorkplace" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 165px; height: 25px;">
                                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="150px" /></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                籍贯：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="nativePlace" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                电话：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="tel" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                母亲单位邮编：</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="motherPostalcode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 165px; height: 25px; text-align: center;">
                                &nbsp;<asp:Button ID="transmit" runat="server" Text="上  传" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Enabled="False"/>
                                &nbsp; &nbsp; &nbsp;<asp:Button ID="delete" runat="server" Text="清  除" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Enabled="False"/></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                政治面貌：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="politicsVisage" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                邮政编码：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="postalCode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                父亲单位电话或手机：</td>
                            <td style="background-color: #dee9f9; height: 25px;" colspan="2">
                                &nbsp;
                                <asp:TextBox ID="fatherTel" runat="server" Width="250px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                来源地区：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="fromArea" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                准考证号：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="testproveCode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                母亲单位手机或电话：</td>
                            <td style="background-color: #dee9f9; height: 25px;" colspan="2">
                                &nbsp;
                                <asp:TextBox ID="motherTel" runat="server" Width="250px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                来源省：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="fromProvince" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                学历层次：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="educationalLevel" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                家庭详细地址：</td>
                            <td style="background-color: #dee9f9; height: 25px;" colspan="2">
                                &nbsp;
                                <asp:TextBox ID="homeAddress" runat="server" Width="250px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                出生地：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="homePlace" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                港澳台码：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="gangaotaiCode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;
                                家庭所在地：</td>
                            <td style="background-color: #dee9f9; height: 25px;" colspan="2">
                                &nbsp;
                                <asp:TextBox ID="homeLocus" runat="server" Width="250px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                健康状况：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="healthCondition" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                报道号：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="reportCode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; vertical-align: top;" colspan="3" rowspan="6">
                                备注： &nbsp; &nbsp;
                                <asp:TextBox ID="remark" runat="server" Height="149px" TextMode="MultiLine" Width="411px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                学院：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="college" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; height: 25px;" colspan="2">
                                &nbsp;
                                是否高水平运动员：
                                <asp:TextBox ID="ifathlete" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                系：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="department" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                英语等级：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="englishGrade" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                专业：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="speciality" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                英语成绩：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="englishMark" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                教学班：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="teachedClass" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                录检表码：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="lujianCode" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                行政班：</td>
                            <td style="height: 25px; background-color: #dee9f9; width: 181px;">
                                &nbsp;
                                <asp:TextBox ID="adminClass" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="height: 25px; background-color: #e4ecf3; width: 143px;">
                                &nbsp;
                                特长：</td>
                            <td style="height: 25px; background-color: #dee9f9; width: 183px;">
                                &nbsp;
                                <asp:TextBox ID="strongSuit" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                学制：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="eductionalSystme" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                党团时间：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="partyTime" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;</td>
                            <td style="background-color: #e4ecf3; width: 165px; height: 25px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                学习年限：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="studyLength" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                火车目的地：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="trainDestination" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;</td>
                            <td style="background-color: #e4ecf3; width: 165px; height: 25px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                学籍状态：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="studyState" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                手机类型：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="handphoneStyle" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;</td>
                            <td style="background-color: #e4ecf3; width: 165px; height: 25px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #e4ecf3; width: 110px;">
                                &nbsp;
                                当前所在年级：</td>
                            <td style="background-color: #dee9f9; width: 181px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="currentlyGrade" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 143px; height: 25px;">
                                &nbsp;
                                手机号码：</td>
                            <td style="background-color: #dee9f9; width: 183px; height: 25px;">
                                &nbsp;
                                <asp:TextBox ID="handphoneNumber" runat="server" Width="120px" ReadOnly="True"></asp:TextBox></td>
                            <td style="background-color: #e4ecf3; width: 155px; height: 25px;">
                                &nbsp;</td>
                            <td style="background-color: #dee9f9; width: 209px; height: 25px;">
                                &nbsp;</td>
                            <td style="background-color: #e4ecf3; width: 165px; height: 25px;">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table style="width: 995px; height: 25px; text-align: left;" border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellspacing="0" class="css">
                        <tr>
                            <td style="height: 32px; font-size: 12pt; color: red; text-align: center; text-decoration: underline;" colspan="3" rowspan="3">
                                如果学号、姓名、专业出现错误，请将相应的信息（）以书面形式送到教务处，申请修改。并注明原来的学号、姓名、学院。</td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                    <table style="width: 995px; height: 25px" border="1" cellpadding="0" bordercolordark="#003399" bordercolorlight="#6a82dd" cellspacing="0" class="css">
                    
                        <tr>
                            <td style="height: 32px" colspan="3" rowspan="3" >
                                <asp:Button ID="submit" runat="server" Text="提  交"  class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"
 />
                                &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="close" runat="server" Text="关  闭" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"
/></td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 50px">
                    <uc2:foot ID="Foot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
