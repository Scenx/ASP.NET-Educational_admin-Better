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
using System.Text;
using System.IO;
using System.Drawing;

public partial class manager_sysManager_studentManage_std_addPunishInfoList : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
            this.punishName.Enabled = false;
            this.punishUnit.Enabled = false;
            this.punishStudyYear.Enabled = false;
            this.punishSemester.Enabled = false;
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_stdPunishInfo where id=" + Request["id"], con);
            sda.Fill(ds, "ts_xs_poorStdInfo");
            DataRowView rowview = ds.Tables["ts_xs_poorStdInfo"].DefaultView[0];
            this.studentName.Text = rowview["studentName"].ToString();
            this.studyNumber.Text = rowview["studyNumber"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.grade.Text = rowview["grade"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();
            this.punishName.Text = rowview["punishName"].ToString();
            this.punishReason.Text = rowview["punishReason"].ToString();
            this.punishResult.Text = rowview["punishResult"].ToString();
            this.punishDate.Text = rowview["punishDate"].ToString();
            this.punishSemester.Text = rowview["punishSemester"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.punishCode.Text = rowview["punishCode"].ToString();
            SqlDataAdapter sda1 = new SqlDataAdapter(" select punishUnit from ts_xs_stdPunishInfo where id=" + Request["id"], con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_xs_stdPunishInfo");
            this.punishUnit.DataSource = ds1.Tables["ts_xs_stdPunishInfo"];

            this.punishUnit.DataTextField = "punishUnit";
            this.punishUnit.DataBind();
            SqlDataAdapter sda3 = new SqlDataAdapter("select punishStudyYear from ts_xs_stdPunishInfo where id=" + Request["id"], con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_stdPunishInfo");
            this.punishStudyYear.DataSource = ds3.Tables["ts_xs_stdPunishInfo"];
            this.punishStudyYear.DataTextField = "punishStudyYear";
            this.punishStudyYear.DataBind();
            con.Close();
        }
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.RequiredFieldValidator1.Enabled = true;
        this.RequiredFieldValidator4.Enabled = true;
        this.RequiredFieldValidator3.Enabled = true;
        this.RegularExpressionValidator1.Enabled = true;
        this.punishName.Enabled = true;
        this.punishUnit.Enabled = true;
        this.punishStudyYear.Enabled = true;
        this.punishSemester.Enabled = true;

        this.punishReason.ReadOnly = false;
        this.punishResult.ReadOnly = false;
        this.punishDate.ReadOnly = false;
        this.remark.ReadOnly = false;

        this.punishDate.BackColor = System.Drawing.Color.White;
        this.punishReason.BackColor = System.Drawing.Color.White;
        this.punishResult.BackColor = System.Drawing.Color.White;
        this.remark.BackColor = System.Drawing.Color.White;

        this.edit.Enabled = false;
        this.submit.Enabled = true;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string punishName = this.punishName.Text;
        string punishReason = this.punishReason.Text;
        string punishResult = this.punishResult.Text;
        string punishDate = this.punishDate.Text;
        string punishUnit = this.punishUnit.Text;
        string punishStudyYear = this.punishStudyYear.Text;
        string punishSemester1 = this.punishSemester.Text;
        int punishSemester = Math.Abs(Convert.ToInt32(punishSemester1));
        string remark = this.remark.Text;

        string SQL = "update ts_xs_stdPunishInfo set punishName='" + punishName + "',punishReason ='" + punishReason + "' ,punishResult ='" + punishResult + "',punishDate='" + punishDate + "',punishUnit='" + punishUnit + "',punishStudyYear='" + punishStudyYear + "',punishSemester ='" + punishSemester + "' where punishCode ='" + this.punishCode.Text + "'";
        if (bc.ExecSQL(SQL))
        {
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
            this.punishName.Enabled = false;
            this.punishUnit.Enabled = false;
            this.punishStudyYear.Enabled = false;
            this.punishSemester.Enabled = false;

            this.punishReason.ReadOnly = true;
            this.punishResult.ReadOnly = true;
            this.punishDate.ReadOnly = true;
            this.remark.ReadOnly = true;

            this.punishDate.BackColor = System.Drawing.Color.Transparent;
            this.punishReason.BackColor = System.Drawing.Color.Transparent;
            this.punishResult.BackColor = System.Drawing.Color.Transparent;
            this.remark.BackColor = System.Drawing.Color.Transparent;

            this.edit.Enabled = true;
            this.submit.Enabled = false;
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙请稍后再试！"));
        }
    }
}
