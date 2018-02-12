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

public partial class student_student_examineMark : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["stdUserName"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        if (!IsPostBack)
        {
            this.studyYear.Items.Insert(0, new ListItem(""));
        }

    }


    protected void semesterMark_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_semesterMark.aspx", false);
    }

    protected void tiptopMark_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_tiptopMark.aspx", false);
    }

    protected void unpassMark_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_unpassMark.aspx", false);
    }

    protected void passyearMark_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_pastyearMark.aspx", false);
    }
    protected void studyYearMark_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_studyYearMark.aspx", false);
    }
}
