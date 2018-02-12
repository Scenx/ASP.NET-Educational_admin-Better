<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unit_addTeachedClassInfo.aspx.cs" Inherits="manager_sysManager_unitManage_unit_addTeachedClassInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
                    &nbsp; 部门管理→教学班信息管理→添加教学班</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: left">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 100px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 359px; height: 28px;">
                                教学班编号：<asp:TextBox ID="teachedClassCode" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="教学编号不能为空！" ControlToValidate="teachedClassCode">*</asp:RequiredFieldValidator></td>
                            <td style="width: 284px; height: 28px;">
                                教学班名称：
                                <asp:TextBox ID="teachedClassName" runat="server" Width="128px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="教学班名称不能为空！" ControlToValidate="teachedClassName">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; height: 28px;">
                                &nbsp; &nbsp;年级： &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="grade"
                                    runat="server" 
                                    Width="101px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 359px">
                                学院： &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="college" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                                    Width="221px">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 284px">
                                所属专业：<asp:DropDownList ID="speciality" runat="server" Width="146px">
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; &nbsp; 辅导员姓名：<asp:TextBox ID="teacherName" runat="server" Height="18px" Width="91px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="辅导员姓名不能为空！" ControlToValidate="teacherName">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 359px">
                                辅导员编号：<asp:TextBox ID="teacherCode" runat="server" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="教学编号不能为空！" ControlToValidate="teacherCode">*</asp:RequiredFieldValidator></td>
                            <td style="width: 284px">
                                &nbsp;
                            </td>
                            <td style="width: 245px">
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                &nbsp;&nbsp;
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="提  交" OnClick="submit_Click" />&nbsp; &nbsp; &nbsp;&nbsp;
                                <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
                        </tr>
                    </table>
                    &nbsp;
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
