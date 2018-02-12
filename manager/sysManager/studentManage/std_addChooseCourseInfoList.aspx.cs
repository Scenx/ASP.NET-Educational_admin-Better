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
using System.IO;
using System.Text;
using System.Drawing;
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_studentManage_std_addChooseCourseInfoList : System.Web.UI.Page
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
            this.RequiredFieldValidator2.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator5.Enabled = false;
            this.RequiredFieldValidator6.Enabled = false;
            this.RequiredFieldValidator7.Enabled = false;
            this.CompareValidator2.Enabled = false;
            this.RangeValidator2.Enabled = false;

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_chooseCoursesInfo where id=" + Request["id"], con);
            sda.Fill(ds, "ts_xs_chooseCoursesInfo");
            DataRowView rowview = ds.Tables["ts_xs_chooseCoursesInfo"].DefaultView[0];
            this.courseCode.Text = rowview["courseCode"].ToString();
            this.courseName.Text = rowview["courseName"].ToString();
            this.teachingMatrialName.Text = rowview["teachingMaterial"].ToString();
            this.courseTime.Text = rowview["courseTime"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.coursePlace.Text = rowview["coursePlace"].ToString();
            this.creditHour.Text = rowview["creditHour"].ToString();
            this.weekPeriod.Text = rowview["weekPeriod"].ToString();
            this.capacity.Text = rowview["capacity"].ToString();
            this.remark.Text = rowview["remark"].ToString();
            this.courseProperty.Text = rowview["courseProperty"].ToString();
            this.schoolArea.Text = rowview["schoolArea"].ToString();
            this.courseStudyYear.Text = rowview["courseStudyYear"].ToString();
            this.courseSemester.Text = rowview["courseSemester"].ToString();
            this.courseCollege.Text = rowview["courseCollege"].ToString();

            SqlDataAdapter sda3 = new SqlDataAdapter("select courseStudyYear from ts_xs_chooseCoursesInfo where id=" + Request["id"], con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_chooseCoursesInfo");
            this.courseStudyYear.DataSource = ds3.Tables["ts_xs_chooseCoursesInfo"];
            this.courseStudyYear.DataTextField = "courseStudyYear";
            this.courseStudyYear.DataBind();
            con.Close();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.RequiredFieldValidator1.Enabled = true;
        this.RequiredFieldValidator2.Enabled = true;
        this.RequiredFieldValidator3.Enabled = true;
        this.RequiredFieldValidator4.Enabled = true;
        this.RequiredFieldValidator5.Enabled = true;
        this.RequiredFieldValidator6.Enabled = true;
        this.RequiredFieldValidator7.Enabled = true;
        this.CompareValidator2.Enabled = true;
        this.RangeValidator2.Enabled = true;

        this.edit.Enabled = false;
        this.submit.Enabled = true;

        this.courseTime.Enabled = true;
        this.creditHour.Enabled = true;
        this.weekPeriod.Enabled = true;
        this.courseProperty.Enabled = true;
        this.courseStudyYear.Enabled = true;
        this.courseSemester.Enabled = true;
        this.courseCollege.Enabled = true;
        this.schoolArea.Enabled = true;

        this.teachingMatrialName.ReadOnly = false;
        this.coursePlace.ReadOnly = false;
        this.capacity.ReadOnly = false;
        this.remark.ReadOnly = false;

        this.capacity.BackColor = System.Drawing.Color.White;
        this.coursePlace.BackColor = System.Drawing.Color.White;
        this.teachingMatrialName.BackColor = System.Drawing.Color.White;
        this.remark.BackColor = System.Drawing.Color.White;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string courseCode = this.courseCode.Text;
        string courseName = this.courseName.Text;
        string teachingMaterial = this.teachingMatrialName.Text;
        string courseTime = this.courseTime.Text;
        string weekDateFrom = "第2-16周"; ;
        string teacherName = this.teacherName.Text;
        string teacherCode = this.teacherCode.Text;
        string coursePlace = this.coursePlace.Text;
        string creditHour1 = this.creditHour.Text;
        int creditHour = Math.Abs(Convert.ToInt32(creditHour1));
        string weekPeriod1 = this.weekPeriod.Text;
        int weekPeriod = Math.Abs(Convert.ToInt32(weekPeriod1));
        string capacity1 = this.capacity.Text;
        int capacity = Math.Abs(Convert.ToInt32(capacity1));
        string remark = this.remark.Text;
        string courseProperty = this.courseProperty.Text;
        string schoolArea = this.schoolArea.Text;
        string courseStudyYear = this.courseStudyYear.Text;
        string courseSemester1 = this.courseSemester.Text;
        int courseSemester = Math.Abs(Convert.ToInt32(courseSemester1));
        int remain = capacity;
        int choosed = 0;
        string courseCollege = this.courseCollege.Text;

        string SQL = "update ts_xs_chooseCoursesInfo set teachingMaterial ='"+ teachingMaterial +"' ,courseTime ='"+ courseTime +"',weekDateFrom ='"+ weekDateFrom +"',coursePlace ='"+ coursePlace +"',creditHour ='"+ creditHour +"',weekPeriod='"+ weekPeriod +"',capacity ='"+ capacity +"',remain ='"+ remain +"',choosed='"+ choosed +"',remark='"+ remark +"',courseProperty='"+ courseProperty +"',schoolArea='"+ schoolArea +"',courseStudyYear='"+ courseStudyYear +"',courseSemester ='"+ courseSemester +"',courseCollege ='"+ courseCollege +"' where courseCode ='"+ courseCode +"' and courseName ='"+ courseName +"' and teacherCode ='"+ teacherCode +"'";
        if (bc.ExecSQL(SQL))
        {
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator2.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator5.Enabled = false;
            this.RequiredFieldValidator6.Enabled = false;
            this.RequiredFieldValidator7.Enabled = false;
            this.CompareValidator2.Enabled = false;
            this.RangeValidator2.Enabled = false;

            this.edit.Enabled = true;
            this.submit.Enabled = false;

            this.courseTime.Enabled = false;
            this.creditHour.Enabled = false;
            this.weekPeriod.Enabled = false;
            this.courseProperty.Enabled = false;
            this.courseStudyYear.Enabled = false;
            this.courseSemester.Enabled = false;
            this.courseCollege.Enabled = false;
            this.schoolArea.Enabled = false;

            this.teachingMatrialName.ReadOnly = true;
            this.coursePlace.ReadOnly = true;
            this.capacity.ReadOnly = true;
            this.remark.ReadOnly = true;

            this.capacity.BackColor = System.Drawing.Color.Transparent;
            this.coursePlace.BackColor = System.Drawing.Color.Transparent;
            this.teachingMatrialName.BackColor = System.Drawing.Color.Transparent;
            this.remark.BackColor = System.Drawing.Color.Transparent;
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！")); 
        }
    }
}
