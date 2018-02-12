<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addGradeTestSignUpInfoList.aspx.cs" Inherits="manager_sysManager_studentManage_std_addGradeTestSignUpInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生管理→编辑等级考试报名信息</title>
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
        <table border="0" cellpadding="0" cellspacing="0" style="width: 740px; height: 460px">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→编辑等级考试报名信息</td>
            </tr>
            <tr style="height: 326px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 175px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 考试名称：<asp:DropDownList ID="testName" runat="server" Width="154px" Enabled="False">
                                    <asp:ListItem>英语四级等级考试</asp:ListItem>
                                    <asp:ListItem>英语六级等级考试</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 考试日期：<asp:TextBox ID="testDate" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="testDate"
                                    ErrorMessage="考试日期不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="testDate"
                                    ErrorMessage="您输入的考试日期格式不对！" ValidationExpression="[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2}">*</asp:RegularExpressionValidator>（YYYY-MM-DD：例：2005-12-25）</td>
                            <td style="width: 245px">
                                &nbsp; 考试时间：<asp:TextBox ID="testTime" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="testTime"
                                    ErrorMessage="考试时间不能为空！">*</asp:RequiredFieldValidator>
                                （HH:MM-HH:MM 例: 9:30—11：30）</td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp;&nbsp; 考试类型：<asp:DropDownList ID="testStyle" runat="server" Width="125px" Enabled="False">
                                    <asp:ListItem>英语等级考试</asp:ListItem>
                                    <asp:ListItem>计算机等级考试</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 考试学年：<asp:DropDownList ID="testStudyYear" runat="server"  Width="90px" Enabled="False">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 245px">
                                &nbsp;&nbsp;
                                &nbsp;考试学期：<asp:DropDownList ID="testSemester" runat="server" Width="48px" Enabled="False">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3">
                                &nbsp; 限制对象：<asp:TextBox ID="restrictObject" runat="server" Width="393px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="restrictObject"
                                    ErrorMessage="限制对象不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3">
                                &nbsp; 考试要求：<asp:TextBox ID="testRequire" runat="server" Width="393px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="testRequire"
                                    ErrorMessage="限制对象不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3">
                                &nbsp; 面向对象：<asp:TextBox ID="faceObject" runat="server" Width="393px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="faceObject"
                                    ErrorMessage="面向对象不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 75px">
                            <td colspan="3">
                                &nbsp; 考试备注：<asp:TextBox ID="remark" runat="server" Height="55px" TextMode="MultiLine"
                                    Width="636px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="edit" runat="server" class="btn3_mouseout"
                                    OnClick="edit_Click" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="编  辑" />
                                &nbsp; &nbsp; &nbsp;<asp:Button ID="submit" runat="server" class="btn3_mouseout"
                                    Enabled="False" EnableViewState="False" OnClick="submit_Click" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" />
                                &nbsp; &nbsp; &nbsp;
                                <input id="Button1" runat="server" class="btn3_mouseout" dir="ltr" enableviewstate="true"
                                    name="guanbi" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    type="button" value="关  闭" visible="true" /></td>
                        </tr>
                    </table>
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
