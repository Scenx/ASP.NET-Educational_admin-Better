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
using System.Text;
using System.IO;
using System.Data.SqlClient;

public partial class manager_sysManager_teacherManage_tea_addTeacherPunishInfo : System.Web.UI.Page
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
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator5.Enabled = false;
            
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
            this.RequiredFieldValidator1.Enabled = true;
            this.RequiredFieldValidator3.Enabled = true;
            
            this.RequiredFieldValidator4.Enabled = true;
            this.RequiredFieldValidator5.Enabled = true;
            this.RegularExpressionValidator1.Enabled = true;

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

            this.punishUnit.BackColor = System.Drawing.Color.White;
            this.punishName.BackColor = System.Drawing.Color.White;
            this.punishDate.BackColor = System.Drawing.Color.White;
            this.punishCause.BackColor = System.Drawing.Color.White;
            

            
            this.punishName.ReadOnly = false;
            this.punishDate.ReadOnly = false;
            this.punishCause.ReadOnly = false;
            this.punishUnit.ReadOnly = false;
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
        string IDcardNumber = this.IDcardNumber.Text;
        string teacherName = this.teacherName.Text;
        string college = this.college.Text;
        string duty = this.duty.Text;
        string technicalpost = this.technicalpost.Text;
        string punishCause = this.punishCause.Text;
        string punishUnit = this.punishUnit.Text;
        string punishDate = this.punishDate.Text;
        string punishName = this.punishName.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_teacher_punishInfo where teacherCode ='" + teacherCode + "'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        System.Text.StringBuilder sb = new StringBuilder();
        sb.Append(teacherCode);
        sb.Append("_");
        sb.Append(Convert.ToString(count + 1));
        string punishCode = sb.ToString();
        string SQL = "insert into ts_teacher_punishInfo (punishCode,teacherCode,IDcardNumber,teacherName,college,duty,technicalpost,punishCause,punishUnit,punishDate,punishName) values ('" + punishCode +"','" + teacherCode +"','" + IDcardNumber +"','" + teacherName +"','" + college +"','" + duty +"','" + technicalpost +"','" + punishCause +"','" + punishUnit +"','" + punishDate +"','" + punishName +"')";
        if (bc.ExecSQL(SQL))
        {
            System.Text.StringBuilder sb1 = new StringBuilder();
            sb1.Append("处罚编号：" + punishCode + " 教师编号：" + teacherCode + "姓名：" + teacherName + " 处罚名称：" + punishName + "  处罚单位： " + punishUnit + "  教师学院：" + college + " 数据提交成功...");
            this.submitResult.Text = sb1.ToString();
            this.submitResult.Visible = true;

            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator5.Enabled = false;
           

            this.teacherCode.ReadOnly = false;
            this.infoExport.Enabled = true;
            this.submit.Enabled = false;

            this.punishUnit.BackColor = System.Drawing.Color.Transparent;
            this.punishName.BackColor = System.Drawing.Color.Transparent;
            this.punishDate.BackColor = System.Drawing.Color.Transparent;
            this.punishCause.BackColor = System.Drawing.Color.Transparent;



            this.punishName.ReadOnly = true;
            this.punishDate.ReadOnly = true;
            this.punishCause.ReadOnly = true;
            this.punishUnit.ReadOnly = true;

            this.teacherCode.Text = "";
            this.teacherName.Text = "";
            this.technicalpost.Text = "";
            this.college.Text = "";
            this.IDcardNumber.Text = "";
            this.duty.Text = "";
            this.punishCause.Text = "";
            this.punishDate.Text = "";
            this.punishName.Text = "";
            this.punishUnit.Text = "";
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
    }
}
