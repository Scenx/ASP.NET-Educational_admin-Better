<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unit_addSpecialityInfoList.aspx.cs" Inherits="manager_sysManager_unitManage_unit_addSpecialityInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>部门管理→专业管理→编辑专业</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 740px; height: 490px; background-color: #dee9f9;" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="background-image: url(../../../image/system/main_top_bg.gif)" colspan="3">
                    &nbsp;&nbsp; 部门管理→专业管理→编辑专业</td>
            </tr>
            <tr style="height: 356px">
                <td style="vertical-align: top; text-align: left" colspan="3">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 250px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 225px">
                                专业编号：
                                <asp:Label ID="specialityCode" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 225px; color: #000000">
                                专业名称：<asp:TextBox ID="speciality" runat="server" Width="145px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="speciality"
                                    ErrorMessage="专业名称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 295px; color: #000000">
                                所属学院：<asp:DropDownList ID="collegeName" runat="server"  Width="219px" Enabled="False">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 200px">
                            <td colspan="3">
                                专业简介：<asp:TextBox ID="specialityIntroduce" runat="server" Height="168px" TextMode="MultiLine"
                                    Width="621px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="specialityIntroduce"
                                    ErrorMessage="专业简介不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="edit" runat="server" class="btn3_mouseout" OnClick="edit_Click" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="编  辑" />
                                &nbsp; &nbsp;
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" Enabled="False" OnClick="submit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" />&nbsp; &nbsp; &nbsp;<input id="Button1" runat="server" class="btn3_mouseout"
                                        dir="ltr" enableviewstate="true" name="guanbi" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" type="button" value="关  闭" visible="true" />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
