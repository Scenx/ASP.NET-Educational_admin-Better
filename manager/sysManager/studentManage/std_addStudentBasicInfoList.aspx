<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_addStudentBasicInfoList.aspx.cs" Inherits="manager_sysManager_studentManage_std_addStudentBasicInfoList" %>

<%@ Register Src="sysManager_foot.ascx" TagName="sysManager_foot" TagPrefix="uc1" %>
<%@ Register Src="sysManager_main.ascx" TagName="sysManager_main" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生管理→基本信息管理→编辑学生基本信息</title>
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../../CSS/CSS.css" rel="stylesheet" type="text/css" />

</head>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1003px; height: 650px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 59px">
                <td colspan="3">
                    <uc2:sysManager_main ID="SysManager_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="background-image: url(../../../image/system/main_top_bg.gif); height: 25px;" colspan="3">
                    &nbsp; 学生管理→基本信息管理→编辑学生基本信息</td>
            </tr>
            <tr style="height: 516px">
                <td colspan="3" style="vertical-align: top; background-color: #dee9f9; text-align: center">
                    <iframe frameborder="0" name="left" scrolling="auto" src="std_addStdBasicInfoList.aspx" style="width: 1003px;
                        height: 490px; background-color: #dee9f9"></iframe>
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
