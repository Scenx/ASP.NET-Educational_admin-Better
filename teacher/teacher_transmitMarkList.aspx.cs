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

public partial class teacher_teacher_transmitMarkList : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["teacherCode"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        BaseClass bc = new BaseClass();
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_stdChooseCoursesInfo where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_xs_stdChooseCoursesInfo");
            DataRowView rowview = ds.Tables["ts_xs_stdChooseCoursesInfo"].DefaultView[0];
            this.studyNumber.Text = rowview["studyNumber"].ToString();
            this.studentName.Text = rowview["studentName"].ToString();
            this.courseCode.Text = rowview["courseCode"].ToString();
            this.courseName.Text = rowview["courseName"].ToString();
            this.courseProperty.Text = rowview["courseProperty"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            this.college.Text = rowview["college"].ToString();
            con.Close();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
    }


    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        string studyNumber = this.studyNumber.Text;
        string studentName = this.studentName.Text;
        string courseCode = this.courseCode.Text;
        string courseName = this.courseName.Text;
        DataSet ds = new DataSet();
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_chooseCoursesInfo where courseName='"+ courseName +"'and courseCode ='"+ courseCode +"'and courseStudyYear ='"+ "2007-2008" +"'and courseSemester='"+ 1 +"'", con);
        sda1.Fill(ds, "ts_xs_chooseCoursesInfo");
        DataRowView rowview = ds.Tables["ts_xs_chooseCoursesInfo"].DefaultView[0];
        string creditHour1 = rowview["creditHour"].ToString();
        int creditHour = Math.Abs(Convert.ToInt32(creditHour1));
        string teacherCode = rowview["teacherCode"].ToString();
        string teacherName = rowview["teacherName"].ToString();
        string remark = rowview["remark"].ToString();
        string courseProperty = rowview["courseProperty"].ToString();
        string peacetimeMark1 = this.peacetimeMark.Text;
        int peacetimeMark = Math.Abs(Convert.ToInt32(peacetimeMark1));
        string paperMark1 = this.paperMark.Text;
        int paperMark = Math.Abs(Convert.ToInt32(paperMark1));
        int mark = (int)(0.7 * peacetimeMark + 0.7 * paperMark);
        float mark1 = (float)mark;
        float markDot1;
        if (mark1 >= 60)
        {
            markDot1 = (mark1 - 50) / 10;

        }
        else
        {
            markDot1 = 0;
            creditHour = 0;
        }
        string markDot = Convert.ToString(markDot1);
        string college = this.college.Text;
        string teachedClass = this.teachedClass.Text;
        string adminClass = this.adminClass.Text;
        string speciality = this.speciality.Text;
        string SQL = "insert into ts_xs_mark (studyNumber,studentName,studyYear,semester,courseCode,courseName,courseProperty,creditHour,markDot,peacetimeMark,paperMark,mark,collegeName,remark,teacherCode,teacherName,transmitDate,teachedClass,adminClass,speciality)values('" + studyNumber + "','" + studentName + "','" + "2007-2008" + "','" + 1 + "','" + courseCode + "','" + courseName + "','" + courseProperty + "','" + creditHour + "','" + markDot + "','" + peacetimeMark + "','" + paperMark + "','" + mark + "','" + college + "','" + remark + "','" + teacherCode + "','" + teacherName + "','" + System.DateTime.Now.ToShortDateString() + "','" + teachedClass + "','" + adminClass + "','" + speciality + "')";
        SqlCommand sd = new SqlCommand(SQL, con);
        if (bc.ExecSQL(SQL))
        {
            con.Close();
            Response.Write("<script language=javascript>alert('成绩上传成功！');opener.location.reload();window.close()</script>");
        }
        else
        {
            con.Close();
            Response.Write("<script language=javascript>alert('网络忙，请稍后再试！');opener.location.reload();window.close()</script>");
            
        }
    }
}
