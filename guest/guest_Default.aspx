<%@ Page Language="C#" AutoEventWireup="true" CodeFile="guest_Default.aspx.cs" Inherits="guest_guest_Default" %>

<%@ Register Src="guest_main.ascx" TagName="guest_main" TagPrefix="uc1" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
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
        <table style="width: 1003px; height: 620px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 110px">
                <td colspan="3">
                    <uc1:guest_main ID="Guest_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 460px">
                <td style="vertical-align: top; text-align: center; background-color: #dee9f9;" colspan="3">
                    <table border="0" cellpadding="0" cellspacing="0" class="css" style="width: 1003px;
                        height: 440px">
                        <tr style="height:25px">
                            <td style="width: 25px">
                                <asp:Image ID="Image1" runat="server" Height="25px" ImageUrl="~/image/system/公告1.jpg"
                                    Width="25px" /></td>
                            <td colspan="2" style="width: 978px; background-image: url(../image/system/main_top_bg.gif); text-align: left;">
                                →校内通知公告</td>
                        </tr>
                        <tr style="height:415px">
                            <td colspan="3" style="vertical-align: top; text-align: left">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Size="12px"
                                    HorizontalAlign="Center" PageSize="8" Width="1003px">
                                    <FooterStyle BackColor="#EFEFEF" ForeColor="#003399" />
                                    <Columns>
                                        <asp:BoundField DataField="title" HeaderText="新闻标题">
                                            <ItemStyle Width="400px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="releaseUnit" HeaderText="发布单位" />
                                        <asp:BoundField DataField="releaseDate" HeaderText="发布日期" />
                                        <asp:BoundField DataField="dateLimit" HeaderText="有效日期" />
                                    </Columns>
                                    <RowStyle ForeColor="#003399" />
                                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <PagerStyle BackColor="#EFEFEF" ForeColor="#003399" HorizontalAlign="Right" />
                                    <HeaderStyle BackColor="#003399" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#EFEFFF" />
                                </asp:GridView>
                            </td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
            <tr style="height: 50px">
                <td colspan="3">
                    <uc2:foot ID="Foot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
