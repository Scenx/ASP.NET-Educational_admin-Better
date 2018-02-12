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

public partial class manager_sysManager_studentManage_std_addScholarshipInfo : System.Web.UI.Page
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
            this.scholarUnit.DataSource = ds1.Tables["ts_unit_unitInfo"];

            this.scholarUnit.DataTextField = "unitName";
            this.scholarUnit.DataBind();
            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.scholarStudyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.scholarStudyYear.DataTextField = "studyYear";
            this.scholarStudyYear.DataBind();
            con.Close();
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator2.Enabled = true;
            this.RequiredFieldValidator4.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
            this.CompareValidator1.Enabled = false;
        }
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
        string scholarName = this.scholarName.Text;
        string scholarGrade = this.scholarGrade.Text;
        string scholarKind = this.scholarKind.Text;
        string scholarSum1 = this.scholarSum.Text;
        int scholarSum = Math.Abs(Convert.ToInt32(scholarSum1));
        string scholarDate = this.scholarDate.Text;
        string scholarUnit = this.scholarUnit.Text;
        string scholarStudyYear = this.scholarStudyYear.Text;
        string scholarSemester1 = this.scholarSemester.Text;
        int scholarSemester = Math.Abs(Convert.ToInt32(scholarSemester1));
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        string remark = this.remark.Text;
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_stdScholarInfo where studyNumber ='" + studyNumber + "'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        con.Close();
        System.Text.StringBuilder sb = new StringBuilder();
        sb.Append(studyNumber);
        sb.Append("_");
        sb.Append(Convert.ToString(count + 1));
        string scholarCode = sb.ToString();
        string SQL = "insert into ts_xs_stdScholarInfo (scholarCode,studyNumber,IDcardNumber,studentName,adminClass,teachedClass,grade,college,speciality,scholarName,scholarKind,scholarGrade,scholarDate,scholarUnit,scholarStudyYear,scholarSemester,remark,addMan,scholarSum) values ('" + scholarCode + "','" + studyNumber + "','" + IDcardNumber + "','" + studentName + "','" + adminClass + "','" + teachedClass + "','" + grade + "','" + college + "','" + speciality + "','" + scholarName + "','" + scholarKind + "','" + scholarGrade + "','" + scholarDate + "','" + scholarUnit + "','" + scholarStudyYear + "','" + scholarSemester + "','" + remark + "','" + Session["manName"].ToString() + "','" + scholarSum + "')";
        if (bc.ExecSQL(SQL))
        {
            System.Text.StringBuilder sb1 = new StringBuilder();
            sb1.Append("奖学金编号：" + scholarCode + " 学号：" + studyNumber + "姓名：" + studentName + " 奖学金学年：" + scholarStudyYear + " 奖学金学期：" + scholarSemester1 + "奖学金名称：" + scholarName + " 数据提交成功...");
            this.submitResult.Text = sb1.ToString();
            this.submitResult.Visible = true;

            this.scholarSum.BackColor = System.Drawing.Color.Transparent;
            this.scholarDate.BackColor = System.Drawing.Color.Transparent;
            this.remark.BackColor = System.Drawing.Color.Transparent;

            this.scholarSum.ReadOnly = true;
            this.scholarDate.ReadOnly = true;
            this.remark.ReadOnly = true;

            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator2.Enabled = true;
            this.RequiredFieldValidator4.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
            this.CompareValidator1.Enabled = false;

            this.studentName.Text = "";
            this.IDcardNumber.Text = "";
            this.studyNumber.Text = "";
            this.adminClass.Text = "";
            this.teachedClass.Text = "";
            this.college.Text = "";
            this.college.Text = "";
            this.speciality.Text = "";
            this.grade.Text = "";
            this.scholarSum.Text = "";
            this.scholarDate.Text = "";
            this.remark.Text = "";

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
    protected void infoExport_Click(object sender, EventArgs e)
    {
        string studyNumber = this.studyNumber.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_basicInfo where studyNumber ='" + studyNumber + "'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count > 0)
        {
            this.RequiredFieldValidator1.Enabled = true;
            this.RequiredFieldValidator2.Enabled = false;
            this.RequiredFieldValidator4.Enabled = true;
            this.RegularExpressionValidator1.Enabled = true;
            this.CompareValidator1.Enabled = true;

            this.studyNumber.ReadOnly = true;
            this.infoExport.Enabled = false;
            this.submit.Enabled = true;
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

            this.scholarSum.BackColor = System.Drawing.Color.White;
            this.scholarDate.BackColor = System.Drawing.Color.White;
            this.remark.BackColor = System.Drawing.Color.White;

            this.scholarSum.ReadOnly = false;
            this.scholarDate.ReadOnly = false;
            this.remark.ReadOnly = false;
        }
        else
        {
            Response.Write(bc.MessageBox("请您校验您输入的学号！在数据库中未能找到相关信息！"));
        }
        con.Close();
    }
}
