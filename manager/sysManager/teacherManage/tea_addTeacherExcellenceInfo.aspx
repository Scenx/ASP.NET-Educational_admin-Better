<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea_addTeacherExcellenceInfo.aspx.cs" Inherits="manager_sysManager_teacherManage_tea_addTeacherExcellenceInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加教师获得奖项信息</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 教师管理→教师在职信息管理→添加教师评优信息</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: left">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 125px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp;&nbsp; 教师编号：<asp:TextBox ID="teacherCode" runat="server" Width="84px"></asp:TextBox><asp:Button
                                    ID="infoExport" runat="server" class="btn3_mouseout" EnableViewState="False"
                                    OnClick="infoExport_Click" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="信息导入" Width="55px" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                        runat="server" ControlToValidate="teacherCode" ErrorMessage="教师编号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;身份证号：<asp:TextBox ID="IDcardNumber" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师姓名：<asp:TextBox ID="teacherName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 教师学院：
                                <asp:TextBox ID="college" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师职务：<asp:TextBox ID="duty" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;教师职称：<asp:TextBox ID="technicalpost" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp;&nbsp;是否优秀教师：<asp:DropDownList ID="ifExcellenceTeacher" runat="server" Width="53px">
                                    
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;获奖时间：<asp:TextBox ID="scholarDate" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="scholarDate"
                                    ErrorMessage="您输入的获奖日期格式不对！" ValidationExpression="[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2}">*</asp:RegularExpressionValidator>（YYYY-MM-DD：例：2005-12-25）<asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator4" runat="server" ControlToValidate="scholarDate" ErrorMessage="获奖时间不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;获奖金额：<asp:TextBox ID="scholarSum" runat="server" Width="76px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>元（可为空）<asp:CompareValidator
                                        ID="CompareValidator1" runat="server" ControlToValidate="scholarSum" ErrorMessage="奖学金金额请输入整数数据！"
                                        Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 获奖事由：
                                <asp:TextBox ID="scholarCause" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="scholarSum"
                                    ErrorMessage="获奖事由不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;获奖名称：<asp:TextBox ID="scholarName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="scholarName"
                                    ErrorMessage="获奖名称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp;颁发单位：<asp:TextBox ID="giveScholarUnit" runat="server" BackColor="#DEE9F9" Width="148px" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="giveScholarUnit"
                                    ErrorMessage="颁发单位不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" Enabled="False" />
                                &nbsp; &nbsp;&nbsp;
                                <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
                        </tr>
                    </table>
                    <asp:Label ID="submitResult" runat="server" Font-Bold="False" Font-Size="11pt" ForeColor="Red"
                        Text="Label" Visible="False"></asp:Label><asp:ValidationSummary ID="ValidationSummary1"
                            runat="server" ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
