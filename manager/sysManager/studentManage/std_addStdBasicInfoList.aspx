<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addStdBasicInfoList.aspx.cs" Inherits="manager_sysManager_studentManage_std_addStdBasicInfoList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellspacing="0"
            class="css" style="width: 995px; height: 600px; text-align: left">
            <tr>
                <td style="width: 110px; height: 29px; background-color: #e4ecf3">
                    &nbsp; 学号：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;
                    <asp:Label ID="studyNumber" runat="server" Text="Label"></asp:Label>&nbsp;
                </td>
                <td style="width: 143px; color: #000000; height: 25px; background-color: #e4ecf3">
                    &nbsp; 学生证号：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="stdproveCode" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="stdproveCode"
                        ErrorMessage="学生证号不能为空！">*</asp:RequiredFieldValidator></td>
                <td style="width: 155px; color: #000000; height: 25px; background-color: #e4ecf3">
                    &nbsp; 家庭邮编：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="homePostalcode" runat="server" Width="120px"></asp:TextBox></td>
                <td rowspan="6" style="width: 165px; background-color: #e4ecf3">
                    &nbsp;
                    <asp:Image ID="photo" runat="server" Height="120px" ImageUrl="~/image/student/yi.bmp"
                        Width="83px" /></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 身份证号：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;
                    <asp:Label ID="IDcardNumber" runat="server" Text="Label"></asp:Label>
                    &nbsp;
                </td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 培养方向：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="culitivateDirection" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 家庭电话：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="homeTel" runat="server" Width="120px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 姓名：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;
                    <asp:Label ID="studentName" runat="server" Text="Label"></asp:Label>&nbsp;
                </td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 专业方向：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="specialityDirection" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="specialityDirection"
                        ErrorMessage="专业方向不能为空！">*</asp:RequiredFieldValidator></td>
                <td style="width: 155px; color: #000000; height: 25px; background-color: #e4ecf3">
                    &nbsp; 父亲姓名：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="fatherName" runat="server" Width="120px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 曾用名：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="usedName" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 入学日期：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="entranceDate" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="entranceDate"
                        ErrorMessage="入学日期不能为空！">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="entranceDate"
                        ErrorMessage="您输入的考试日期格式不对！" ValidationExpression="[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2}">*</asp:RegularExpressionValidator></td>
                <td style="width: 155px; color: #000000; height: 25px; background-color: #e4ecf3">
                    &nbsp; 父亲单位：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="fatherWorkplace" runat="server" Width="120px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 性别：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;<asp:DropDownList ID="sex" runat="server" Width="57px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 毕业中学：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="graduateSchool" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 父亲单位邮编：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="fatherPostalcode" runat="server" Width="120px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp;出生日期：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="birthday" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 宿舍号：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="dormitoryCode" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 母亲姓名：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="motherName" runat="server" Width="120px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 民族：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="nation" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 电子邮箱：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="email" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 母亲单位：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="motherWorkplace" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 165px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 籍贯：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="nativePlace" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 电话：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="tel" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="tel"
                        ErrorMessage="电话号码不能为空！">*</asp:RequiredFieldValidator></td>
                <td style="width: 155px; color: #000000; height: 25px; background-color: #e4ecf3">
                    &nbsp; 母亲单位邮编：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="motherPostalcode" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 165px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 政治面貌：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="politicsVisage" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 邮政编码：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="postalCode" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="postalCode"
                        ErrorMessage="邮政编码不能为空！">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="postalCode"
                        ErrorMessage="邮政编码格式不对！" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator></td>
                <td style="width: 155px; color: #000000; height: 25px; background-color: #e4ecf3">
                    &nbsp; 父亲单位电话或手机：</td>
                <td colspan="2" style="height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="fatherTel" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 来源地区：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="fromArea" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="fromArea"
                        ErrorMessage="来源地区不能为空！">*</asp:RequiredFieldValidator></td>
                <td style="width: 143px; color: #000000; height: 25px; background-color: #e4ecf3">
                    &nbsp; 准考证号：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="testproveCode" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 母亲单位手机或电话：</td>
                <td colspan="2" style="height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="motherTel" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 来源省：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="fromProvince" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 学历层次：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="educationalLevel" runat="server" Width="77px">
                        <asp:ListItem>本科</asp:ListItem>
                        <asp:ListItem>研究生</asp:ListItem>
                        <asp:ListItem>博士</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 家庭详细地址：</td>
                <td colspan="2" style="height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="homeAddress" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 出生地：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="homePlace" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 港澳台码：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="gangaotaiCode" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 家庭所在地：</td>
                <td colspan="2" style="height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="homeLocus" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 健康状况：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="healthCondition" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 报道号：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="reportCode" runat="server" Width="120px"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="reportCode"
                        ErrorMessage="报道号不能为空！">*</asp:RequiredFieldValidator></td>
                <td colspan="3" rowspan="6" style="vertical-align: top; color: #000000; background-color: #e4ecf3">
                    备注： &nbsp; &nbsp;
                    <asp:TextBox ID="remark" runat="server" Height="149px" TextMode="MultiLine" Width="411px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 学院：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;<asp:DropDownList ID="college" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="college_SelectedIndexChanged"
                        Width="209px">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td colspan="2" style="height: 25px; background-color: #e4ecf3">
                    &nbsp; 是否高水平运动员：
                    <asp:DropDownList ID="ifathlete" runat="server" Width="69px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>是</asp:ListItem>
                        <asp:ListItem>否</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 系：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="department" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="department"
                        ErrorMessage="系不能为空！">*</asp:RequiredFieldValidator></td>
                <td style="width: 143px; color: #000000; height: 25px; background-color: #e4ecf3">
                    &nbsp; 英语等级：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:DropDownList ID="englishGrade" runat="server" Width="73px">
                        <asp:ListItem>四级</asp:ListItem>
                        <asp:ListItem>六级</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 专业：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;<asp:DropDownList ID="speciality" runat="server" Width="155px">
                        <asp:ListItem>计算机科学与技术</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 英语成绩：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="englishMark" runat="server" Width="120px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="englishMark"
                        ErrorMessage="英语成绩必须是整数！" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator></td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 教学班：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="teachedClass" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="teachedClass"
                        ErrorMessage="教学班不能为空！">*</asp:RequiredFieldValidator></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 录检表码：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="lujianCode" runat="server" Width="120px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 行政班：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="adminClass" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="adminClass"
                        ErrorMessage="行政班不能为空！">*</asp:RequiredFieldValidator></td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 特长：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="strongSuit" runat="server" Width="120px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 学制：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;<asp:DropDownList ID="eductionalSystme" runat="server" Width="69px">
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 党团时间：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="partyTime" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp;出生年月：</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;<asp:TextBox ID="birthYearMonth" runat="server" Width="128px"></asp:TextBox></td>
                <td style="width: 165px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 学习年限：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;<asp:DropDownList ID="studyLength" runat="server" Width="69px">
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 火车目的地：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="trainDestination" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;</td>
                <td style="width: 165px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 学籍状态：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;<asp:DropDownList ID="studyState" runat="server" Width="69px">
                        <asp:ListItem>有</asp:ListItem>
                        <asp:ListItem>无</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 手机类型：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="handphoneStyle" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;</td>
                <td style="width: 165px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 当前所在年级：</td>
                <td style="width: 184px; height: 25px; background-color: #dee9f9">
                    &nbsp;&nbsp;<asp:DropDownList ID="currentlyGrade" runat="server"  Width="78px">
                    </asp:DropDownList>
                </td>
                <td style="width: 143px; height: 25px; background-color: #e4ecf3">
                    &nbsp; 手机号码：</td>
                <td style="width: 183px; height: 25px; background-color: #dee9f9">
                    &nbsp;
                    <asp:TextBox ID="handphoneNumber" runat="server" Width="120px"></asp:TextBox></td>
                <td style="width: 155px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
                <td style="width: 209px; height: 25px; background-color: #dee9f9">
                    &nbsp;</td>
                <td style="width: 165px; height: 25px; background-color: #e4ecf3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="7" style="height: 25px; background-color: #e4ecf3; text-align: center">
                    <asp:Button ID="submit" runat="server" class="btn3_mouseout" OnClick="submit_Click"
                        onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                        onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                        Text="提  交" />
                    &nbsp; &nbsp; &nbsp;
                    <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
