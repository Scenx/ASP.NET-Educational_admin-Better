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

public partial class manager_sysManager_studentManage_std_addStdChooseCourseInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_stdChooseCoursesInfo where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_xs_stdChooseCoursesInfo");
            DataRowView rowview = ds.Tables["ts_xs_stdChooseCoursesInfo"].DefaultView[0];
            this.studentName.Text = rowview["studentName"].ToString();
            this.studyNumber.Text = rowview["studyNumber"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            this.courseCode.Text = rowview["courseCode"].ToString();
            this.courseName.Text = rowview["courseName"].ToString();
            string ifTeachingMaterial=rowview["ifTeachingMaterial"].ToString();
            
            if (ifTeachingMaterial == "true")
            {
                this.teachingMatrialName.Text = "已预订";
            }
            else if (ifTeachingMaterial == "false")
            {
                this.teachingMatrialName.Text = "未预订";
            }
            this.courseTime.Text = rowview["courseTime"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.coursePlace.Text = rowview["coursePlace"].ToString();
            this.creditHour.Text = rowview["creditHour"].ToString();
            this.weekPeriod.Text = rowview["weekPeriod"].ToString();
            this.remark.Text = rowview["remark"].ToString();
            this.courseProperty.Text = rowview["courseProperty"].ToString();
            this.schoolArea.Text = rowview["schoolArea"].ToString();
            this.courseStudyYear.Text = rowview["courseStudyYear"].ToString();
            this.courseSemester.Text = rowview["courseSemester"].ToString();
            this.courseCollege.Text = rowview["courseCollege"].ToString();
            this.chooseDate.Text = rowview["chooseDate"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void submit_Click(object sender, EventArgs e)
    {

    }
}
