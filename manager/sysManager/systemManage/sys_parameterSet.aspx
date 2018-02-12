<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sys_parameterSet.aspx.cs" Inherits="manager_sysManager_systemManage_sys_parameterSet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 740px; height: 690px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 系统管理→系统设置→系统参数设置</td>
            </tr>
            <tr style="height: 565px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" cellpadding="0" cellspacing="0" class="css" bordercolordark="#003399" bordercolorlight="#6a82dd" style="width: 735px;
                        height: 475px; text-align: left;">
                        <tr style="height: 25px">
                            <td style="width: 200px">
                                &nbsp; 教务系统名称：</td>
                            <td colspan="2" style="width: 535px">
                                &nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Width="500px">华北水利水电大学电子教务系统</asp:TextBox></td>
                        </tr>
                        <tr style="height: 75px">
                            <td style="width: 200px">
                                &nbsp; 教务系统描述：</td>
                            <td colspan="2" style="width: 535px">
                                &nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Height="58px" TextMode="MultiLine" Width="500px">华北水利水电大学电子教务系统是华北水利水电大学为适应现代大学教学的学要而建立的一个系统，本系统功能强大，数据安全，稳定性好！</asp:TextBox></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 200px">
                                &nbsp; 用户注册状态：</td>
                            <td colspan="2" style="width: 535px">
                                &nbsp; 学生用户：<asp:DropDownList ID="DropDownList1" runat="server" Width="62px">
                                    <asp:ListItem>关闭</asp:ListItem>
                                    <asp:ListItem>开启</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;教师用户：<asp:DropDownList ID="DropDownList2" runat="server" Width="57px">
                                    <asp:ListItem>开启</asp:ListItem>
                                    <asp:ListItem>关闭</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 200px">
                                &nbsp; 密码取回状态：</td>
                            <td colspan="2" style="width: 535px">
                                &nbsp; 学生用户：<asp:DropDownList ID="DropDownList3" runat="server" Width="63px">
                                    <asp:ListItem>关闭</asp:ListItem>
                                    <asp:ListItem>开启</asp:ListItem>
                                </asp:DropDownList>&nbsp; 教师用户：<asp:DropDownList ID="DropDownList4" runat="server" Width="63px">
                                    <asp:ListItem>开启</asp:ListItem>
                                    <asp:ListItem>关闭</asp:ListItem>
                                </asp:DropDownList>
                                管理员用户：<asp:DropDownList ID="DropDownList5" runat="server" Width="63px">
                                    <asp:ListItem>开启</asp:ListItem>
                                    <asp:ListItem>关闭</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="height: 150px">
                            <td style="width: 200px; height: 25px;">
                                &nbsp; 教务系统Logo标志设置：</td>
                            <td colspan="2" style="width: 535px; vertical-align: top; text-align: left;">
                                
                                <table border="1" cellpadding="0" cellspacing="0" bordercolordark="#003399" bordercolorlight="#6a82dd" class="css" style="width: 521px; height: 120px">
                                    <tr style="height: 59px">
                                        <td colspan="2" rowspan="2" style="width:400px; vertical-align: top; text-align: left;">
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/system/top_logo.jpg" /></td>
                                        <td rowspan="2" style="width: 121px; vertical-align: top; text-align: left;">
                                            支持Logo图片格式为（gif,jpg,bmp...）图片大小高限制在60px内，宽限制在400px内。</td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr style="height: 25px">
                                        <td style="width: 249px">
                                            <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                                        <td style="width: 151px; text-align: center;">
                                            &nbsp;<asp:Button ID="transimit" runat="server" Text="上  传" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'"/>
                                            &nbsp;&nbsp;
                                            <asp:Button ID="delete" runat="server" Text="清  除" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'"/></td>
                                        <td style="width: 121; text-align: center;">
                                            <asp:Button ID="defaultPicture" runat="server" Text="默认图片" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                    onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                    onmouseup="this.className='btn3_mouseup'"/></td>
                                    </tr>
                                </table>
                                &nbsp;</td>
                        </tr>
                        <tr style="height: 150px">
                            <td style="width: 200px">
                                &nbsp; 教务系统Banner标志设置：</td>
                            <td colspan="2" style="width: 535px; vertical-align: top; text-align: left;">
                                <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                                    cellspacing="0" class="css" style="width: 521px; height: 120px">
                                    <tr style="height: 59px">
                                        <td colspan="2" rowspan="2" style="vertical-align: top; width: 400px; text-align: left">
                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/system/top_2.gif" /></td>
                                        <td rowspan="2" style="vertical-align: top; width: 121px; text-align: left">
                                            支持Logo图片格式为（gif,jpg,bmp...）图片大小高限制在60px内，宽限制在300px内。</td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr style="height: 25px">
                                        <td style="width: 249px">
                                            <asp:FileUpload ID="FileUpload2" runat="server" /></td>
                                        <td style="width: 151px; text-align: center">
                                            &nbsp;<asp:Button ID="Button1" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" Text="上  传" />
                                            &nbsp;&nbsp;
                                            <asp:Button ID="Button2" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" Text="清  除" /></td>
                                        <td style="width: 121px; text-align: center">
                                            <asp:Button ID="Button3" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" Text="默认图片" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 150px">
                            <td style="width: 200px">
                                &nbsp; 教务系统Banner标志设置：</td>
                            <td colspan="2" style="width: 535px; vertical-align: top; text-align: left;">
                                <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                                    cellspacing="0" class="css" style="width: 521px; height: 120px">
                                    <tr style="height: 59px">
                                        <td colspan="2" rowspan="2" style="vertical-align: top; width: 400px; text-align: left">
                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/system/教务处.bmp" /></td>
                                        <td rowspan="2" style="vertical-align: top; width: 121px; text-align: left">
                                            支持Logo图片格式为（gif,jpg,bmp...）图片大小高限制在50px内，宽限制在150px内。</td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr style="height: 25px">
                                        <td style="width: 249px">
                                            <asp:FileUpload ID="FileUpload3" runat="server" /></td>
                                        <td style="width: 151px; text-align: center">
                                            &nbsp;<asp:Button ID="Button4" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" Text="上  传" />
                                            &nbsp;&nbsp;
                                            <asp:Button ID="Button5" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" Text="清  除" /></td>
                                        <td style="width: 121px; text-align: center">
                                            <asp:Button ID="Button6" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" Text="默认图片" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 200px">
                                &nbsp; 用户刷新时间：</td>
                            <td colspan="2" style="width: 535px">
                                &nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Width="122px">30</asp:TextBox>&nbsp; 分钟</td>
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
