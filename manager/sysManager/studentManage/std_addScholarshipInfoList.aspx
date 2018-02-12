<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addScholarshipInfoList.aspx.cs" Inherits="manager_sysManager_studentManage_std_addScholarshipInfoList" %>

<%@ Register Src="std_listFoot.ascx" TagName="std_listFoot" TagPrefix="uc1" %>
<%@ Register Src="std_listMain.ascx" TagName="std_listMain" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生管理→奖学金管理→编辑获得奖学金的学生信息</title>
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
        <table style="width: 740px; height: 490px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:std_listMain ID="Std_listMain1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; &nbsp;学生管理→奖学金管理→编辑获得奖学金的学生信息</td>
            </tr>
            <tr style="height: 356px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: left">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 200px; text-align: left">
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp;奖学金编号：
                                <asp:TextBox ID="scholarCode" runat="server" BackColor="#DEE9F9" ReadOnly="True" Width="147px"></asp:TextBox></td>
                            <td style="width: 245px; color: #000000">
                                &nbsp; 学生学号： &nbsp;
                                <asp:TextBox ID="studyNumber" runat="server" Width="149px" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 身份证号： &nbsp;
                                <asp:TextBox ID="IDcardNumber" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 学院名称： &nbsp;&nbsp;<asp:TextBox ID="college" runat="server" BackColor="#DEE9F9"
                                    ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生专业： &nbsp;
                                <asp:TextBox ID="speciality" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px">
                                &nbsp; 学生年级： &nbsp;
                                <asp:TextBox ID="grade" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px; height: 25px">
                                &nbsp; 学生教学班：<asp:TextBox ID="teachedClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp; 学生行政班：<asp:TextBox ID="adminClass" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                            <td style="width: 245px; height: 25px">
                                &nbsp; 学生姓名： &nbsp;
                                <asp:TextBox ID="studentName" runat="server" BackColor="#DEE9F9" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp;&nbsp; 奖学金等级：<asp:DropDownList ID="scholarGrade" runat="server" Width="66px">
                                    <asp:ListItem>一等</asp:ListItem>
                                    <asp:ListItem>二等</asp:ListItem>
                                    <asp:ListItem>三等</asp:ListItem>
                                    <asp:ListItem>无等级</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 奖学金种类：<asp:DropDownList ID="scholarKind" runat="server" Width="147px">
                                    <asp:ListItem>系内奖学金</asp:ListItem>
                                    <asp:ListItem>校内奖学金</asp:ListItem>
                                    <asp:ListItem>国家奖学金</asp:ListItem>
                                    <asp:ListItem>个人奖学金</asp:ListItem>
                                    <asp:ListItem>企业奖学金</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 245px">
                                &nbsp; 奖学金名称：<asp:DropDownList ID="scholarName" runat="server" Width="126px">
                                    <asp:ListItem>系内一等奖学金</asp:ListItem>
                                    <asp:ListItem>系内二等奖学金</asp:ListItem>
                                    <asp:ListItem>系内三等奖学金</asp:ListItem>
                                    <asp:ListItem>校内一等奖学金</asp:ListItem>
                                    <asp:ListItem>校内二等奖学金</asp:ListItem>
                                    <asp:ListItem>校内三等奖学金</asp:ListItem>
                                    <asp:ListItem>国家一等奖学金</asp:ListItem>
                                    <asp:ListItem>国家二等奖学金</asp:ListItem>
                                    <asp:ListItem>国家三等奖学金</asp:ListItem>
                                    <asp:ListItem>国家全额奖学金</asp:ListItem>
                                    <asp:ListItem>国家励志奖学金</asp:ListItem>
                                    <asp:ListItem>国家一等助学金</asp:ListItem>
                                    <asp:ListItem>国家二等助学金</asp:ListItem>
                                    <asp:ListItem>国家三等奖学金</asp:ListItem>
                                    <asp:ListItem>个人奖学金</asp:ListItem>
                                    <asp:ListItem>企业奖学金</asp:ListItem>
                                    <asp:ListItem>自定义奖学金</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 奖学金金额：<asp:TextBox ID="scholarSum" runat="server" BackColor="#DEE9F9" ReadOnly="True"
                                    Width="74px"></asp:TextBox>
                                元<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="scholarSum"
                                    ErrorMessage="奖学金金额不能为空！">*</asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1"
                                        runat="server" ControlToValidate="scholarSum" ErrorMessage="奖学金金额请输入整数数据！" Operator="DataTypeCheck"
                                        Type="Integer">*</asp:CompareValidator></td>
                            <td colspan="2">
                                &nbsp; 奖学金单位：<asp:DropDownList ID="scholarUnit" runat="server"  Width="311px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 245px">
                                &nbsp; 奖学金日期：<asp:TextBox ID="scholarDate" runat="server" BackColor="#DEE9F9" ReadOnly="True"
                                    Width="140px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                        runat="server" ControlToValidate="scholarDate" ErrorMessage="奖学金日期不能为空！">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                            ID="RegularExpressionValidator1" runat="server" ControlToValidate="scholarDate"
                                            ErrorMessage="您输入的奖学金日期格式不对！" ValidationExpression="[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2}">*</asp:RegularExpressionValidator>（YYYY-MM-DD：例：2005-12-25）</td>
                            <td style="width: 245px">
                                &nbsp; 奖学金学年：<asp:DropDownList ID="scholarStudyYear" runat="server"  Width="83px">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 245px">
                                &nbsp; 奖学金学期：
                                <asp:DropDownList ID="scholarSemester" runat="server" Width="60px">
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
                                &nbsp;&nbsp; &nbsp;<asp:Button ID="submit" runat="server" class="btn3_mouseout" Enabled="False" OnClick="submit_Click"
                                    onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                                    onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                                    Text="提  交" />
                                &nbsp; &nbsp;&nbsp;
                                <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
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
