<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_findGradeTestSignUpDetail.aspx.cs" Inherits="manager_sysManager_studentManage_std_findGradeTestSignUpDetail" %>

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
            height: 490px; text-align: left; background-color: #dee9f9;">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; 等级考试报名管理→查看等级考试报名</td>
            </tr>
            <tr style="height: 415px">
                <td colspan="3" style="vertical-align: top">
                    &nbsp;
                    <asp:Label ID="search" runat="server" Font-Bold="False" Font-Size="11pt" ForeColor="Red"
                        Text="没有找到等级考试报名信息！"></asp:Label><br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="White" CellPadding="4" CssClass="css" Font-Size="12px"
                        OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound"
                        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" PageSize="8"
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
                            <asp:BoundField DataField="testName" HeaderText="考试名称">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="testStyle" HeaderText="考试类型">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="faceObject" HeaderText="面向对象">
                                <ItemStyle Width="120px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="testRequire" HeaderText="考试要求">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="signupYear" HeaderText="报名学年">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="signSemester" HeaderText="报名学期" />
                            <asp:CommandField EditText="详细信息" HeaderText="详细信息" ShowEditButton="True">
                                <ItemStyle ForeColor="Red" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="删除考试" ShowDeleteButton="True">
                                <ItemStyle ForeColor="Red" />
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
                        Text="Label"></asp:Label>&nbsp; 页 &nbsp; 共
                    <asp:Label ID="totalNumber" runat="server" Font-Bold="False" Font-Italic="False" ForeColor="Red"
                        Text="Label"></asp:Label>
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
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;跳转至第<asp:DropDownList ID="pageNumber" runat="server"
                        Width="44px">
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
