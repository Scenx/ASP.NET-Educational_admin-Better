<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info_collegePoorStd.aspx.cs" Inherits="manager_sysManager_infomationStat_info_collegePoorStd" %>
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
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; 信息统计→各学院贫困生信息统计</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="vertical-align: middle;
                        width: 740px; height: 420px">
                        <tr style="height:40px">
                            <td style="width: 40px; height: 40px;">
                                <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/image/system/serch.gif"
                                    Width="40px" /></td>
                            <td style="width: 120px; height: 40px;">
                                &nbsp;快速搜索：</td>
                            <td style="width :210px; height: 40px;">
                                <asp:RadioButton ID="studyNumber1" runat="server" Checked="True" GroupName="kuai" Text="学号" />
                                <asp:TextBox ID="studyNumber2" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width :210px; height: 40px;">
                                <asp:RadioButton ID="IDcardNumber1" runat="server" GroupName="kuai" Text="身份证号" /><asp:TextBox
                                    ID="IDcardNumber2" runat="server" Width="120px"></asp:TextBox></td>
                            <td style="width :60px; height: 40px;">
                                <asp:Button ID="fastSearch" runat="server" Text="搜 索" Width="58px" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" OnClick="fastSearch_Click"/></td>
                            <td style="width :100px; height: 40px;">
                                <asp:LinkButton ID="hignSearch1" runat="server" Font-Bold="False" Font-Italic="False"
                                    Font-Size="11pt" ForeColor="Blue" Width="93px" OnClick="hignSearch1_Click">【高级搜索】</asp:LinkButton></td>
                        </tr>
                        <tr style="height: 380px">
                            <td colspan="6" rowspan="2" style="vertical-align: top">
                                <asp:Panel ID="Panel1" runat="server" Height="360px" Width="735px" BorderStyle="Inset" Visible="False">
                                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 735px;
                                        height: 100px; text-align: left;">
                                        <tr style="height: 40px">
                                            <td style="font-size: 11pt; color: blue; text-align: center" colspan="3">
                                                各学院贫困生信息统计 高级搜索</td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;&nbsp;<asp:CheckBox ID="studyNumber3" runat="server" Text="学生学号：" /><asp:TextBox
                                                    ID="studyNumber4" runat="server" Width="120px"></asp:TextBox></td>
                                            <td style="width: 245px">
                                                <asp:CheckBox ID="IDcardNumber3" runat="server" Text="身份证号：" /><asp:TextBox ID="IDcardNumber4"
                                                    runat="server" Width="120px"></asp:TextBox></td>
                                            <td style="width: 245px">
                                                &nbsp;<asp:CheckBox ID="studentName1" runat="server" Text="学生姓名：" /><asp:TextBox
                                                    ID="studentName" runat="server" Width="108px"></asp:TextBox></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td colspan="2">
                                                &nbsp;
                                                <asp:CheckBox ID="college1" runat="server" Checked="True" Enabled="False" Text="学生学院：" /><asp:DropDownList
                                                    ID="college" runat="server" AutoPostBack="True" s OnSelectedIndexChanged="college_SelectedIndexChanged"
                                                    Width="365px">
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 245px">
                                                &nbsp;<asp:CheckBox ID="grade1" runat="server" Checked="True" Enabled="False" Text="学生年级：" /><asp:DropDownList
                                                    ID="grade" runat="server"  Width="91px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;
                                                <asp:CheckBox ID="speciality1" runat="server" Text="学生专业：" /><asp:DropDownList ID="speciality"
                                                    runat="server" Width="152px">
                                                </asp:DropDownList></td>
                                            <td colspan="2">
                                                家庭人口数：<asp:RadioButton ID="three" runat="server" Text="少于等于3人" GroupName="popu" />
                                                <asp:RadioButton ID="seven" runat="server" Text="4—7人" GroupName="popu" />
                                                <asp:RadioButton ID="eight" runat="server" Text="多余等于8人" GroupName="popu" />
                                                <asp:RadioButton ID="exactitudePopulation1" runat="server" Text="精确数目：" GroupName="popu" AutoPostBack="True" />
                                                <asp:TextBox ID="exactitudePopulation" runat="server" Width="50px"></asp:TextBox>
                                                人<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="家庭人口总数必须是整数！"
                                                    Operator="DataTypeCheck" Type="Integer" ControlToValidate="exactitudePopulation">*</asp:CompareValidator></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;
                                                <asp:CheckBox ID="incomeSource1" runat="server" Text="输入来源：" /><asp:DropDownList ID="incomeSource"
                                                    runat="server" Width="69px">
                                                    <asp:ListItem>打工</asp:ListItem>
                                                    <asp:ListItem>务农</asp:ListItem>
                                                    <asp:ListItem>其他</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td colspan="2">
                                                年输入总数：<asp:RadioButton ID="twoThousand" runat="server" Text="<=2000 元" GroupName="income" /><asp:RadioButton ID="thirdThousand" runat="server" Text="2000～4000元" GroupName="income" /><asp:RadioButton ID="fourThousand" runat="server" Text=">=4000元" GroupName="income" />
                                                &nbsp;
                                                <asp:RadioButton ID="exactitudeYearIncome1" runat="server" Text="精确数目：" GroupName="income" />
                                                <asp:TextBox ID="exactitudeYearIncome" runat="server" Width="50px"></asp:TextBox>
                                                元<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="exactitudeYearIncome"
                                                    ErrorMessage="年收入数目必须是整数！" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;
                                                <asp:CheckBox ID="postalCode1" runat="server" Text="邮政编码：" /><asp:TextBox ID="postalCode" runat="server" Width="120px"></asp:TextBox></td>
                                            <td colspan="2"><asp:CheckBox ID="graduateSchool1" runat="server" Text="毕业中学：" />
                                                <asp:TextBox ID="graduateSchool" runat="server" Width="356px"></asp:TextBox></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td colspan="2">
                                                &nbsp;
                                                <asp:CheckBox ID="homeAddress1" runat="server" Text="家庭地址：" /><asp:TextBox ID="homeAddress" runat="server" Width="386px"></asp:TextBox></td>
                                            <td style="width: 245px">
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="text-align: center;" colspan="3">
                                                <asp:Button ID="submit" runat="server" Text="提  交" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" OnClick="submit_Click"/>
                                                &nbsp; &nbsp; &nbsp;
                                                <input id="Reset1" class="btn3_mouseout" onclick="return Reset1_onclick()" onmousedown="this.className='btn3_mousedown'"
                                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
                                        </tr>
                                    </table>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                    <asp:Label ID="highNumber" runat="server" Text="0" Visible="False"></asp:Label></td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
