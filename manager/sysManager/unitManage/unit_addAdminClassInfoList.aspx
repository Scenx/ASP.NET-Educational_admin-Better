<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unit_addAdminClassInfoList.aspx.cs" Inherits="manager_sysManager_unitManage_unit_addAdminClassInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>部门管理→行政班信息管理→编辑行政班</title>
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
            height: 259px; background-color: #dee9f9;">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 部门管理→行政班信息管理→编辑行政班</td>
            </tr>
            <tr style="height: 125px">
                <td style="vertical-align: top; text-align: left" colspan="3">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 100px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 359px">
                                行政班编号：
                                <asp:Label ID="adminClassCode" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 284px; color: #000000">
                                行政班名称：
                                <asp:TextBox ID="adminClassName" runat="server" Width="128px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adminClassName"
                                    ErrorMessage="教学班名称不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp; &nbsp;年级： &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="grade"
                                    runat="server" 
                                    Width="101px" Enabled="False">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 359px">
                                学院：<asp:DropDownList ID="college" runat="server" AutoPostBack="True"  Width="237px" Enabled="False">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 284px">
                                所属专业：<asp:DropDownList ID="speciality" runat="server" AutoPostBack="True" Width="146px" Enabled="False">
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                教学班：<asp:DropDownList ID="teachedClass" runat="server" Width="154px" Enabled="False">
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 359px">
                                辅导员编号：<asp:TextBox ID="teacherCode" runat="server" Width="150px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="teacherCode"
                                    ErrorMessage="教学编号不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 284px">
                                辅导员姓名：<asp:TextBox ID="teacherName" runat="server" Height="18px" Width="91px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="teacherName"
                                    ErrorMessage="辅导员姓名不能为空！">*</asp:RequiredFieldValidator></td>
                            <td style="width: 245px">
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="text-align: center">
                                &nbsp;&nbsp;
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
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height : 50px">
                <td colspan="3">
                    <uc1:std_listFoot ID="Std_listFoot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
