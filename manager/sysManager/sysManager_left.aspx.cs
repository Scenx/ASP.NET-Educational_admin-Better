/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class manager_sysManager_sysManager_left : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["manName"]) == "")
        {
            Response.Write("<script language=javascript>location='../../TS_ManagerLogin.aspx'</script>");
            return;
        }
        
        
            systemManagePanel.Visible = false;
            studentManagePanel.Visible = false;
            teacherManagePanel.Visible = false;
            unitManagePanel.Visible = false;
            infomationStatPanel.Visible = false;
            managerManagePanel.Visible = false;
       
    }

    protected void systemManage_Click(object sender, ImageClickEventArgs e)
    {
        
        if (systemManagerTree.Visible == true)
        {
            systemManage.ImageUrl = "~/image/system/系统管理上.jpg";
            systemManagerTree.Visible = false;
            systemManagePanel.Visible = false;
            
        }
        if (systemManagerTree.Visible == false)
        {
            systemManage.ImageUrl = "~/image/system/系统管理下.jpg";
            systemManagePanel.Visible = true;
            systemManagerTree.Visible = true;
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }

    protected void studentManage_Click(object sender, ImageClickEventArgs e)
    {
        if (studentManagePanel.Visible == true)
        {
            studentManage.ImageUrl = "~/image/system/学生管理上.jpg";
            studentManagePanel.Visible = false;
            
        }
        if (studentManagePanel.Visible == false)
        {
            studentManage.ImageUrl = "~/image/system/学生管理下.jpg";
            studentManagePanel.Visible = true;
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }

    protected void teacherManage_Click(object sender, ImageClickEventArgs e)
    {
        if (teacherManagePanel.Visible == true)
        {
            teacherManage.ImageUrl = "~/image/system/老师管理上.jpg";
            teacherManagePanel.Visible = false;
        }
        if (teacherManagePanel.Visible == false)
        {
            teacherManage.ImageUrl = "~/image/system/老师管理下.jpg";
            teacherManagePanel.Visible = true;
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }

    protected void unitManage_Click(object sender, ImageClickEventArgs e)
    {
        if (unitManagePanel.Visible == true)
        {
            unitManage.ImageUrl = "~/image/system/部门管理上.jpg";
            unitManagePanel.Visible = false;
        }
        if (unitManagePanel.Visible == false)
        {
            unitManage.ImageUrl = "~/image/system/部门管理下.jpg";
            unitManagePanel.Visible = true;
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }


    protected void informationStat_Click(object sender, ImageClickEventArgs e)
    {
        if (infomationStatPanel.Visible == true)
        {
            informationManage.ImageUrl = "~/image/system/信息统计上.jpg";
            infomationStatPanel.Visible = false;
        }
        if (infomationStatPanel.Visible == false)
        {
            informationManage.ImageUrl = "~/image/system/信息统计下.jpg";
            infomationStatPanel.Visible = true;
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }

    protected void managerManage_Click(object sender, ImageClickEventArgs e)
    {
        if (managerManagePanel.Visible == true)
        {
            managerManage.ImageUrl = "~/image/system/管理员管理上.jpg";
            managerManagePanel.Visible = false;
        }
        if (managerManagePanel.Visible == false)
        {
            managerManage.ImageUrl = "~/image/system/管理员管理下.jpg";
            managerManagePanel.Visible = true;
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }
}
