<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation = "false"  CodeFile="std_findGradeTestMarkResult.aspx.cs" Inherits="manager_sysManager_studentManage_std_findGradeTestMarkResult" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>学生管理→查找四六级考试成绩结果如下</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 900px;
            height: 620px; background-color: #dee9f9">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp;&nbsp; 学生管理→查找四六级考试成绩结果如下：</td>
            </tr>
            <tr style="height: 570px">
                <td colspan="3" style="vertical-align: top; text-align: left">
                    <asp:Label ID="search" runat="server" Font-Bold="False" Font-Size="11pt" ForeColor="Red"
                        Text="没有搜索到相关信息！您可以尝试以下方法：1将限定条件减少；2检查您的限制条件是否正确；3输入您所要搜索信息的部分文字内容；"></asp:Label><br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="White" CellPadding="4" OnRowDataBound="GridView1_RowDataBound"
                        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" PageSize="12"
                        Width="900px" OnPageIndexChanging="GridView1_PageIndexChanging">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NumericFirstLast"
                            NextPageText="下一页" PreviousPageText="前一页" />
                        <Columns>
                            <asp:TemplateField HeaderText="编号">
                            <ItemStyle Width="30px" />
                               <ItemTemplate>
                                  <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                               </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="选取">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" BorderColor="#003399" BorderWidth="1px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="studyNumber" HeaderText="学生学号" />
                            <asp:BoundField DataField="IDcardNumber" HeaderText="身份证号">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="studentName" HeaderText="学生姓名" />
                            <asp:BoundField DataField="college" HeaderText="学生学院">
                                <ItemStyle Width="130px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="speciality" HeaderText="学生专业">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="testDate" HeaderText="考试日期" />
                            <asp:BoundField DataField="testTime" HeaderText="考试时间" />
                            <asp:BoundField DataField="testName" HeaderText="考试名称" />
                            <asp:BoundField DataField="Mark" HeaderText="考试成绩" />
                            <asp:BoundField DataField="totalMark" HeaderText="考试总分" />
                            <asp:CommandField EditText="详细信息" HeaderText="详细信息" ShowEditButton="True">
                                <ItemStyle ForeColor="Red" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="删除成绩" ShowDeleteButton="True">
                                <ItemStyle ForeColor="Red" />
                            </asp:CommandField>
                        </Columns>
                        <RowStyle ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />
                        <PagerStyle BackColor="#DEE9F9" Font-Bold="True" Font-Italic="False" Font-Size="13pt" />
                    </asp:GridView>
                </td>
            </tr>
            <tr style="height: 20px">
                <td colspan="3" style="vertical-align: top; text-align: left; font-size: 9pt; height: 20px;">
                    &nbsp;
                    <asp:Button ID="export" runat="server" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Text="Excel数据导出" Width="96px" OnClick="export_Click" />
                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; <asp:CheckBox ID="selectAll"
                        runat="server" Text="全选 / 全不选" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Height="19px" Width="101px" AutoPostBack="True" OnCheckedChanged="selectAll_CheckedChanged"/>&nbsp; <asp:Button ID="delete" runat="server" Text="删除" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Width="57px" Height="23px" OnClick="delete_Click"/>&nbsp;
                    &nbsp;第 <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Italic="False"
                        ForeColor="Red" Text="Label"></asp:Label>&nbsp; 页 共
                    <asp:Label ID="totalNumber" runat="server" Font-Bold="False" Font-Italic="False"
                        ForeColor="Red" Text="Label"></asp:Label>
                    &nbsp;页 &nbsp; &nbsp;<asp:Button ID="firstPage" runat="server" Text="首页" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Width="57px" Height="23px" OnClick="firstPage_Click"/>
                    <asp:Button ID="upPage" runat="server" Text="上一页" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Width="57px" Height="23px" OnClick="upPage_Click"/>
                    &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="downPage" runat="server" Text="下一页" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Width="57px" Height="23px" OnClick="downPage_Click"/>&nbsp;
                    <asp:Button ID="lastPage" runat="server" Text="末页" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Width="57px" Height="23px" OnClick="lastPage_Click"/>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 跳转至第<asp:DropDownList ID="pageNumber" runat="server" Width="44px">
                    </asp:DropDownList>页 &nbsp;&nbsp;
                    <asp:Button ID="jump" runat="server" Text="跳转" class="btn3_mouseout" onmousedown="this.className='btn3_mousedown'"
                        onmouseout="this.className='btn3_mouseout'" onmouseover="this.className='btn3_mouseover'"
                        onmouseup="this.className='btn3_mouseup'" Width="31px" Height="24px" OnClick="jump_Click"/></td>
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
