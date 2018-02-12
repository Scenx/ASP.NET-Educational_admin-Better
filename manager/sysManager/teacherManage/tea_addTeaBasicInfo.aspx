<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea_addTeaBasicInfo.aspx.cs" Inherits="manager_sysManager_teacherManage_tea_addTeaBasicInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加教师基本信息</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; 教师管理→教师基本信息管理→添加教师基本信息</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center; height: 455px;">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 995px; height: 300px; text-align: left">
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 教工编号：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="teacherCode" runat="server" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="teacherCode"
                                    ErrorMessage="教工编号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 健康状况：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="healthCondition" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 手机电话号码：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="handPhoneNumber" runat="server" Width="120px"></asp:TextBox></td>
                            <td rowspan="6" style="width: 163px">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/system/韩老师.jpg" /></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 身份证号：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="IDcardNumber" runat="server" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="IDcardNumber"
                                    ErrorMessage="身份证号不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="IDcardNumber"
                                    ErrorMessage="身份证号格式不对！" ValidationExpression="\d{17}[\d|X]|\d{15}">*</asp:RegularExpressionValidator></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 学院：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="college" runat="server" AutoPostBack="True"
                                    
                                    Width="209px">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp;科研方向：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="researchDirection" runat="server" Width="120px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 教师姓名：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="teacherName" runat="server" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="teacherName"
                                    ErrorMessage="教师姓名不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 职务：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="duty" runat="server" Width="122px"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 邮箱：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="email" runat="server" ReadOnly="True" Width="120px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 曾用名：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="usedName" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 职称：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="technicalpost" runat="server" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="technicalpost"
                                    ErrorMessage="教师职称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 入党时间：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="partyTime" runat="server" Width="120px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 性别：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:DropDownList ID="sex" runat="server" Width="60px">
                                    <asp:ListItem>男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 学历层次：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:DropDownList ID="educationalLevel" runat="server" Width="85px">
                                    <asp:ListItem>本科</asp:ListItem>
                                    <asp:ListItem>研究生</asp:ListItem>
                                    <asp:ListItem>博士</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 家庭所在地：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homeLocus" runat="server" Width="120px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 出生日期：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="birthday" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 毕业院校：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="graduateCollege" runat="server"></asp:TextBox>&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="graduateCollege"
                                    ErrorMessage="毕业院校不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp;
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="100px" /></td>
                            <td style="width: 165px; height: 25px; text-align: center;">
                                &nbsp;
                                <asp:Button ID="transmit" runat="server" Text="上  传" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Enabled="False"/>
                                &nbsp;&nbsp;
                                <asp:Button ID="delete" runat="server" Text="删  除" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Enabled="False"/></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 民族：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="nation" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 工作起始时间：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="joinTime" runat="server"></asp:TextBox></td>
                            <td colspan="3" rowspan="4" style="background-color: #e4ecf3">
                                &nbsp; 备注：<asp:TextBox ID="remark" runat="server" Height="71px" TextMode="MultiLine"
                                    Width="390px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 籍贯：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="nativePlace" runat="server" Width="120px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="nativePlace"
                                    ErrorMessage="教师籍贯不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 家庭邮编：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homePostalcode" runat="server"></asp:TextBox>&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="homePostalcode"
                                    ErrorMessage="家庭邮政编码不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="homePostalcode"
                                    ErrorMessage="邮政编码格式不对！" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 政治面貌：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;&nbsp;
                                <asp:DropDownList ID="politicsVisage" runat="server" Width="92px">
                                    <asp:ListItem>党员</asp:ListItem>
                                    <asp:ListItem>团员</asp:ListItem>
                                    <asp:ListItem>民主党派</asp:ListItem>
                                    <asp:ListItem>无党派人士</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 家庭电话：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homeTel" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 出生地：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homePlace" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width: 110px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 家庭地址：</td>
                            <td style="width: 165px; height: 25px">
                                &nbsp;
                                <asp:TextBox ID="homeAddress" runat="server"></asp:TextBox></td>
                        </tr>
                        
                        <tr>
                            <td colspan="7" style="height: 25px; text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" />
                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="close" runat="server" class="btn3_mouseout"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="关  闭" /></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
