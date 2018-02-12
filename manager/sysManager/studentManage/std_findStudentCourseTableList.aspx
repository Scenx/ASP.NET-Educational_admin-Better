<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_findStudentCourseTableList.aspx.cs" Inherits="manager_sysManager_studentManage_std_findStudentCourseTableList" %>

<%@ Register Src="sysManager_foot.ascx" TagName="sysManager_foot" TagPrefix="uc1" %>
<%@ Register Src="sysManager_main.ascx" TagName="sysManager_main" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>查找课表</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1003px; height: 490px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:sysManager_main ID="SysManager_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td colspan="3" style="background-image: url(../../../image/system/main_top_bg.gif)">
                    &nbsp; &nbsp; 学生管理→课表信息管理→查找学生课表</td>
            </tr>
            <tr style="height: 356px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <table border="1" bordercolordark="#003399" bordercolorlight="#6a82dd" cellpadding="0"
                        cellspacing="0" class="css" style="font-size: 10pt; width: 995px; height: 1205px;
                        text-align: center">
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
                            <td rowspan="4" style="width: 23px">
                                上<br />
                                <br />
                                <br />
                                午</td>
                            <td style="width: 23px; height: 95px">
                                第一节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label51" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label52" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label53" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label54" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label135" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label136" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label137" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label138" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label139" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label140" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label141" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label142" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label199" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label200" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label201" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label202" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label247" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label248" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label249" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label250" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label323" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label324" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label325" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label326" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第二节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label55" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label56" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label57" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label58" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label131" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label132" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label133" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label134" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label143" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label144" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label145" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label146" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label203" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label204" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label205" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label206" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label251" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label252" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label253" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label254" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label319" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label320" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label321" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label322" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第三节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label59" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label60" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label61" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label62" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label127" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label128" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label129" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label130" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label147" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label148" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label149" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label150" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label207" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label208" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label209" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label210" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label255" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label256" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label257" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label258" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label315" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label316" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label317" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label318" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第四节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label63" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label64" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label65" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label66" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label123" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label124" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label125" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label126" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label151" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label152" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label153" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label154" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label211" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label212" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label213" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label214" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label259" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label260" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label261" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label262" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label311" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label312" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label313" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label314" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td rowspan="4" style="width: 23px">
                                下<br />
                                <br />
                                <br />
                                午</td>
                            <td style="width: 23px; height: 95px">
                                第五节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label67" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label68" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label69" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label70" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label119" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label120" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label121" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label122" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label155" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label156" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label157" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label158" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label215" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label216" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label217" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label218" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label263" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label264" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label265" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label266" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label307" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label308" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label309" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label310" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第六节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label71" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label72" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label73" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label74" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label115" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label116" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label117" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label118" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label159" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label160" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label161" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label162" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label219" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label220" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label221" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label222" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label267" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label268" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label269" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label270" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label303" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label304" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label305" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label306" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第七节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label75" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label76" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label77" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label78" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label111" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label112" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label113" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label114" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label163" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label164" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label165" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label166" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label223" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label224" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label225" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label226" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label271" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label272" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label273" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label274" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label299" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label300" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label301" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label302" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第八节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label36" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label79" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label80" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label81" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label82" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label107" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label108" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label109" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label110" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label167" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label168" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label169" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label170" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label227" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label228" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label229" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label230" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label275" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label276" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label277" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label278" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label295" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label296" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label297" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label298" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td rowspan="4" style="width: 23px">
                                晚<br />
                                <br />
                                <br />
                                上</td>
                            <td style="width: 23px; height: 95px">
                                第九节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label83" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label84" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label85" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label86" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label103" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label104" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label105" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label106" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label171" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label172" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label173" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label174" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label231" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label232" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label233" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label234" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label279" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label280" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label281" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label282" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label291" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label292" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label293" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label294" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第十节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label44" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label45" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label46" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label87" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label88" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label89" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label90" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label99" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label100" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label101" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label102" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label175" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label176" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label177" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label178" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label235" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label236" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label237" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label238" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label283" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label284" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label285" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label286" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label287" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label288" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label289" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label290" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第十一节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label47" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label48" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label49" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label50" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label91" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label92" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label93" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label94" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label95" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label96" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label97" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label98" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label179" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label180" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label181" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label182" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label239" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label240" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label241" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label242" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label327" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label328" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label329" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label330" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label331" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label332" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label333" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label334" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 23px; height: 95px">
                                第十二节</td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label183" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label184" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label185" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label186" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label187" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label188" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label189" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label190" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label191" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label192" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label193" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label194" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label195" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label196" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label197" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label198" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label243" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label244" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label245" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label246" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label339" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label340" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label341" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label342" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 134px; height: 95px">
                                <asp:Label ID="Label335" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label336" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label337" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label338" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 50px">
                <td colspan="3">
                    <uc1:sysManager_foot ID="SysManager_foot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
