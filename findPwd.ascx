<%@ Control Language="C#" AutoEventWireup="true" CodeFile="findPwd.ascx.cs" Inherits="findPwd" %>
<link href="CSS/CSS.css" rel="stylesheet" type="text/css" />
<table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 495px;
    height: 370px; text-align: left;">
    <tr style="height: 35px">
        <td style="width: 110px; height: 35px;">
            <asp:ImageButton ID="sudentFindPwd" runat="server" Height="35px" Width="110px" ImageUrl="~/image/system/学生.jpg" OnCommand="student_Command" /></td>
        <td style="width: 110px; height: 35px;">
            <asp:ImageButton ID="teacherFindPwd" runat="server" Height="35px" Width="110px" ImageUrl="~/image/system/老师.jpg" OnClick="teacher_Command" /></td>
        <td style="width: 110px; height: 35px;">
            <asp:ImageButton ID="managerFindPwd" runat="server" Height="35px" Width="110px" ImageUrl="~/image/system/管理员.jpg" OnClick="manager_Command" /></td>
        <td style="width: 170px; height: 35px;">
        </td>
    </tr>
    <tr style="height: 335px">
        <td colspan="4" style="vertical-align: top; text-align: center">
            <asp:Panel ID="findPwdPanel" runat="server" BorderColor="Black" BorderStyle="None"
                BorderWidth="1px" Height="320px" Width="495px">
                <asp:MultiView ID="findPwdMultiView" runat="server" ActiveViewIndex="0">
                    <asp:View ID="studentNextView" runat="server">
                        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 495px;
                            height: 25px">
                            <tr>
                                <td style="background-image: url(image/system/menu_bg1.jpg); text-align: left;">
                                    &nbsp;&nbsp; 用户中心→密码找回→学生密码找回</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <table border="1" cellpadding="0" cellspacing="0" class="css" bordercolordark="#003399" bordercolorlight="#6a82dd" style="width: 495px;
                            height: 75px; text-align: left;">
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp;
                                    用户名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="studentNextUserName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp;
                                    学生姓名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="studentNextName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td colspan="3" style="height: 25px; text-align: right;">
                                    <asp:Button ID="studentNext" runat="server" Text=" 下一步" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" OnClick="studentNext_Command"/>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="studentView" runat="server">
                        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 495px;
                            height: 25px; text-align: left;">
                            <tr>
                                <td style="background-image: url(image/system/menu_bg1.jpg);" colspan="3" rowspan="3">
                                    &nbsp;&nbsp; 用户中心→密码找回→学生密码找回</td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                        </table>
                        <table style="width: 495px;height: 225px; text-align: left;" border="1" cellpadding="0" cellspacing="0" class="css" bordercolordark="#003399" bordercolorlight="#6a82dd">
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 用户名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="stdUserName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 学生姓名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="stdName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px; height: 25px;">
                                    &nbsp; 电子邮箱：</td>
                                <td colspan="2" style="width: 350px; height: 25px;">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="stdEmail" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护问题1：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="stdPwdProtectQue1" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护答案1：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="stdPwdProtectAns1" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护问题2：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="stdPwdProtectQue2" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护答案1：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护问题2：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护答案2：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="stdPwdProtectAns2" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="width: 25px">
                                <td colspan="3" style="text-align: center">
                                    <asp:Button ID="studentSubmit" runat="server" Text="提  交" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"/>
                                    &nbsp; &nbsp;
                                    <input id="studentReset" type="reset" value="重  置" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"/></td>
                            </tr>
                            <tr style="height: 25px">
                                <td colspan="3" style="color: red; text-align: center">
                                    您的密码是：<asp:Label ID="stdPwd" runat="server" Text="Label"></asp:Label>
                                    &nbsp; &nbsp;&nbsp; 请牢记哦！</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="teacherNextView" runat="server"><table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 495px;
                            height: 25px; text-align: left;">
                        <tr>
                            <td colspan="3" rowspan="3" style="background-image: url(image/system/menu_bg1.jpg)">
                                &nbsp;&nbsp; 用户中心→密码找回→老师密码找回</td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <table border="1" cellpadding="0" cellspacing="0" class="css" bordercolordark="#003399" bordercolorlight="#6a82dd" style="width: 495px;
                            height: 75px; text-align: left;">
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp;
                                    用户名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="teacherNextUserName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp;
                                    老师姓名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="teacherNextName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td colspan="3" style="height: 25px; text-align: right;">
                                    <asp:Button ID="teacherNext" runat="server" Text=" 下一步" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" OnClick="teacherNext_Command"/>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </asp:View>
                    <asp:View ID="teacherView" runat="server">
                        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 495px;
                            height: 25px; text-align: left;">
                            <tr>
                                <td colspan="3" rowspan="3" style="background-image: url(image/system/menu_bg1.jpg)">
                                    &nbsp;&nbsp; 用户中心→密码找回→老师密码找回</td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                        </table>
                        <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                            cellspacing="0" class="css" style="width: 495px; height: 225px; text-align: left;">
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 用户名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="teacherUserName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 教师姓名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="teacherName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px; height: 25px">
                                    &nbsp; 电子邮箱：</td>
                                <td colspan="2" style="width: 350px; height: 25px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="teacherEmail" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护问题1：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="teacherPwdProtectQue1" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护答案1：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="teacherPwdProtectAns1" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护问题2：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="teacherPwdProtectQue2" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp; 密码保护答案2：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="teacherPwdProtectAns2" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="width: 25px">
                                <td colspan="3" style="text-align: center">
                                    <asp:Button ID="teacherSubmit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" Text="提  交" />
                                    &nbsp; &nbsp;
                                    <input id="teacherReset" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
                            </tr>
                            <tr style="height: 25px">
                                <td colspan="3" style="color: red; text-align: center">
                                    您的密码是：<asp:Label ID="teacherPwd" runat="server" Text="Label"></asp:Label>
                                    &nbsp; &nbsp;&nbsp; 请牢记哦！</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="managerNextView" runat="server"><table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 495px;
                            height: 25px; text-align: left;">
                        <tr>
                            <td colspan="3" rowspan="3" style="background-image: url(image/system/menu_bg1.jpg)">
                                &nbsp;&nbsp; 用户中心→密码找回→管理员密码找回</td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <table border="1" cellpadding="0" cellspacing="0" class="css" bordercolordark="#003399" bordercolorlight="#6a82dd" style="width: 495px;
                            height: 75px; text-align: left;">
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp;
                                    用户名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="managerNextUserName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width: 150px">
                                    &nbsp;
                                    管理员姓名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="managerNextName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td colspan="3" style="height: 25px; text-align: right;">
                                    <asp:Button ID="managerNext" runat="server" Text=" 下一步" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" OnClick="managerNext_Command"/>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </asp:View>
                    <asp:View ID="managerView" runat="server">
                        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 495px;
                            height: 25px; text-align: left;">
                            <tr>
                                <td colspan="3" rowspan="3" style="background-image: url(image/system/menu_bg1.jpg)">
                                    &nbsp;&nbsp; 用户中心→密码找回→管理员密码找回</td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                        </table>
                        <table border="1" cellpadding="0" cellspacing="0" class="css" bordercolordark="#003399" bordercolorlight="#6a82dd" style="width: 495px;
                            height: 275px; text-align: left;">
                            <tr style="height: 25px">
                                <td style="width :150px">
                                    &nbsp; 用户名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="managerUserName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width :150px">
                                    &nbsp; 管理员姓名：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="managerName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width :150px">
                                    &nbsp; 电子邮箱：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="managerEmail" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width :150px">
                                    &nbsp; 密码保护问题1：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="managerPwdProtectQue1" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width :150px">
                                    &nbsp; 密码保护答案1：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="managerPwdProtectAns1" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width :150px; height: 25px;">
                                    &nbsp; 密码保护问题2：</td>
                                <td colspan="2" style="width: 350px; height: 25px;">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="managerPwdProtectQue2" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width :150px">
                                    &nbsp; 密码保护答案2：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="managerPwdProtectAns2" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width :150px">
                                    &nbsp; 密码保护问题3：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="managerPwdProtectQue3" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr style="height: 25px">
                                <td style="width :150px">
                                    &nbsp; 密码保护答案3：</td>
                                <td colspan="2" style="width: 350px">
                                    &nbsp; &nbsp;
                                    <asp:TextBox ID="managerPwdProtectAns3" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 25px">
                                <td colspan="3" style="vertical-align: top; text-align: center"><asp:Button ID="managerSubmit" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" Text="提  交" />
                                    &nbsp; &nbsp;
                                    <input id="Reset1" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                                        onmouseup="this.className='btn3_mouseup'" type="reset" value="重  置" /></td>
                            </tr>
                           <tr style="height: 25px">
                                <td colspan="3" style="color: red; text-align: center">
                                    您的密码是：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    &nbsp; &nbsp;&nbsp; 请牢记哦！</td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView></asp:Panel>
        </td>
    </tr>
    
</table>
