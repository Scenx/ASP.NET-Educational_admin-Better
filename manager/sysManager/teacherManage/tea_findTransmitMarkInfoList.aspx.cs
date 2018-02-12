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
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class manager_sysManager_teacherManage_tea_findTransmitMarkInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_Mark where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_xs_Mark");
            DataRowView rowview = ds.Tables["ts_xs_Mark"].DefaultView[0];


            this.grade.Text = rowview["grade"].ToString();
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.transimitDate.Text= rowview["transmitDate"].ToString();
            this.studyNumber.Text = rowview["studyNumber"].ToString();
            this.studentName.Text = rowview["studentName"].ToString();
            this.courseCode.Text = rowview["courseCode"].ToString();
            this.courseName.Text = rowview["courseName"].ToString();
            this.courseProperty.Text = rowview["courseProperty"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.peacetimeMark.Text = rowview["peacetimeMark"].ToString();
            this.paperMark.Text = rowview["paperMark"].ToString();
            this.mark.Text = rowview["mark"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            con.Close();
        }

        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.paperMark.ReadOnly = false;
        this.peacetimeMark.ReadOnly = false;
        this.mark.ReadOnly = false;

        this.peacetimeMark.BackColor = System.Drawing.Color.White;
        this.paperMark.BackColor = System.Drawing.Color.White;
        this.mark.BackColor = System.Drawing.Color.White;

        this.submit.Enabled = true;
        this.edit.Enabled = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string ID = Convert.ToString(Request["id"]);
        string courseName = this.courseName.Text;
        string courseCode = this.courseCode.Text;
        string courseProperty1 = this.courseProperty.Text;
        string selectTable = "";
        string creditHour1 = "";
        int creditHour = 0;
        if (courseProperty1 == "系内专业课" || courseProperty1 == "系内实验课" || courseProperty1 == "系内选修课"  )
        {
           selectTable = "ts_xs_professionalCourses";

           SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
           con.Open();

           SqlCommand scd = new SqlCommand("select creditHour from " + selectTable + " where courseName='" + courseName + "'and courseCode ='" + courseCode + "'and studyYear ='" + "2007-2008" + "'and semester='" + 1 + "'", con);


           creditHour1 = Convert.ToString(scd.ExecuteScalar());
           creditHour = Math.Abs(Convert.ToInt32(creditHour1));
           con.Close();
        }
        else if (courseProperty1 == "校公共选修课" || courseProperty1 == "校公共必修课")
        {
            selectTable = "ts_xs_chooseCoursesInfo";
           
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();

            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from " + selectTable + " where courseName='" + courseName + "'and courseCode ='" + courseCode + "'and courseStudyYear ='" + "2007-2008" + "'and courseSemester='" + 1 + "'", con);
            sda1.Fill(ds, selectTable);
            DataRowView rowview = ds.Tables[selectTable].DefaultView[0];
            creditHour1 = rowview["creditHour"].ToString();
            creditHour = Math.Abs(Convert.ToInt32(creditHour1));
            con.Close();
        }
        
        
        string peacetimeMark1 = this.peacetimeMark.Text;
        int peacetimeMark = Math.Abs(Convert.ToInt32(peacetimeMark1));
        string paperMark1 = this.paperMark.Text;
        int paperMark = Math.Abs(Convert.ToInt32(paperMark1));
        int mark = (int)(peacetimeMark + 0.7 * paperMark);
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
        string SQL = "update ts_xs_Mark set peacetimeMark ='"+ peacetimeMark +"' ,paperMark = '"+ paperMark +"',mark ='"+ mark +"',creditHour = '"+ creditHour +"' ,markDot ='"+ markDot +"' where id ='"+ ID +"'";
        if (bc.ExecSQL(SQL))
        {
            this.paperMark.ReadOnly = true;
            this.peacetimeMark.ReadOnly = true;
            this.mark.ReadOnly = true;

            this.peacetimeMark.BackColor = System.Drawing.Color.Transparent;
            this.paperMark.BackColor = System.Drawing.Color.Transparent;
            this.mark.BackColor = System.Drawing.Color.Transparent;

            this.submit.Enabled = false;
            this.edit.Enabled = true;

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
            con.Open();

            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_Mark where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_xs_Mark");
            DataRowView rowview = ds.Tables["ts_xs_Mark"].DefaultView[0];



            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.transimitDate.Text = rowview["transmitDate"].ToString();
            this.studyNumber.Text = rowview["studyNumber"].ToString();
            this.studentName.Text = rowview["studentName"].ToString();
            this.courseCode.Text = rowview["courseCode"].ToString();
            this.courseName.Text = rowview["courseName"].ToString();
            this.courseProperty.Text = rowview["courseProperty"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.peacetimeMark.Text = rowview["peacetimeMark"].ToString();
            this.paperMark.Text = rowview["paperMark"].ToString();
            this.mark.Text = rowview["mark"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            con.Close();
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
        }
    }
}
