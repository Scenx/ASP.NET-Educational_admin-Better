<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sys_studentMenuManage.aspx.cs" Inherits="manager_sysManager_systemManage_sys_studentMenuManage" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生菜单管理</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 740px; height: 490px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; &nbsp; 系统管理→菜单管理→学生菜单管理</td>
            </tr>
            <tr style="height: 465px">
                <td colspan="3" rowspan="2" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="0"  cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 25px; text-align: left">
                        <tr style="height: 25px">
                            <td colspan="3">
                                &nbsp;&nbsp; 学生菜单管理→主菜单管理：</td>
                        </tr>
                        
                    </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="White" CellPadding="4" Width="735px">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PreviousPageText="下一页" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="stdMainMenuName" HeaderText="主菜单名称" />
                            <asp:BoundField DataField="stdMainMenuUrl" HeaderText="链接地址">
                                <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="stdMainMenuStatus" HeaderText="菜单状态">
                                <ItemStyle Font-Bold="False" ForeColor="Red" />
                            </asp:BoundField>
                            <asp:ButtonField ButtonType="Button" HeaderText="启用" Text="启用" />
                            <asp:ButtonField ButtonType="Button" HeaderText="关闭" Text="关闭" />
                            <asp:ButtonField ButtonType="Button" HeaderText="临时删除" Text="临时删除" />
                            <asp:ButtonField ButtonType="Button" HeaderText="上移" Text="上移" />
                            <asp:ButtonField ButtonType="Button" HeaderText="下移" Text="下移" />
                        </Columns>
                        <RowStyle ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />
                    </asp:GridView>
                    <table border="0"  cellpadding="0"
                        cellspacing="0" class="css" style="width: 735px; height: 25px; text-align: left">
                        <tr style="height: 25px">
                            <td colspan="3">
                                &nbsp;&nbsp; 学生菜单管理→子菜单管理→<asp:DropDownList ID="DropDownList1" runat="server" CssClass="css"
                                    Width="126px" AutoPostBack="True">
                                    <asp:ListItem>网上选课</asp:ListItem>
                                    <asp:ListItem>网上报名</asp:ListItem>
                                    <asp:ListItem>教学质量评估</asp:ListItem>
                                    <asp:ListItem>信息维护</asp:ListItem>
                                    <asp:ListItem>信息查询</asp:ListItem>
                                    <asp:ListItem>其他</asp:ListItem>
                                    <asp:ListItem>实习实践信息维护</asp:ListItem>
                                    <asp:ListItem>退出系统</asp:ListItem>
                                </asp:DropDownList>：</td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="White" CellPadding="4" Width="735px">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PreviousPageText="下一页" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="stdSubMenuName" HeaderText="子菜单名称" />
                            <asp:BoundField DataField="stdSubMenuUrl" HeaderText="链接地址">
                                <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="stdSubMenuStatus" HeaderText="菜单状态">
                                <ItemStyle Font-Bold="False" ForeColor="Red" />
                            </asp:BoundField>
                            <asp:ButtonField ButtonType="Button" HeaderText="启用" Text="启用" />
                            <asp:ButtonField ButtonType="Button" HeaderText="关闭" Text="关闭" />
                            <asp:ButtonField ButtonType="Button" HeaderText="临时删除" Text="临时删除" />
                            <asp:ButtonField ButtonType="Button" HeaderText="上移" Text="上移" />
                            <asp:ButtonField ButtonType="Button" HeaderText="下移" Text="下移" />
                        </Columns>
                        <RowStyle ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />
                    </asp:GridView>
                    &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
