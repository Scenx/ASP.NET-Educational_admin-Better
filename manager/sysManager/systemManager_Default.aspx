<%@ Page Language="C#" AutoEventWireup="true" CodeFile="systemManager_Default.aspx.cs" Inherits="manager_sysManager_systemManager_Default" %>

<%@ Register Src="sysManager_main.ascx" TagName="sysManager_main" TagPrefix="uc1" %>
<%@ Register Src="sysManager_foot.ascx" TagName="sysManager_foot" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

    <title>华北水利水电大学电子教务系统后台管理</title>
    <link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <link href="../../CSS/CSS.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 33px;
        }
        .auto-style2 {
            height: 765px;
            width: 1418px;
        }
        .auto-style3 {
            height: 764px;
            width: 267px;
        }
    </style>
</head>
<script language="javascript">
function GetContent()
{
	var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.open("GET","sysManager_left.aspx",false);
	xmlhttp.send();
	var content=xmlhttp.responseText;//返回中文的话需要中间转码处理
//比如页面有一个div id=test
//window.test.innerText=content;
}
setTimeout("GetContent()",5000)//5秒刷新一次
</script>
<body style="margin-top: 0px; margin-bottom: 0px; margin-right:0px; margin-left:0px" class="css" onload="GetContent">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1660px; height: 912px" border="0" cellpadding="0" cellspacing="0" class="css">
            <tr style="height: 84px">
                <td colspan="3">
                    <uc1:sysManager_main ID="SysManager_main1" runat="server" />
                </td>
            </tr>
            <tr style="height: 486px">
                <td style="vertical-align: top; text-align: left; background-color: #dee9f9;" class="auto-style1">
                <iframe style="background-color: #dee9f9;" frameborder="0"  name="left" scrolling="auto" src="sysManager_left.aspx" class="auto-style3" >
        </iframe>
                </td>
                <td colspan="2" style="width: 750px; vertical-align: top; text-align: left;">
                <iframe style="background-color: #dee9f9; margin-left: 0px;" frameborder="0"  name="main" scrolling="auto" src="http://www2.ncwu.edu.cn/jiaowu/" class="auto-style2" ></iframe>
                </td>
            </tr>
            <tr style="height: 50px">
                <td colspan="3">
                    <span style="color: #0000ff; text-decoration: underline">
                        <uc2:sysManager_foot ID="SysManager_foot1" runat="server" />
                    </span>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
