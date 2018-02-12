<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_Default.aspx.cs" Inherits="teacher_teacher_Default" %>

<%@ Register Src="teacher_main.ascx" TagName="teacher_main" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>华北水利水电大学欢迎您！</title>
    <link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div align="center">
        <table style="width: 1004px; height: 620px; background-color: #dee9f9;" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:teacher_main ID="Teacher_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 25px">
                    <asp:Image ID="Image1" runat="server" Height="25px" ImageUrl="~/image/system/公告1.jpg"
                        Width="25px" /></td>
                <td colspan="2" style="width: 985px">
                    →校内通知公告</td>
            </tr>
            <tr style="height: 205px">
                <td colspan="3" style="vertical-align: top; text-align: left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Size="12px"
                        HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated"
                        PageSize="8" Width="1003px">
                        <FooterStyle BackColor="#EFEFEF" ForeColor="#003399" />
                        <Columns>
                            <asp:TemplateField HeaderText="新闻标题">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="LBClick" ForeColor="#003399">LinkButton</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle Width="400px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="releaseUnit" HeaderText="发布单位">
                                <ItemStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="releaseDate" HeaderText="发布日期">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dateLimit" HeaderText="有效日期">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                        </Columns>
                        <RowStyle ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <PagerStyle BackColor="#EFEFEF" ForeColor="#003399" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#003399" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />
                    </asp:GridView>
                </td>
            </tr>
             <tr style="height: 25px">
                <td style="width: 25px">
                    <asp:Image ID="Image2" runat="server" Height="25px" ImageUrl="~/image/system/公告1.jpg"
                        Width="25px" /></td>
                <td colspan="2" style="width: 985px">
                    →教务处通知公告</td>
            </tr>
            <tr style="height: 205px">
                <td colspan="3" style="vertical-align: top; text-align: left">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Size="12px"
                        HorizontalAlign="Center" OnRowCommand="GridView2_RowCommand" OnRowCreated="GridView2_RowCreated"
                        PageSize="8" Width="1003px">
                        <FooterStyle BackColor="#EFEFEF" ForeColor="#003399" />
                        <Columns>
                            <asp:TemplateField HeaderText="新闻标题">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="LBClick1" ForeColor="#003399">LinkButton</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle Width="400px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="releaseUnit" HeaderText="发布单位">
                                <ItemStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="releaseDate" HeaderText="发布日期">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dateLimit" HeaderText="有效日期">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                        </Columns>
                        <RowStyle ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <PagerStyle BackColor="#EFEFEF" ForeColor="#003399" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#003399" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#EFEFFF" />
                    </asp:GridView>
                </td>
            </tr>
             <tr style="height: 50px">
                <td colspan="3">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
