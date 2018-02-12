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
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_studentManage_std_addGradeTestMarkList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_gradeTestMark where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_xs_gradeTestMark");
            DataRowView rowview = ds.Tables["ts_xs_gradeTestMark"].DefaultView[0];
            this.studentName.Text = rowview["studentName"].ToString();
            this.studyNumber.Text = rowview["studyNumber"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.testPlace.Text = rowview["testPlace"].ToString();
            this.testName.Text = rowview["testName"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.grade.Text = rowview["grade"].ToString();
            this.testTime.Text = rowview["testTime"].ToString();
            this.testDate.Text = rowview["testDate"].ToString();
            this.testMark.Text = rowview["mark"].ToString();
            this.testTotalMark.Text = rowview["totalMark"].ToString();
            this.testStyle.Text = rowview["testStyle"].ToString();
            this.testStudyYear.Text = rowview["testStudyYear"].ToString();
            this.testSemester.Text = rowview["testSemester"].ToString();
            this.testProveCode.Text = rowview["testProveCode"].ToString();
            this.remark.Text = rowview["remark"].ToString();

            con.Close();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.testMark.ReadOnly = false;
        this.testMark.BackColor = System.Drawing.Color.White;
        this.remark.ReadOnly = false;
        this.remark.BackColor = System.Drawing.Color.White;
        this.submit.Enabled = true;
        this.edit.Enabled = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string mark1 = this.testMark.Text;
        string studyNumber = this.studyNumber.Text;
        int mark = Math.Abs(Convert.ToInt32(mark1));
        string remark = this.remark.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        string SQL = "update ts_xs_gradeTestMark set mark ='" + mark + "',remark='" + remark + "' where studyNumber='" + studyNumber + "' and testStudyYear = '"+ this.testStudyYear.Text +"' and testSemester='"+Math.Abs(Convert.ToInt32(this.testSemester.Text))+"'";
        if (bc.ExecSQL(SQL))
        {
            Response.Write(bc.MessageBox("数据提交成功!"));
        }
        else
        {
            Response.Write(bc.MessageBox("网络忙，请稍后再试！"));
        }
        this.testMark.ReadOnly = true;
        this.testMark.BackColor = System.Drawing.Color.Transparent;
        this.remark.ReadOnly = true;
        this.remark.BackColor = System.Drawing.Color.Transparent;
        this.submit.Enabled = false;
        this.edit.Enabled = true;


    }
}
