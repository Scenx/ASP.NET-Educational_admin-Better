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
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_studentManage_std_addChooseCourseInfo : System.Web.UI.Page
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
            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.courseStudyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.courseStudyYear.DataTextField = "studyYear";
            con.Close();
        }
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
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_chooseCoursesInfo where courseName='"+ this.courseName +"' and courseCode='"+ this.courseCode.Text +"'and courseSemester ='"+ courseSemester +"' and courseStudyYear ='"+ courseStudyYear +"'",con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count == 0)
        {
            string SQL = "insert into ts_xs_chooseCoursesInfo (courseCode,courseName,teachingMaterial,teacherCode,teacherName,courseTime,coursePlace,creditHour,weekPeriod,weekDateFrom,capacity,choosed,remain,remark,courseProperty,schoolArea,courseCollege,courseStudyYear,courseSemester,addMan) values ('" + courseCode + "','" + courseName + "','" + teachingMaterial + "','" + teacherCode + "','" + teacherName + "','" + courseTime + "','" + coursePlace + "','" + creditHour + "','" + weekPeriod + "','" + weekDateFrom + "','" + capacity + "','" + choosed + "','" + remain + "','" + remark + "','" + courseProperty + "','" + schoolArea + "','" + courseCollege + "','" + courseStudyYear + "','" + courseSemester + "','" + Session["manName"].ToString() + "')";
            if (bc.ExecSQL(SQL))
            {
                System.Text.StringBuilder sb = new StringBuilder();
                this.courseCode.Text = "";
                this.courseName.Text = "";
                this.coursePlace.Text = "";
                this.teacherCode.Text = "";
                this.creditHour.Text = "";
                this.capacity.Text = "";
                this.teachingMatrialName.Text = "";
                this.remark.Text = "";
                sb.Append("课程名称：" + this.courseName.Text + " 教师名称：" + this.teacherName.Text + " 课程学年：" + this.courseStudyYear.Text + " 课程学期：" + this.courseSemester.Text + " 数据提交成功...");
                this.submitResult.Text = sb.ToString();
                this.submitResult.Visible = true;
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网络忙请稍后再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("已有管理员上传过此课程！"));
        }
    }
}
