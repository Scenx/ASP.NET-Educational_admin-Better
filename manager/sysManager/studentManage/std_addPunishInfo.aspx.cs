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

public partial class manager_sysManager_studentManage_std_addPunishInfo : System.Web.UI.Page
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
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter(" select unitName from ts_unit_unitInfo", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_unit_unitInfo");
            this.punishUnit.DataSource = ds1.Tables["ts_unit_unitInfo"];

            this.punishUnit.DataTextField = "unitName";
            this.punishUnit.DataBind();
            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.punishStudyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.punishStudyYear.DataTextField = "studyYear";
            this.punishStudyYear.DataBind();
            con.Close();
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
        }
    }
    protected void infoExport_Click(object sender, EventArgs e)
    {
        string studyNumber = this.studyNumber.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_basicInfo where studyNumber ='"+ studyNumber +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count > 0)
        {
            this.RequiredFieldValidator1.Enabled = true;
            this.RequiredFieldValidator4.Enabled = true;
            this.RequiredFieldValidator3.Enabled = true;
            this.RegularExpressionValidator1.Enabled = true;
            this.studyNumber.ReadOnly = true;
            this.infoExport.Enabled = false;
            this.submit.Enabled = true;
            this.RequiredFieldValidator2.Enabled = false;
            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_basicInfo where studyNumber ='" + studyNumber + "'", con);

            sda1.Fill(ds, "ts_xs_basicInfo");
            DataRowView rowview = ds.Tables["ts_xs_basicInfo"].DefaultView[0];
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.studentName.Text = rowview["studentName"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.grade.Text = rowview["currentlyGrade"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();

            this.punishReason.BackColor = System.Drawing.Color.White;
            this.punishResult.BackColor = System.Drawing.Color.White;
            this.punishDate.BackColor = System.Drawing.Color.White;
            this.remark.BackColor = System.Drawing.Color.White;

            this.punishDate.ReadOnly = false;
            this.punishReason.ReadOnly = false;
            this.punishResult.ReadOnly = false;
            this.remark.ReadOnly = false;
        }
        else
        {
            Response.Write(bc.MessageBox("请您校验您输入的学号！在数据库中未能找到相关信息！"));
        }
        con.Close();
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string studyNumber = this.studyNumber.Text;
        string IDcardNumber = this.IDcardNumber.Text;
        string studentName = this.studentName.Text;
        string adminClass = this.adminClass.Text;
        string teachedClass = this.teachedClass.Text;
        string college = this.college.Text;
        string speciality = this.speciality.Text;
        string grade1 = this.grade.Text;
        int grade = Math.Abs(Convert.ToInt32(grade1));
        string punishName = this.punishName.Text;
        string punishReason = this.punishReason.Text;
        string punishResult = this.punishResult.Text;
        string punishDate = this.punishDate.Text;
        string punishUnit = this.punishUnit.Text;
        string punishStudyYear = this.punishStudyYear.Text;
        string punishSemester1 = this.punishSemester.Text;
        int punishSemester = Math.Abs(Convert.ToInt32(punishSemester1));
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        string remark = this.remark.Text;
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_stdPunishInfo where studyNumber ='"+ studyNumber +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        con.Close();
        System.Text.StringBuilder sb = new StringBuilder();
        sb.Append(studyNumber);
        sb.Append("_");
        sb.Append(Convert.ToString(count + 1));
        string punishCode = sb.ToString();
        string SQL = "insert into ts_xs_stdPunishInfo (punishCode,studyNumber,IDcardNumber,studentName,adminClass,teachedClass,grade,college,speciality,punishName,punishReason,punishResult,punishDate,punishUnit,punishStudyYear,punishSemester,remark,addMan) values ('" + punishCode +"','" + studyNumber +"','" + IDcardNumber +"','" + studentName +"','" + adminClass +"','" + teachedClass +"','" + grade +"','" + college +"','" + speciality +"','" + punishName +"','" + punishReason +"','" + punishResult +"','" + punishDate +"','" + punishUnit +"','" + punishStudyYear +"','" + punishSemester +"','" + remark +"','" + Session["manName"].ToString() +"')";
        if (bc.ExecSQL(SQL))
        {
            System.Text.StringBuilder sb1 = new StringBuilder();
            sb1.Append("处罚编号：" + punishCode + " 学号：" + studyNumber + "姓名："+ studentName + " 处罚学年：" + punishStudyYear + " 处罚学期：" + punishSemester1 + "处罚名称：" + punishName +" 数据提交成功...");
            this.submitResult.Text = sb1.ToString();
            this.submitResult.Visible = true;
            this.punishReason.BackColor = System.Drawing.Color.Transparent;
            this.punishResult.BackColor = System.Drawing.Color.Transparent;
            this.punishDate.BackColor = System.Drawing.Color.Transparent;
            this.remark.BackColor = System.Drawing.Color.Transparent;

            this.punishDate.ReadOnly = true;
            this.punishReason.ReadOnly =true;
            this.punishResult.ReadOnly = true;
            this.remark.ReadOnly = true;

            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;

            this.studentName.Text = "";
            this.IDcardNumber.Text = "";
            this.studyNumber.Text = "";
            this.adminClass.Text = "";
            this.teachedClass.Text = "";
            this.college.Text = "";
            this.college.Text = "";
            this.speciality.Text = "";
            this.grade.Text = "";
            this.punishReason.Text = "";
            this.punishResult.Text = "";
            this.studyNumber.ReadOnly = false;
            this.submit.Enabled = false;
            this.infoExport.Enabled = true;
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙请稍后再试！"));

        }
    }
}
