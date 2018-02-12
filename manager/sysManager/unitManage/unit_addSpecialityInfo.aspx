<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unit_addSpecialityInfo.aspx.cs" Inherits="manager_sysManager_unitManage_unit_addSpecialityInfo" %>

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
                    &nbsp;&nbsp; 部门管理→专业信息管理→添加专业</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: left">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 250px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 225px">
                                专业编号：<asp:TextBox ID="specialityCode" runat="server" Width="137px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="specialityCode"
                                    ErrorMessage="专业编号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 225px">
                                专业名称：<asp:TextBox ID="speciality" runat="server" Width="145px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="speciality"
                                    ErrorMessage="专业名称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 295px">
                                所属学院：<asp:DropDownList ID="collegeName" runat="server"  Width="219px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 200px">
                            <td colspan="3">
                                专业简介：<asp:TextBox ID="specialityIntroduce" runat="server" Width="621px" Height="168px" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="specialityIntroduce"
                                    ErrorMessage="专业简介不能为空！">*</asp:RequiredFieldValidator></td>
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
