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
using System.Text;
using System.IO;
using System.Drawing;
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_studentManage_std_addGradeTestSignUpInfo : System.Web.UI.Page
{
    System.Text.StringBuilder sb = new StringBuilder();
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
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.testStudyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.testStudyYear.DataTextField = "studyYear";
            this.testStudyYear.DataBind();

            con.Close();
        }
    }


    protected void submit_Click(object sender, EventArgs e)
    {
        string testName = this.testName.Text;
        string testDate = this.testDate.Text;
        string testTime = this.testTime.Text;
        string testStyle = this.testStyle.Text;
        string testStudyYear = this.testStudyYear.Text;
        string testSmester1 = this.testSmester.Text;
        int testSemester2 = Math.Abs(Convert.ToInt32(testSmester1));
        string restrictObject = this.restrictObject.Text;
        string faceObject = this.faceObject.Text;
        string remark = this.remark.Text;
        string testRequire = this.testRequire.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        //SqlCommand scd = new SqlCommand("insert into ts_xs_fourSixGradeTextSignUp (signupYear,signSemester,testDate,testName,testStyle,testRequire,faceObject,restrictObject,remark,testTime) values ('" + testStudyYear +"','" + testSemester2 +"','" + testDate +"','" + testName +"','" + testStyle +"','" + testRequire +"','" + faceObject +"','" + restrictObject +"','" + remark +"','" + testTime +"') ", con);
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_fourSixGradeTextSignUp where testName ='"+ testName +"' and signupYear ='"+ testStudyYear +"' and signSemester ='"+ testSemester2 +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count == 0)
        {
            string SQL = "insert into ts_xs_fourSixGradeTextSignUp (signupYear,signSemester,testDate,testName,testStyle,testRequire,faceObject,restrictObject,remark,testTime) values ('" + testStudyYear + "','" + testSemester2 + "','" + testDate + "','" + testName + "','" + testStyle + "','" + testRequire + "','" + faceObject + "','" + restrictObject + "','" + remark + "','" + testTime + "') ";
            if (bc.ExecSQL(SQL))
            {
                sb.Append("考试名称：" + this.testName.Text + " 考试类型：" + this.testStyle.Text + " 考试学年：" + this.testStudyYear.Text + " 考试学期：" + this.testSmester.Text + " 数据提交成功...");
                this.submitResult.Text = sb.ToString();
                this.submitResult.Visible = true;
                this.testDate.Text = "";
                this.testTime.Text = "";
                this.restrictObject.Text = "";
                this.testRequire.Text = "";
                this.faceObject.Text = "";
                this.remark.Text = "";
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败，网络忙，请稍后再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("此等级考试已被上传！"));
        }
        con.Close();
    }

   
}
