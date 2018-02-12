<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addPunishInfoList.aspx.cs" Inherits="manager_sysManager_studentManage_std_addPunishInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生管理→编辑处罚信息</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 400px">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→编辑处罚信息 &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr style="height: 266px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 225px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 处罚编号：<asp:TextBox ID="punishCode" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp; 学生学号：<asp:TextBox ID="studyNumber" runat="server" BackColor="#DEE9F9" Width="148px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 245px">
                                &nbsp;&nbsp; 身份证号：<asp:TextBox ID="IDcardNumber" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学生姓名：<asp:TextBox ID="studentName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp;行政班： &nbsp;&nbsp;
                                <asp:TextBox ID="adminClass" runat="server" BackColor="#DEE9F9" Width="146px" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 教学班： &nbsp;&nbsp;
                                <asp:TextBox ID="teachedClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
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
                            <td style="width: 245px; height: 25px">
                                &nbsp; 处分名称：<asp:DropDownList ID="punishName" runat="server" Width="108px">
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
                            <td style="width: 245px; height: 25px">
                                &nbsp; 处分原因：<asp:TextBox ID="punishReason" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="punishReason"
                                    ErrorMessage="处分原因不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp; 处分结果：<asp:TextBox ID="punishResult" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="punishResult"
                                    ErrorMessage="处分结果不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 处分日期：<asp:TextBox ID="punishDate" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="punishDate" ErrorMessage="处分日期不能为空！">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="punishDate"
                                        ErrorMessage="您输入的处分日期格式不对！" ValidationExpression="[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2}">*</asp:RegularExpressionValidator>（YYYY-MM-DD：例：2005-12-25）</td>
                            <td colspan="2">
                                &nbsp; 处分单位：<asp:DropDownList ID="punishUnit" runat="server"  Width="327px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 处分学年：<asp:DropDownList ID="punishStudyYear" runat="server"  Width="83px">
                                </asp:DropDownList>
                            </td>
                            <td colspan="2">
                                &nbsp; 处分学期：<asp:DropDownList ID="punishSemester" runat="server" Width="60px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 75px">
                            <td colspan="3">
                                &nbsp; 备注：<asp:TextBox ID="remark" runat="server" BackColor="#DEE9F9" Height="55px"
                                    ReadOnly="True" TextMode="MultiLine" Width="668px"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="edit" runat="server" class="btn3_mouseout" OnClick="edit_Click" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="编  辑" />
                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="submit" runat="server" class="btn3_mouseout"
                                    Enabled="False" OnClick="submit_Click" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" />
                                &nbsp; &nbsp;&nbsp;
                                <input id="Reset2" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" />
                                &nbsp; &nbsp; &nbsp;
                            </td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
            </tr>
            <tr style="height: 50px">
                <td colspan="3">
                    <uc1:std_listFoot ID="Std_listFoot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
