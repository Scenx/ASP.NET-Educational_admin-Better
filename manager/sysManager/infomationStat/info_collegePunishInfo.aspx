<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info_collegePunishInfo.aspx.cs" Inherits="manager_sysManager_infomationStat_info_collegePunishInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>信息统计→各学院获受处罚学生信息统计</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; 信息统计→各学院获受处罚学生信息统计</td>
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
                                &nbsp;<asp:Panel ID="Panel1" runat="server" BorderStyle="Inset" Height="360px" Width="735px">
                                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 735px;
                                        height: 100px; text-align: left">
                                        <tr style="height: 40px">
                                            <td colspan="3" style="font-size: 11pt; color: blue; text-align: center">
                                                各学院获受处罚信息学生统计 高级搜索</td>
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
                                                    ID="college" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="college_SelectedIndexChanged"
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
                                                <asp:CheckBox ID="punishResult1" runat="server" Text="处分结果：" /><asp:TextBox ID="punishResult"
                                                    runat="server" Width="341px"></asp:TextBox></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;
                                                <asp:CheckBox ID="punishName1" runat="server" Text="处分名称：" />
                                                <asp:DropDownList ID="punishName" runat="server" Width="108px">
                                                    <asp:ListItem>系内警告</asp:ListItem>
                                                    <asp:ListItem>系内记过</asp:ListItem>
                                                    <asp:ListItem>系内严重警告</asp:ListItem>
                                                    <asp:ListItem>校内警告</asp:ListItem>
                                                    <asp:ListItem>校内记过</asp:ListItem>
                                                    <asp:ListItem>校内严重警告</asp:ListItem>
                                                    <asp:ListItem>留校查看</asp:ListItem>
                                                    <asp:ListItem>取消学位</asp:ListItem>
                                                    <asp:ListItem>劝其退学</asp:ListItem>
                                                    <asp:ListItem>勒令退学</asp:ListItem>
                                                    <asp:ListItem>开除学籍</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td colspan="2">
                                                <asp:CheckBox ID="punishUnit1" runat="server" Text="处分单位：" /><asp:DropDownList
                                                    ID="punishUnit" runat="server"  Width="351px">
                                                </asp:DropDownList><br />
                                                &nbsp;</td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px; height: 25px">
                                                &nbsp;&nbsp;
                                                <asp:CheckBox ID="punishReason1" runat="server" Text="处分原因：" /><asp:TextBox ID="punishReason"
                                                    runat="server"></asp:TextBox>
                                                </td>
                                            <td style="width: 245px; height: 25px">
                                                <asp:CheckBox ID="punishDate1" runat="server" Text="处分日期：" /><asp:TextBox ID="punishDate"
                                                    runat="server" Width="140px"></asp:TextBox><asp:RegularExpressionValidator
                                                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="punishDate"
                                                        ErrorMessage="您输入的奖学金日期格式不对！" ValidationExpression="[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2}">*</asp:RegularExpressionValidator>（YYYY-MM-DD：例：2005-12-25）</td>
                                            <td style="width: 245px; height: 25px">
                                                </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td style="width: 245px">
                                                &nbsp;
                                                <asp:CheckBox ID="punishStudyYear1" runat="server" Text="处分学年：" /><asp:DropDownList
                                                    ID="punishStudyYear" runat="server"  Width="83px">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 245px">
                                                <asp:CheckBox ID="punishSemester1" runat="server" Text="处分学期：" />
                                                <asp:DropDownList ID="punishSemester" runat="server" Width="60px">
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 245px">
                                                &nbsp;</td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td colspan="3" style="text-align: center">
                                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" />
                                                &nbsp; &nbsp; &nbsp;
                                                <input id="Reset2" class="btn3_mouseout" onclick="return Reset1_onclick()" onmousedown="this.className='btn3_mousedown'"
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
