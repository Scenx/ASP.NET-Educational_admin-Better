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

public partial class student_student_passwordProtect : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["stdUserName"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        
    }


    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select password from ts_xs_user where userName = '"+ Session["stdUserName"].ToString() +"'", con);
        string pwd = Convert.ToString(scd.ExecuteScalar());
        if (this.stdPwd.Text == pwd)
        {
            string answer1 = this.pwdProtectAns1.Text;
            string answer2 = this.pwdProtectAns2.Text;
            string question1 = this.pwdProtectQue1.Text ;
            string question2 = this.pwdProtectQue2.Text;
            
            string SQL = "update ts_xs_user set pwdProtectQue1 ='" + question1 + "', pwdProtectAns1='" + answer1 + "', pwdProtectQue2 ='" + question2 + "', pwdProtectAns2='" + answer2 + "' where userName = '" + Session["stdUserName"] + "'";
           
            if (bc.ExecSQL(SQL))
            {
                Response.Write(bc.MessageBox("密码保护申请成功！你的密码保护提示答案1为" + answer1 + " ,密码保护提示答案2为" + answer2 + "！请记牢，密码取回时使用！"));
            }
            else
            {
                Response.Write(bc.MessageBox("提交失败！系统忙！请稍后重新再试！"));
            }
        }
        con.Close();
    }
}
