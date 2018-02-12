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

public partial class findPwd : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (findPwdMultiView.ActiveViewIndex != 0)
        {
            findPwdMultiView.ActiveViewIndex = 0;
        }
        sudentFindPwd.ImageUrl = "~/image/system/学生.jpg";
        teacherFindPwd.ImageUrl = "~/image/system/老师1.jpg";
        managerFindPwd.ImageUrl = "~/image/system/管理员1.jpg";

    }
    protected void student_Command(object sender, CommandEventArgs e)
    {
        if (findPwdMultiView.ActiveViewIndex > -1 & findPwdMultiView.ActiveViewIndex < 5)
        {
            findPwdMultiView.ActiveViewIndex = 0;
            sudentFindPwd.ImageUrl = "~/image/system/学生.jpg";
            teacherFindPwd.ImageUrl = "~/image/system/老师1.jpg";
            managerFindPwd.ImageUrl = "~/image/system/管理员1.jpg";
        }
           
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }
    protected void teacher_Command(object sender, ImageClickEventArgs e)
    {
        if (findPwdMultiView.ActiveViewIndex > -1 & findPwdMultiView.ActiveViewIndex < 5)
        {
            findPwdMultiView.ActiveViewIndex = 2;
            sudentFindPwd.ImageUrl = "~/image/system/学生1.jpg";
            teacherFindPwd.ImageUrl = "~/image/system/老师.jpg";
            managerFindPwd.ImageUrl = "~/image/system/管理员1.jpg";
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }
    protected void manager_Command(object sender, ImageClickEventArgs e)
    {
        if (findPwdMultiView.ActiveViewIndex > -1 & findPwdMultiView.ActiveViewIndex < 5)
        {
            findPwdMultiView.ActiveViewIndex = 4;
            sudentFindPwd.ImageUrl = "~/image/system/学生1.jpg";
            teacherFindPwd.ImageUrl = "~/image/system/老师1.jpg";
            managerFindPwd.ImageUrl = "~/image/system/管理员.jpg";
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }
    protected void studentNext_Command(object sender, EventArgs e)
    {
        if (findPwdMultiView.ActiveViewIndex > -1 & findPwdMultiView.ActiveViewIndex < 5)
        {
            findPwdMultiView.ActiveViewIndex = 1;
            sudentFindPwd.ImageUrl = "~/image/system/学生.jpg";
            teacherFindPwd.ImageUrl = "~/image/system/老师1.jpg";
            managerFindPwd.ImageUrl = "~/image/system/管理员1.jpg";
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }

    protected void teacherNext_Command(object sender, EventArgs e)
    {
        if (findPwdMultiView.ActiveViewIndex > -1 & findPwdMultiView.ActiveViewIndex < 5)
        {
            findPwdMultiView.ActiveViewIndex = 3;
            sudentFindPwd.ImageUrl = "~/image/system/学生1.jpg";
            teacherFindPwd.ImageUrl = "~/image/system/老师.jpg";
            managerFindPwd.ImageUrl = "~/image/system/管理员1.jpg";
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }
     protected void managerNext_Command(object sender, EventArgs e)
    {
        if (findPwdMultiView.ActiveViewIndex > -1 & findPwdMultiView.ActiveViewIndex < 5)
        {
            findPwdMultiView.ActiveViewIndex = 5;
            sudentFindPwd.ImageUrl = "~/image/system/学生.jpg";
            teacherFindPwd.ImageUrl = "~/image/system/老师1.jpg";
            managerFindPwd.ImageUrl = "~/image/system/管理员1.jpg";
        }
        else
        {
            throw new Exception(" 发生了一个小错误！");
        }
    }
}
