<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_foursixgradeTestSignUp.aspx.cs" Inherits="student_student_gradeTestSignUp" %>

<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>

<%@ Register Src="student_main.ascx" TagName="student_main" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>等级考试报名</title>
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1003px; height: 740px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr>
                <td colspan="3" style="height: 110px">
                    <uc1:student_main ID="Student_main1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 25px; background-image: url(../image/system/main_top_bg.gif);">
                    &nbsp;&nbsp; 网上报名→四六级考试报名</td>
            </tr>
            <tr>
                <td colspan="3" style="height: 555px; vertical-align: top; text-align: center; background-color: #dee9f9;">
                    <table border="1" cellpadding="0" cellspacing="0"  bordercolordark="#003399" bordercolorlight="#6a82dd" style="width: 995px; height: 545px; text-align: left; vertical-align: top; background-color: #dee9f9;">
                        <tr style="height: 25px">
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3;">
                                &nbsp; 学号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3;">
                                &nbsp; 专业：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3;">
                                &nbsp; 教学班：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 姓名：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 学院：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 行政班：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td style="width: 370px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 报名学年：<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                            <td colspan="2" style="width: 370px; height: 25px; background-color: #e4ecf3">
                                &nbsp; 报名学期：<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 150px">
                            <td colspan="3" style="vertical-align: top; text-align: left">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#003399" CellPadding="3" Width="990px" BackColor="White">
                                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="报名">
                                       <ItemTemplate>
                                       <asp:CheckBox ID="CheckBox1" runat="server" />
                                       </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="testName" HeaderText="考试名称" />
                                        <asp:BoundField DataField="testStyle" HeaderText="考试类别" />
                                        <asp:BoundField DataField="ifAllowSignup" HeaderText="是否允许报名" />
                                        <asp:BoundField DataField="testRequire" HeaderText="等级要求">
                                            <ItemStyle Width="250px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="faceObject" HeaderText="面向对象">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="restrictObject" HeaderText="限制对象" />
                                        <asp:BoundField DataField="remark" HeaderText="备注" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr style="height: 120px">
                            <td style="background-color: #e4ecf3; height: 120px;" colspan="3">
                                <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/image/student/yi.bmp"
                                    Width="83px" />
                                &nbsp; 选择照片：<asp:FileUpload ID="FileUpload1" runat="server" CssClass="css"/>
                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server"
                                    Text="上传照片" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Enabled="False"/>
                                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"
                                    Text="清除照片" Enabled="False" OnClick="Button2_Click" /></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="background-color: #e4ecf3">
                                &nbsp; 源信息身份证号：<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height: 25px">
                            <td colspan="3" style="background-color: #e4ecf3; height: 17px;">
                                &nbsp; 请填写身份证号：<asp:TextBox ID="TextBox1" runat="server" Width="252px"></asp:TextBox>
                                &nbsp; &nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Text="确  定" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" OnClick="Button3_Click"/>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 150px">
                            <td colspan="3" style="vertical-align: top; text-align: left; color: red;"> &nbsp; 学生当前报名情况：<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderColor="#003399" CellPadding="3" Width="700px" BackColor="White" OnRowDeleting="GridView2_RowDeleting">
                                <HeaderStyle BackColor="#003399" ForeColor="White" />
                                <AlternatingRowStyle BackColor="#EFEFFF" />
                                <Columns>
                                    <asp:BoundField DataField="testName" HeaderText="考试名称" />
                                    <asp:BoundField DataField="IDcardNumber" HeaderText="身份证号">
                                        <ItemStyle Width="300px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ifPayment" HeaderText="是否缴费" />
                                    <asp:CommandField DeleteText="退选" HeaderText="退选" ShowDeleteButton="True">
                                        <ItemStyle Width="50px" Font-Bold="True" ForeColor="Red" />
                                    </asp:CommandField>
                                </Columns>
                                <RowStyle ForeColor="#003399" />
                            </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 50px">
                    <uc2:foot ID="Foot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
