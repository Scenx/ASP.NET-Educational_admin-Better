<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addPoorStdInfo.aspx.cs" Inherits="manager_sysManager_studentManage_std_addPoorStdInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height:25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→添加贫困生信息</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 400px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学生学号：<asp:TextBox ID="studyNumber" runat="server" Width="101px"></asp:TextBox><asp:Button
                                    ID="infoExport" runat="server" class="btn3_mouseout" EnableViewState="False"
                                    OnClick="infoExport_Click" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="信息导入" Width="55px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="studyNumber"
                                    ErrorMessage="学生学号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 身份证号：<asp:TextBox ID="IDcardNumber" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生姓名：<asp:TextBox ID="studentName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学院名称：<asp:TextBox ID="college" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生专业：<asp:TextBox ID="speciality" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生年级：<asp:TextBox ID="grade" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学生性别：<asp:TextBox ID="sex" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 出生年月：<asp:TextBox ID="birthday" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; vertical-align: top; text-align: left;" rowspan="5">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/student/yi.bmp" />
                                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2" style="height: 25px">
                                &nbsp; 毕业中学：<asp:TextBox ID="graduateSchool" runat="server" Width="389px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="graduateSchool"
                                    ErrorMessage="毕业中学不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2">
                                &nbsp; 家庭详细住址：&nbsp;
                                <asp:TextBox ID="homeAddress" runat="server" Width="357px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="homeAddress"
                                    ErrorMessage="家庭地址不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 家庭人口：<asp:TextBox ID="totalPopulation" runat="server" BackColor="#DEE9F9" Width="94px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="totalPopulation"
                                    ErrorMessage="学生学号不能为空！">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator2" runat="server"
                                    ErrorMessage="年收入请输入整数数据！" Operator="DataTypeCheck" Type="Integer" ControlToValidate="totalPopulation">*</asp:CompareValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="totalPopulation"
                                    ErrorMessage="您填写的家庭人口数值太大！" MaximumValue="10" MinimumValue="0" Type="Integer">*</asp:RangeValidator></td>
                            <td style="width: 245px">
                                年收入：<asp:TextBox ID="yearIncome" runat="server" BackColor="#DEE9F9" Width="56px"></asp:TextBox>
                                元
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="yearIncome"
                                    ErrorMessage="年收入不能为空！">*</asp:RequiredFieldValidator>&nbsp;
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="yearIncome"
                                    ErrorMessage="您填写的年收入数值太大！" MaximumValue="20000" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="yearIncome"
                                    ErrorMessage="年收入请输入整数数据！" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2">
                                &nbsp; 收入来源：<asp:CheckBox ID="farm" runat="server" Text="务农" ValidationGroup="source" />
                                <asp:CheckBox ID="dagong" runat="server" Text="打工" ValidationGroup="source" />
                                <asp:CheckBox ID="other" runat="server" Text="其他" AutoPostBack="True" OnCheckedChanged="other_CheckedChanged" />
                                &nbsp; &nbsp;<asp:TextBox ID="otherSource" runat="server" Width="240px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="otherSource"
                                    ErrorMessage="其他收入不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2">
                                &nbsp; 邮政编码：<asp:TextBox ID="postalCode" runat="server" Width="150px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="postalCode"
                                    ErrorMessage="邮政编码不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="postalCode"
                                    ErrorMessage="邮政编码格式不正确！" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>&nbsp;&nbsp;
                                &nbsp; &nbsp; &nbsp; 人均收入：<asp:TextBox ID="averageIncome" runat="server" BackColor="#DEE9F9"
                                    Width="50px" ReadOnly="True"></asp:TextBox>
                                元
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="averageIncome"
                                    ErrorMessage="人均收入不能为空！">*</asp:RequiredFieldValidator>&nbsp;
                                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="averageIncome"
                                    ErrorMessage="您填写的人均收入数值太大！" MaximumValue="5000" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
                                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="averageIncome"
                                    ErrorMessage="人均收入请输入整数数据！" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator></td>
                            <td style="width: 245px; text-align: center;">
                                &nbsp; 
                                <asp:Button ID="fileUp" runat="server" Text="上  传" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Enabled="False" EnableTheming="True"/>
                                &nbsp; &nbsp;
                                <asp:Button ID="delete" runat="server" Text="清  除" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Enabled="False"/></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 监护人（或父母）姓名：<asp:TextBox ID="keeper1Name" runat="server" Width="80px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="postalCode"
                                    ErrorMessage="监护人姓名不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 与学生关系：<asp:TextBox ID="relation1" runat="server" BackColor="#DEE9F9" Width="97px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="relation1"
                                    ErrorMessage="学生关系不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 身份证号码：<asp:TextBox ID="keeper1IDcardNumber" runat="server" BackColor="#DEE9F9" Height="16px" Width="140px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="keeper1IDcardNumber"
                                    ErrorMessage="邮政编码不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="keeper1IDcardNumber"
                                    ErrorMessage="身份证号码格式不对！" ValidationExpression="\d{17}[\d|X]|\d{15}">*</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2">
                                &nbsp; 家庭地址：&nbsp;
                                <asp:TextBox ID="keeper1Address" runat="server" Width="380px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="keeper1Address"
                                    ErrorMessage="家庭地址不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 固话 / 手机：<asp:TextBox ID="keeper1Tel" runat="server" Width="140px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="keeper1Tel"
                                    ErrorMessage="固话/手机不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 监护人（或父母）姓名：<asp:TextBox ID="keeper2Name" runat="server" Width="80px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="keeper2Name"
                                    ErrorMessage="监护人姓名不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 与学生关系：<asp:TextBox ID="relation2" runat="server" BackColor="#DEE9F9" Width="94px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="relation2"
                                    ErrorMessage="与学生的关系不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 身份证号码：<asp:TextBox ID="keeper2IDcardNumber" runat="server" BackColor="#DEE9F9" Width="140px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="keeper2IDcardNumber"
                                    ErrorMessage="身份证不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="keeper2IDcardNumber"
                                    ErrorMessage="身份证格式不正确！" ValidationExpression="\d{17}[\d|X]|\d{15}">*</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="2">
                                &nbsp; 家庭地址：&nbsp;
                                <asp:TextBox ID="keeper2Address" runat="server" Width="380px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="keeper2Address"
                                    ErrorMessage="家庭地址为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp; 固话 / 手机：<asp:TextBox ID="keeper2Tel" runat="server" Width="141px" BackColor="#DEE9F9"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="keeper2Tel"
                                    ErrorMessage="固话 /手机不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 75px">
                            <td colspan="3">
                                &nbsp; 备注：<asp:TextBox ID="remark" runat="server" Height="55px" TextMode="MultiLine"
                                    Width="660px" BackColor="#DEE9F9"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" Enabled="False" OnClick="submit_Click" />
                                &nbsp; &nbsp;&nbsp;
                                <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
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
