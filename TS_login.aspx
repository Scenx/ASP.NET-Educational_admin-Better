<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TS_login.aspx.cs" Inherits="TS_login" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>华北水利水电大学欢迎您！</title>
    <link href="CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px; text-align: center;" class="css">
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style="width: 600px; height: 400px">
            <tr style="height: 100px">
                <td colspan="3" style="background-image: url(image/system/login_head.jpg); height: 100px">
                </td>
            </tr>
            <tr style="height: 250px">
                <td colspan="3" style="background-image: url(image/system/login_center.jpg); height: 250px; text-align: center; vertical-align: middle;">
                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 600px;
                        height: 210px">
                        <tr style="height: 20px">
                            <td colspan="4">
                                <table border="0" cellpadding="0" cellspacing="0" class="css" style="font-size: 10pt;
                                    width: 600px; color: #0000ff; height: 160px">
                                    <tr style="height: 40px">
                                        <td style="width: 50px">
                                        </td>
                                        <td colspan="5" style="text-align: left">
                                            &nbsp; &nbsp; &nbsp;请您输入用户名和密码：</td>
                                    </tr>
                                    <tr style="height: 40px">
                                        <td style="width: 50px">
                                        </td>
                                        <td style="width: 80px">
                                            &nbsp; 用户名：</td>
                                        <td style="width: 170px">
                                            &nbsp;
                                            <asp:TextBox ID="userName" runat="server" Width="150px"></asp:TextBox></td>
                                        <td style="width: 80px">
                                            &nbsp; 密 码：</td>
                                        <td style="width: 170px">
                                            &nbsp;
                                            <asp:TextBox ID="passWord" runat="server" Width="150px" TextMode="Password"></asp:TextBox></td>
                                        <td style="width: 50px">
                                        </td>
                                    </tr>
                                    <tr style="height: 40px">
                                        <td style="width: 50px">
                                        </td>
                                        <td style="width: 80px">
                                        </td>
                                        <td colspan="4" style="text-align: center">
                                            &nbsp;
                                            <asp:RadioButton ID="unit" runat="server" Text="部 门" GroupName="TS_login"  />
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:RadioButton ID="teacher" runat="server" Text="教 师" GroupName="TS_login"  />
                                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                            <asp:RadioButton ID="student" runat="server" Checked="True" Text="学 生" GroupName="TS_login"  />
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:RadioButton ID="visitor" runat="server" Text="访 客" GroupName="TS_login" /></td>
                                    </tr>
                                    <tr style="height: 40px">
                                        <td style="width: 50px">
                                        </td>
                                        <td style="width: 80px">
                                        </td>
                                        <td style="width: 170px">
                                        </td>
                                        <td style="width: 80px">
                                        </td>
                                        <td colspan="2" style="text-align: center">
                                            <asp:Button ID="login" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" Text="登  录" OnClick="login_Click" />
                                            &nbsp; &nbsp; &nbsp;
                                            <asp:Button ID="cancel" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                                onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                                onmouseup="this.className='btn3_mouseup'" Text="取  消" OnClick="cancel_Click" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="vertical-align: top; text-align: center">
                            </td>
                        </tr>
                        <tr style="height: 10px">
                            <td colspan="4">
                            </td>
                        </tr>
                    </table>
                    &nbsp;</td>
            </tr>
            <tr style="height: 50px">
                <td colspan="3" style="background-image: url(image/system/login_foot.jpg); height: 50px; text-align: right; color: #0000ff;">
                    &nbsp;<asp:CheckBox ID="remeberName" runat="server" Text="记住用户名" OnCheckedChanged="remeberName_CheckedChanged" />&nbsp; |
                    <asp:HyperLink ID="HyperLink2" runat="server">注册新用户</asp:HyperLink>&nbsp; |&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server">找回密码</asp:HyperLink>
                    &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
