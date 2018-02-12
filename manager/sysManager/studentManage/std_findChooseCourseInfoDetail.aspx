<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_findChooseCourseInfoDetail.aspx.cs" Inherits="manager_sysManager_studentManage_std_findChooseCourseInfoDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 740px;
            height: 490px; background-color: #dee9f9;">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→查看选修课详细信息：</td>
            </tr>
           <tr style="height: 25px">
                <td style="width :245px">
                    &nbsp; 上课学年：<asp:DropDownList ID="courseStudyYear" runat="server" AutoPostBack="True"
                        
                        OnSelectedIndexChanged="courseStudyYear_SelectedIndexChanged" Width="78px">
                    </asp:DropDownList>
                </td>
                <td style="width :245px">
                    &nbsp; 上课学期：<asp:DropDownList ID="courseSemester" runat="server" AutoPostBack="True"
                        OnSelectedIndexChanged="courseSemester_SelectedIndexChanged" Width="70px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width :245px">
                    &nbsp; 课程性质：<asp:DropDownList ID="courseProperty" runat="server" AutoPostBack="True"
                        OnSelectedIndexChanged="courseProperty_SelectedIndexChanged" Width="113px">
                        <asp:ListItem>校公共选修课</asp:ListItem>
                        <asp:ListItem>校公共必修课</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr style="height: 390px">
                <td colspan="3" style="vertical-align: top; text-align: left">
                    <asp:Label ID="search" runat="server" Font-Bold="False" Font-Size="11pt" ForeColor="Red"
                        Text="没有找到相关的选课信息！"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="White" CellPadding="4" CssClass="css" Font-Size="12px"
                        OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound"
                        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" PageSize="6"
                        Width="740px">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NumericFirstLast" NextPageText="下一页"
                            PreviousPageText="前一页" />
                        <Columns>
                            <asp:TemplateField HeaderText="编号">
                                <ItemStyle Width="30px" />
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="courseName" HeaderText="课程名称">
                                <ItemStyle Width="160px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="courseCode" HeaderText="课程编号">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="teacherName" HeaderText="教师名称">
                                <ItemStyle Width="80px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="teacherCode" HeaderText="教师编号">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="courseStudyYear" HeaderText="上课学年">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="courseSemester" HeaderText="上课学期">
                                <ItemStyle Width="30px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="courseProperty" HeaderText="课程性质">
                                <ItemStyle Width="40px" />
                            </asp:BoundField>
                            <asp:CommandField EditText="详细信息" HeaderText="详细信息" ShowEditButton="True">
                                <ItemStyle ForeColor="Red" Width="30px" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="删除选课" ShowDeleteButton="True">
                                <ItemStyle ForeColor="Red" Width="30px" />
                            </asp:CommandField>
                        </Columns>
                        <RowStyle ForeColor="#003399" />
                        <PagerStyle BackColor="#DEE9F9" Font-Bold="True" Font-Italic="False" Font-Size="13pt" />
                        <HeaderStyle BackColor="#003399" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />
                    </asp:GridView>
                </td>
            </tr>
            <tr style="height: 20px">
                <td colspan="3">
                    &nbsp;<asp:Button ID="export" runat="server" class="btn3_mouseout" OnClick="export_Click"
                        onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                        onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                        Text="Excel数据导出" Width="96px" />
                    &nbsp; &nbsp; &nbsp; 第
                    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Italic="False" ForeColor="Red"
                        Text="1"></asp:Label>&nbsp; 页 &nbsp; 共
                    <asp:Label ID="totalNumber" runat="server" Font-Bold="False" Font-Italic="False"
                        ForeColor="Red" Text="Label"></asp:Label>
                    &nbsp;页 &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="firstPage" runat="server" class="btn3_mouseout" Height="23px" OnClick="firstPage_Click"
                        onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                        onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                        Text="首页" Width="57px" />
                    <asp:Button ID="upPage" runat="server" class="btn3_mouseout" Height="23px" OnClick="upPage_Click"
                        onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                        onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                        Text="上一页" Width="57px" />
                    &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="downPage" runat="server" class="btn3_mouseout" Height="23px" OnClick="downPage_Click"
                        onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                        onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                        Text="下一页" Width="57px" />&nbsp;
                    <asp:Button ID="lastPage" runat="server" class="btn3_mouseout" Height="23px" OnClick="lastPage_Click"
                        onmousedown="this.className='btn3_mousedown'" onmouseout="this.className='btn3_mouseout'"
                        onmouseover="this.className='btn3_mouseover'" onmouseup="this.className='btn3_mouseup'"
                        Text="末页" Width="57px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;跳转至第<asp:DropDownList ID="pageNumber"
                        runat="server" Width="44px">
                    </asp:DropDownList>页&nbsp;<asp:Button ID="jump" runat="server" class="btn3_mouseout"
                        Height="24px" OnClick="jump_Click" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Text="跳转" Width="31px" /></td>
            </tr>
            <tr style="height: 30px">
                <td colspan="3">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
