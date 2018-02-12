<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unit_addUnitInfoList.aspx.cs" Inherits="manager_sysManager_unitManage_unit_addUnitInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>部门管理→部门管理→编辑单位</title>
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
            height: 370px">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 部门管理→部门管理→编辑单位</td>
            </tr>
            <tr style="height: 236px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 225px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 单位编号：
                                <asp:Label ID="unitCode" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp; 单位名称：<asp:TextBox ID="unitName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="unitName"
                                    ErrorMessage="单位名称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 200px">
                            <td colspan="3">
                                &nbsp; 单位简介：<asp:TextBox ID="unitIntroduce" runat="server" Height="178px" TextMode="MultiLine"
                                    Width="624px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="unitIntroduce"
                                    ErrorMessage="单位简介不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="edit" runat="server" class="btn3_mouseout" OnClick="edit_Click" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Text="编  辑" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="submit" runat="server" class="btn3_mouseout" OnClick="submit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" Enabled="False" />&nbsp; &nbsp; &nbsp;<input id="Button1" runat="server" class="btn3_mouseout" dir="ltr" enableviewstate="true"
                                    name="guanbi" onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    type="button" value="关  闭" visible="true" />&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                                &nbsp; &nbsp;&nbsp;
                            </td>
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
