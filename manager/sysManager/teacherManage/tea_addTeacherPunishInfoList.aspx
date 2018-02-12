<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea_addTeacherPunishInfoList.aspx.cs" Inherits="manager_sysManager_teacherManage_tea_addTeacherPunishInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>教师管理→教师在职信息管理→添加教师处分信息</title>
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
        <table style="width: 740px; height: 290px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; &nbsp; 教师管理→教师在职信息管理→编辑教师处分信息</td>
            </tr>
            <tr style="height: 156px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 125px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp;&nbsp; 处罚编号：<asp:Label ID="punishCode" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 245px; color: #000000; height: 25px">
                                &nbsp;身份证号：<asp:TextBox ID="IDcardNumber" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师姓名：<asp:TextBox ID="teacherName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 教师学院：<asp:TextBox ID="college" runat="server" BackColor="#DEE9F9" ReadOnly="True"
                                    Width="144px"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师职务：<asp:TextBox ID="duty" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师职称：<asp:TextBox ID="technicalpost" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 处分名称：<asp:TextBox ID="punishName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="punishName"
                                    ErrorMessage="处分名称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000; height: 25px">
                                &nbsp; 处分时间：<asp:TextBox ID="punishDate" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>（YYYY-MM-DD：例：2005-12-25）<asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="punishDate" ErrorMessage="处分时间不能为空！">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="punishDate"
                                    ErrorMessage="您输入的处罚日期格式不对！" ValidationExpression="[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2}">*</asp:RegularExpressionValidator></td>
                            <td style="width: 245px; color: #000000; height: 25px">
                                &nbsp; 处分事由：<asp:TextBox ID="punishCause" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="punishCause"
                                    ErrorMessage="获奖事由不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000; height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 处分单位：<asp:TextBox ID="punishUnit" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="punishUnit"
                                    ErrorMessage="处分单位不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师编号：<asp:TextBox ID="teacherCode" runat="server" Width="142px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;</td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                &nbsp;&nbsp;<asp:Button ID="edit" runat="server" class="btn3_mouseout" OnClick="edit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="编  辑" />
                                &nbsp; &nbsp;<asp:Button ID="submit" runat="server" class="btn3_mouseout" Enabled="False"
                                    OnClick="submit_Click" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" />
                                &nbsp; &nbsp;&nbsp;&nbsp;
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
