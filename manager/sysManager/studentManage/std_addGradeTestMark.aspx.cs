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
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_studentManage_std_addGradeTestMark : System.Web.UI.Page
{
    System.Text.StringBuilder sb = new StringBuilder();
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["manName"]) == "")
        {
            Response.Write("<script language=javascript>location='../../../TS_ManagerLogin.aspx'</script>");
            return;
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();

        if (this.testMark.Text != "")
        {
            string grade1 = this.grade.Text;
            int grade = Math.Abs(Convert.ToInt32(grade1));
            string totalMark1 = this.testTotalMark.Text;
            int totalMark = Math.Abs(Convert.ToInt32(totalMark1));
            string mark1 = this.testMark.Text;
            int mark = Math.Abs(Convert.ToInt32(mark1));
            string semester1 = this.testSemester.Text;
            int semester = Math.Abs(Convert.ToInt32(semester1));
            string SQL = "insert into ts_xs_gradeTestMark (studyNumber,IDcardNumber,studentName,college,testPlace,speciality,grade,testDate,testStyle,testName,testProveCode,totalMark,remark,mark,testStudyYear,testSemester,testTime,addMan) values ('" + this.studyNumber.Text + "','" + this.IDcardNumber.Text + "','" + this.studentName.Text + "','" + this.college.Text + "','" + this.testPlace.Text + "','" + this.speciality.Text + "','" + grade + "','" + this.testDate.Text + "','" + this.testStyle.Text + "','" + this.testName.Text + "','" + this.testProveCode.Text + "','" + totalMark + "','" + this.remark.Text + "','" + mark + "','" + this.testStudyYear.Text + "','" + semester + "','" + this.testTime.Text + "','" + Session["manName"] + "')";
            SqlCommand scd1 = new SqlCommand("select count(*) from ts_xs_gradeTestMark where studyNumber='" + this.studyNumber.Text + "' and testStudyYear ='" + "2007-2008" + "'and testSemester ='" + 1 + "'", con);
            int count = Convert.ToInt32(scd1.ExecuteScalar());
            if (count == 0)
            {
                if (bc.ExecSQL(SQL))
                {
                    sb.Append("学号： " + this.studyNumber.Text + "   姓名： " + this.studentName.Text + "  考试名称： " + this.testName.Text + "   考试成绩为：  " + this.testMark.Text + "  数据上传成功...");
                    this.submitResult.Text = sb.ToString();
                    //this.submitResult.Text = "学号： " + this.studyNumber.Text + "   姓名： " + this.studentName.Text + "  考试名称： " + this.testName.Text + "   考试成绩为：  " + this.testMark.Text + "  数据上传成功...";
                    this.submitResult.Visible = true;
                    Response.Write(bc.MessageBox("数据提交成功！"));

                }
                else
                {
                    Response.Write(bc.MessageBox("数据提交失败，网络忙请稍后再试！"));
                }

                this.submit.Enabled = false;
                this.infoExport.Enabled = true;
                this.testName.Enabled = true;
                this.studentName.Text = "";
                this.college.Text = "";
                this.testPlace.Text = "";
                this.IDcardNumber.Text = "";
                this.speciality.Text = "";
                this.grade.Text = "";
                this.testTime.Text = "";
                this.testTotalMark.Text = "";
                this.testStyle.Text = "";
                this.testDate.Text = "";
                this.testSemester.Text = "";
                this.testProveCode.Text = "";
                this.testStudyYear.Text = "";
                this.remark.Text = "";
                this.testMark.Text = "";
                this.testMark.BackColor = System.Drawing.Color.Transparent;
                this.remark.Text = "";
                this.remark.BackColor = System.Drawing.Color.Transparent;
                this.studyNumber.Text = "";
                this.studyNumber.ReadOnly = false;
                this.RequiredFieldValidator2.Enabled = true;
                this.RangeValidator2.Enabled = false;
                this.RequiredFieldValidator1.Enabled = false;
            }
            else
            {
                this.submit.Enabled = false;
                this.infoExport.Enabled = true;
                this.testName.Enabled = true;
                this.studentName.Text = "";
                this.college.Text = "";
                this.testPlace.Text = "";
                this.IDcardNumber.Text = "";
                this.speciality.Text = "";
                this.grade.Text = "";
                this.testTime.Text = "";
                this.testTotalMark.Text = "";
                this.testStyle.Text = "";
                this.testDate.Text = "";
                this.testSemester.Text = "";
                this.testProveCode.Text = "";
                this.testStudyYear.Text = "";
                this.remark.Text = "";
                this.testMark.Text = "";
                this.testMark.BackColor = System.Drawing.Color.Transparent;
                this.remark.Text = "";
                this.remark.BackColor = System.Drawing.Color.Transparent;
                this.studyNumber.Text = "";
                this.studyNumber.ReadOnly = false;
                this.RequiredFieldValidator2.Enabled = true;
                this.RangeValidator2.Enabled = false;
                this.RequiredFieldValidator1.Enabled = false;
                Response.Write(bc.MessageBox("已经有管理员为此学生上传过成绩！"));
            }
        }
        
        con.Close();
    }

    protected void infoExport_Click(object sender, EventArgs e)
    {
        string testName = this.testName.Text;
        string studyNumber = this.studyNumber.Text;
        //bool result;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_stdFourSixGradeTextSignUp where studyNumber ='" + studyNumber + "' and testName='" + testName + "' and signupYear='" + "2007-2008" + "' and signupSemester ='" + 1 + "'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count > 0)
        {
            this.RequiredFieldValidator1.Enabled = true;
            this.RangeValidator2.Enabled = true;
            this.testMark.BackColor = System.Drawing.Color.White;
            this.remark.BackColor = System.Drawing.Color.White;
            this.studyNumber.ReadOnly = true;
            this.testName.Enabled = false;
            this.testMark.ReadOnly = false;
            this.remark.ReadOnly = false;
            this.submit.Enabled = true;
            this.infoExport.Enabled = false;
            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_stdFourSixGradeTextSignUp where studyNumber ='" + studyNumber + "' and testName='" + testName + "' and signupYear='" + "2007-2008" + "' and signupSemester ='" + 1 + "'", con);
            sda1.Fill(ds, "ts_xs_stdFourSixGradeTextSignUp");
            DataRowView rowview = ds.Tables["ts_xs_stdFourSixGradeTextSignUp"].DefaultView[0];
            this.studentName.Text = rowview["studentName"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.testPlace.Text = rowview["testPlace"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.grade.Text = rowview["grade"].ToString();
            this.testTime.Text = rowview["testTime"].ToString();
            this.testTotalMark.Text = rowview["totalMark"].ToString();
            this.testStyle.Text = rowview["testStyle"].ToString();
            this.testDate.Text = rowview["testDate"].ToString();
            this.testSemester.Text = rowview["signupSemester"].ToString();
            this.testProveCode.Text = rowview["testProveCode"].ToString();
            this.testStudyYear.Text = rowview["signupYear"].ToString();
            this.remark.Text = rowview["remark"].ToString();
        }
        else
        {
            Response.Write(bc.MessageBox("数据库中没有找到相关信息！请检查您输入的学号或考试名称！"));
        }
        con.Close();
    }
}
