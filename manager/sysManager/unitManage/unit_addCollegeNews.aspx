<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unit_addCollegeNews.aspx.cs" Inherits="manager_sysManager_unitManage_unit_addCollegeNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加院系新闻</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 部门管理→院系新闻管理→添加院系新闻</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" cellpadding="0" cellspacing="0" class="css" bordercolordark="#003399" bordercolorlight="#6a82dd" style="width: 735px;
                        height: 275px; text-align: left;">
                        <tr style="height: 25px">
                            <td style="width:100px">
                                &nbsp;&nbsp; 新闻标题：</td>
                            <td colspan="3">
                                &nbsp;
                                <asp:TextBox ID="newsTitle" runat="server" Width="289px"></asp:TextBox>（不超过20个字）<asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="newsTitle" ErrorMessage="标题不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 100px">
                            <td style="width:100px">
                                &nbsp; 新闻内容：</td>
                            <td colspan="3">
                                &nbsp;
                                <asp:TextBox ID="newsContent" runat="server" Height="85px" TextMode="MultiLine" Width="580px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="newsContent"
                                    ErrorMessage="新闻内容不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width:100px">
                                &nbsp; 面向对象：</td>
                            <td colspan="3">
                                &nbsp;
                                <asp:TextBox ID="faceObject" runat="server" Width="330px"></asp:TextBox>（请简要详尽注明年级，班级，专业）<asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="faceObject" ErrorMessage="面向对象不能为空！">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width:100px">
                                &nbsp; 发布院系：</td>
                            <td colspan="3">
                                &nbsp;
                                <asp:DropDownList ID="college" runat="server"  Width="347px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width:100px">
                                &nbsp; 附件上传：</td>
                            <td colspan="3">
                                &nbsp;
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                                &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="transmit" runat="server" Text="上  传" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Enabled="False"/>
                                &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="delete" runat="server" Text="清  除" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" Enabled="False"/>
                                &nbsp; &nbsp;
                                &nbsp;&nbsp; 附件：</td>
                       </tr>
                        <tr style="height: 25px">
                            <td style="width:100px">
                                &nbsp; 有效日期：</td>
                            <td colspan="3" style="vertical-align: middle; text-align: left">
                                &nbsp;
                                <asp:Calendar ID="dateLimit" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                    BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                    ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                </asp:Calendar>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" />
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="4" style="text-align: center">
                                <asp:Button ID="release" runat="server" Text="发  布" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'" OnClick="release_Click"/>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                <input id="Reset1" type="reset" value="重  置" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'"/></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
