<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_coursesTable.aspx.cs" Inherits="student_student_coursesTable" %>

<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>

<%@ Register Src="student_main.ascx" TagName="student_main" TagPrefix="uc1" %>

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
    <link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1003px; height: 1525px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr>
                <td colspan="3" style="height: 110px">
                    <uc1:student_main ID="Student_main1" runat="server" />
                    
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 25px; background-image: url(../image/system/main_top_bg.gif);">
                    &nbsp;&nbsp; 信息查询→个人课表查询</td>
            </tr>
            <tr>
                <td colspan="3" style="height: 1340px; vertical-align: top; text-align: center; background-color: #dee9f9;">
                    <table style="width: 995px; height: 75px"  border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0" cellspacing="0" class="css">
                        <tr style="height :25px">
                            <td style="background-color: #e4ecf3; text-align: left; width: 263px;">
                                &nbsp;学号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; background-color: #e4ecf3; text-align: left">
                                &nbsp;专业：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; background-color: #e4ecf3; text-align: left">
                                &nbsp;教学班：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                        </tr >
                        <tr style="height :25px">
                            <td style="background-color: #e4ecf3; text-align: left; width: 263px;">
                                &nbsp;姓名：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; background-color: #e4ecf3; text-align: left">
                                &nbsp;学院：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 370px; background-color: #e4ecf3; text-align: left">
                                &nbsp;行政班：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="height :25px">
                            <td style="background-color: #e4ecf3; text-align: left; width: 263px;">
                                &nbsp;年级：<asp:Label ID="stdGrade" runat="server"></asp:Label></td>
                            <td style="width: 370px; background-color: #e4ecf3; text-align: left">
                                &nbsp;学年：<asp:DropDownList ID="studyYear" runat="server" Width="100px" AutoPostBack="True" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 370px; background-color: #e4ecf3; text-align: left">
                                &nbsp;学期： &nbsp;
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="45px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                     </table>
                     
                                <table border="1" cellpadding="0" cellspacing="0" class="css"  bordercolordark="#003399" bordercolorlight="#6a82dd" style="width: 995px;
                                    height: 1205px; text-align: center; font-size: 10pt;">
                                    <tr>
                                        <td colspan="2" style="height: 25px">
                                            时间</td>
                                        <td style="width: 134px; height: 25px">
                                            星期一</td>
                                        <td style="width: 134px; height: 25px">
                                            星期二</td>
                                        <td style="width: 134px; height: 25px">
                                            星期三</td>
                                        <td style="width: 134px; height: 25px">
                                            星期四</td>
                                        <td style="width: 134px; height: 25px">
                                            星期五</td>
                                        <td style="width: 134px; height: 25px">
                                            星期六</td>
                                        <td style="width: 134px; height: 25px">
                                            星期日</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="height: 40px">
                                            早上</td>
                                        <td style="width: 134px; height: 40px">
                                            &nbsp;</td>
                                        <td style="width: 134px; height: 40px">
                                            &nbsp;</td>
                                        <td style="width: 134px; height: 40px">
                                            &nbsp;</td>
                                        <td style="width: 134px; height: 40px">
                                            &nbsp;</td>
                                        <td style="width: 134px; height: 40px">
                                            &nbsp;</td>
                                        <td style="width: 134px; height: 40px">
                                            &nbsp;</td>
                                        <td style="width: 134px; height: 40px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px;" rowspan="4">
                                            上<br />
                                            <br />
                                            <br />
                                            午</td>
                                        <td style="width: 23px; height: 95px;">
                                            第一节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label31" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label42" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label55" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label67" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label79" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第二节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label32" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label44" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label56" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label68" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label80" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第三节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label33" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label45" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label57" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label69" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label81" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第四节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label43" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label46" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label58" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label70" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label82" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px;" rowspan="4">
                                            下<br />
                                            <br />
                                            <br />
                                            午</td>
                                        <td style="width: 23px; height: 95px;">
                                            第五节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label23" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label34" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label47" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label59" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label71" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label83" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第六节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label24" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label35" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label48" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label60" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label72" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label84" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第七节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label25" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label36" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label49" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label61" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label73" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label85" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第八节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label26" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label37" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label50" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label62" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label74" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label86" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px;" rowspan="4">
                                            晚<br />
                                            <br />
                                            <br />
                                            上</td>
                                        <td style="width: 23px; height: 95px;">
                                            第九节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label27" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label38" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label51" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label63" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label75" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label87" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第十节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label28" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label39" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label52" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label64" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label76" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label88" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第十一节</td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label29" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label40" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label53" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label65" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label77" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label89" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 23px; height: 95px;">
                                            第十二节</td>
                                        <td style="width: 134px; height: 95px;">
                                            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label41" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label54" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            <asp:Label ID="Label66" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            <asp:Label ID="Label78" runat="server" Text="Label"></asp:Label></td>
                                        <td style="width: 134px; height: 95px;">
                                            &nbsp;<asp:Label ID="Label90" runat="server" Text="Label"></asp:Label></td>
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
