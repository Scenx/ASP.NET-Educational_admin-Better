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

public partial class manager_sysManager_studentManage_std_addScholarshipInfoList : System.Web.UI.Page
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
            this.RequiredFieldValidator4.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
            this.CompareValidator1.Enabled = false;
            this.scholarGrade.Enabled = false;
            this.scholarKind.Enabled = false;
            this.scholarSemester.Enabled = false;
            this.scholarStudyYear.Enabled = false;
            this.scholarUnit.Enabled = false;
            this.scholarName.Enabled = false;

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_stdScholarInfo where id=" + Request["id"], con);
            sda.Fill(ds, "ts_xs_poorStdInfo");
            DataRowView rowview = ds.Tables["ts_xs_poorStdInfo"].DefaultView[0];
            this.studentName.Text = rowview["studentName"].ToString();
            this.studyNumber.Text = rowview["studyNumber"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.grade.Text = rowview["grade"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();
            this.scholarName.Text = rowview["scholarName"].ToString();
            this.scholarGrade.Text = rowview["scholarGrade"].ToString();
            this.scholarKind.Text = rowview["scholarKind"].ToString();
            this.scholarSum.Text = rowview["scholarSum"].ToString();
           
            this.scholarDate.Text = rowview["scholarDate"].ToString();
            this.scholarSemester.Text = rowview["scholarSemester"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.scholarCode.Text = rowview["scholarCode"].ToString();
            SqlDataAdapter sda1 = new SqlDataAdapter(" select scholarUnit from ts_xs_stdscholarInfo where id=" + Request["id"], con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_xs_stdscholarInfo");
            this.scholarUnit.DataSource = ds1.Tables["ts_xs_stdscholarInfo"];

            this.scholarUnit.DataTextField = "scholarUnit";
            this.scholarUnit.DataBind();
            SqlDataAdapter sda3 = new SqlDataAdapter("select scholarStudyYear from ts_xs_stdscholarInfo where id=" + Request["id"], con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_stdscholarInfo");
            this.scholarStudyYear.DataSource = ds3.Tables["ts_xs_stdscholarInfo"];
            this.scholarStudyYear.DataTextField = "scholarStudyYear";
            this.scholarStudyYear.DataBind();
            con.Close();
        }
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.RequiredFieldValidator1.Enabled = true;
        this.RequiredFieldValidator4.Enabled = true;
        this.RegularExpressionValidator1.Enabled = true;
        this.CompareValidator1.Enabled = true;
        this.scholarGrade.Enabled = true;
        this.scholarKind.Enabled = true;
        this.scholarSemester.Enabled = true;
        this.scholarStudyYear.Enabled = true;
        this.scholarUnit.Enabled = true;
        this.scholarName.Enabled = true;

        this.scholarSum.ReadOnly = false;
        this.scholarDate.ReadOnly = false;
        this.remark.ReadOnly = false;

        this.remark.BackColor = System.Drawing.Color.White;
        this.scholarSum.BackColor = System.Drawing.Color.White;
        this.scholarDate.BackColor = System.Drawing.Color.White;

        this.edit.Enabled = false;
        this.submit.Enabled = true;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
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

        string SQL = "update ts_xs_stdScholarInfo set scholarName='" + scholarName + "',scholarKind ='" + scholarKind + "' ,scholarGrade ='" + scholarGrade + "',scholarDate='" + scholarDate + "',scholarUnit='" + scholarUnit + "',scholarStudyYear='" + scholarStudyYear + "',scholarSemester ='" + scholarSemester + "',scholarSum ='"+ scholarSum +"' where scholarCode ='" + this.scholarCode.Text + "'";
        if (bc.ExecSQL(SQL))
        {

            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
            this.CompareValidator1.Enabled = false;
            this.scholarGrade.Enabled = false;
            this.scholarKind.Enabled = false;
            this.scholarSemester.Enabled = false;
            this.scholarStudyYear.Enabled = false;
            this.scholarUnit.Enabled = false;
            this.scholarName.Enabled = false;

            this.scholarSum.ReadOnly = true;
            this.scholarDate.ReadOnly = true;
            this.remark.ReadOnly = true;

            this.remark.BackColor = System.Drawing.Color.Transparent;
            this.scholarSum.BackColor = System.Drawing.Color.Transparent;
            this.scholarDate.BackColor = System.Drawing.Color.Transparent;

            this.edit.Enabled = true;
            this.submit.Enabled = false;
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
        }
        con.Close();
    }
}
