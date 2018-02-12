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
using System.Drawing;
using System.Text;
using System.IO;


public partial class manager_sysManager_teacherManage_tea_addTeacherUserInfo : System.Web.UI.Page
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
            this.RequiredFieldValidator2.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
        }
    }
    protected void infoExport_Click(object sender, EventArgs e)
    {
        string teacherCode = this.teacherCode.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_teacher_teachersBasicInfo where teacherCode ='" + teacherCode + "'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count > 0)
        {
            this.RequiredFieldValidator2.Enabled = true;
            this.RequiredFieldValidator3.Enabled = true;
           

            this.teacherCode.ReadOnly = true;
            this.infoExport.Enabled = false;
            this.submit.Enabled = true;


            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_teacher_teachersBasicInfo where teacherCode ='" + teacherCode + "'", con);

            sda1.Fill(ds, "ts_teacher_teachersBasicInfo");
            DataRowView rowview = ds.Tables["ts_teacher_teachersBasicInfo"].DefaultView[0];

            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.duty.Text = rowview["duty"].ToString();
            this.technicalpost.Text = rowview["technicalpost"].ToString();
        }
        else
        {
            Response.Write(bc.MessageBox("请您校验您输入的教师编号！在数据库中未能找到相关信息！"));
        }
        con.Close();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string teacherCode = this.teacherCode.Text;
        string userName = this.userName.Text;
        string teacherPwd = this.teacherPwd.Text;
        string teacherName = this.teacherName.Text;
        string college = this.college.Text;
        string duty = this.duty.Text;
        string IDcardNumber = this.IDcardNumber.Text;
        string technicalpost = this.technicalpost.Text;
        
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_teacher_user where teacherCode ='" + teacherCode + "'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        con.Close();
        if (count == 0)
        {
            string SQL = "insert into ts_teacher_user (userName,password,teacherCode,IDcardNumber,teacherName,college,duty,technicalpost) values ('" + userName + "','" + teacherPwd + "','" + teacherCode + "','" + IDcardNumber + "','" + teacherName + "','" + college + "','" + duty + "','" + technicalpost + "')";
            if (bc.ExecSQL(SQL))
            {
                System.Text.StringBuilder sb1 = new StringBuilder();
                sb1.Append("用户名：" + userName + " 密码：" + teacherPwd + "教师编号：" + teacherCode + " 教师姓名：" + teacherName + "  教师职称： " + technicalpost + "  教师学院：" + college + " 数据提交成功...");
                this.submitResult.Text = sb1.ToString();
                this.submitResult.Visible = true;

                this.RequiredFieldValidator2.Enabled = false;
                this.RequiredFieldValidator3.Enabled = false;

                this.teacherCode.ReadOnly = false;
                this.infoExport.Enabled = true;
                this.submit.Enabled = false;


                this.teacherCode.Text = "";
                this.teacherName.Text = "";
                this.technicalpost.Text = "";
                this.college.Text = "";
                this.IDcardNumber.Text = "";
                this.duty.Text = "";

                this.userName.Text = "";
                this.teacherPwd.Text = "";
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("已有管理员为此教工上传过用户信息！"));
        }
    }
    
}
