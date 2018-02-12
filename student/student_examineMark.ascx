<%@ Control Language="C#" AutoEventWireup="true" CodeFile="student_examineMark.ascx.cs" Inherits="student_student_examineMark" %>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
<table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
    height: 25px">
    <tr style="height: 25px;">
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    学年&nbsp;
                    <asp:DropDownList ID="studyYear" runat="server" CssClass="css" Width="73px" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="studyYear" DataValueField="studyYear" >
                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [studyYear] FROM [ts_xs_studyYear] ORDER BY [studyYear] DESC">
                    </asp:SqlDataSource>
                </td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    学期&nbsp;
                    <asp:DropDownList ID="semester" runat="server" Width="47px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="studyYearMark" runat="server" Text="学年成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="studyYearMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="semesterMark" runat="server" Text="学期成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="semesterMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="passyearMark" runat="server" Text="历年成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="passyearMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="tiptopMark" runat="server" Text=" 课程最高成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="tiptopMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="unpassMark" runat="server" Text="未通过成绩" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" OnClick="unpassMark_Click" /></td>
                <td style="height: 25px;width: 127px; text-align: center; background-color: #dee9f9;">
                    <asp:Button ID="sudent_print" runat="server" Text="成绩打印" class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
 onmouseout="this.className='btn3_mouseout'"
 onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" Width="127px" /></td>
            </tr>
</table>
