<%@ Control Language="C#" AutoEventWireup="true" CodeFile="manager_logocenter.ascx.cs" Inherits="manager_logocenter" %>
<link href="CSS/CSS.css" rel="stylesheet" type="text/css" />
<table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 600px;
    height: 250px">
    <tr style="height:40px">
        <td colspan="4">
        </td>
    </tr>
    <tr>
        <td colspan="4" style="vertical-align: top; text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 600px; height: 160px; color: #0000cc; font-size: 10pt;">
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
                        <asp:TextBox ID="passWord" runat="server" Width="150px"></asp:TextBox></td>
                    <td style="width: 50px">
                    </td>
                </tr>
                <tr style="height: 40px">
                    <td style="width: 50px">
                    </td>
                    <td colspan="5" style="text-align: center">
                        &nbsp;
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="超级管理员" />
                         &nbsp; &nbsp; 
                         <asp:RadioButton ID="unit" runat="server" Text="一级管理员" />
                        &nbsp; &nbsp;
                        <asp:RadioButton ID="teacher" runat="server" Text="二级管理员" />
                        &nbsp; &nbsp; 
                        <asp:RadioButton ID="student" runat="server" Checked="True" Text="院系管理员" />
                        &nbsp; &nbsp;
                        <asp:RadioButton ID="visitor" runat="server" Text="部门管理员" /></td>
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
                    <td style="text-align: center;" colspan="2">
                        <asp:Button ID="login" runat="server" Text="登  录" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"/>
                        &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="cancel" runat="server" Text="取  消" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"/></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr style="height: 30px">
        <td colspan="4">
        </td>
    </tr>
</table>
