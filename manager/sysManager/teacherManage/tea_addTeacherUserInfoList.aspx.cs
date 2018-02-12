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
using System.Drawing;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class manager_sysManager_teacherManage_tea_addTeacherUserInfoList : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["manName"]) == "")
        {
            Response.Write("<script language=javascript>location='../../../TS_ManagerLogin.aspx'</script>");
            return;
        }
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_teacher_user where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_teacher_user");
            DataRowView rowview = ds.Tables["ts_teacher_user"].DefaultView[0];
            this.userName.Text = rowview["userName"].ToString();
            this.teacherPwd.Text = rowview["password"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.technicalpost.Text = rowview["technicalpost"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.duty.Text = rowview["duty"].ToString();
            this.pwdProtectQue1.Text = rowview["pwdProtectQue1"].ToString();
            this.pwdProtectAns1.Text = rowview["pwdProtectAns1"].ToString();
            this.pwdProtectQue2.Text = rowview["pwdProtectQue2"].ToString();
            this.pwdProtectAns2.Text = rowview["pwdProtectAns2"].ToString();
            con.Close();
        }

        this.Button1.Attributes.Add("onclick", "window.close();");
    }
}
