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
using System.Data.SqlClient;

public partial class student_student_pwdChange : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["stdUserName"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        if (!IsPostBack)
        {
            this.studyNumber.Text = Session["stdUserName"].ToString();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select password from ts_xs_user where userName ='" + Session["stdUserName"].ToString() + "'", con);
        string pwd = Convert.ToString(scd.ExecuteScalar());
        con.Close();
        if (this.oldpwd.Text != pwd)
        {
            Response.Write("<script>alert('你所输入的原始密码不正确！');history.back()</script>");
        }
        else
        {
            string newPwd = this.newpwd.Text;
            if (newPwd.Length >= 20)
            {
                Response.Write("<script>alert('你所输入的新密码长度太长！');history.back()</script>");

            }
            else
            {
                if (this.newpwd.Text != this.newpwdagain.Text)
                {
                    Response.Write("<script>alert('你两次输入的新密码不一致！请重新输入！');history.back()</script>");
                }
                else
                {
                    string SQL = "update ts_xs_user set password='" + newPwd + "' where userName ='" + Session["stdUserName"].ToString() + "'";
                    
                    if (bc.ExecSQL(SQL))
                    {
                        
                        Response.Write("<script>alert('新密码修改成功！你的新密码为" + newPwd + "！请记牢哦！')</script>");
                        
                    }
                    else
                    {
                        Response.Write("<script>alert('系统忙！提交失败！请稍后再试！');history.back()</script>");
                    }
                }
                
            }
        }
        
    }
}
