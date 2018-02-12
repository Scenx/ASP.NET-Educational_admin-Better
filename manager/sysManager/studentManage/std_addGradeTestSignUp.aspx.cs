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
using System.Drawing;
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_studentManage_std_addGradeTestSignUp : System.Web.UI.Page
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
    protected void infoExport_Click(object sender, EventArgs e)
    {
        
        string studyNumber = this.studyNumber.Text;
        //bool result;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_basicInfo where studyNumber ='" + studyNumber + "'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count > 0)
        {
            this.remark.BackColor = System.Drawing.Color.White;
            this.studyNumber.ReadOnly = true;
            //this.testName.Enabled = false;
            this.remark.ReadOnly = false;
            this.submit.Enabled = true;
            this.infoExport.Enabled = false;
            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_basicInfo where studyNumber ='" + studyNumber + "'", con);
            //SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_basicInfo where id ='" + 3 + "'", con);
            sda1.Fill(ds, "ts_xs_basicInfo");
            DataRowView rowview = ds.Tables["ts_xs_basicInfo"].DefaultView[0];
            this.studentName.Text = rowview["studentName"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.grade.Text = rowview["currentlyGrade"].ToString();
            this.testDate.Text = "2007-10-25";
            this.testSemester.Text = "1";
            this.testStudyYear.Text = "2007-2008";
            this.testTotalMark.Text = "710";
            this.remark.Text = "";
        }
        else
        {
            Response.Write(bc.MessageBox("数据库中没有找到相关信息！请检查您输入的学号或考试名称！"));
        }
        con.Close();
    }
    
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();

        
            string grade1 = this.grade.Text;
            int grade = Math.Abs(Convert.ToInt32(grade1));
            string totalMark1 = this.testTotalMark.Text;
            string semester1 = this.testSemester.Text;
            int semester = Math.Abs(Convert.ToInt32(semester1));
            SqlCommand scd = new SqlCommand("select * from ts_xs_fourSixGradeTextSignUp where  testName ='" + this.testName.Text + "' and signupYear='" + "2007-2008" + "' and signSemester ='" + 1 + "'", con);
            int count1 = Convert.ToInt32(scd.ExecuteScalar());
            if (count1 > 0)
            {
                DataSet ds = new DataSet();
                SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_fourSixGradeTextSignUp where  testName ='" + this.testName.Text + "' and signupYear='" + "2007-2008" + "' and signSemester ='" + 1 + "'", con);
                sda1.Fill(ds, "ts_xs_fourSixGradeTextSignUp");
                DataRowView rowview = ds.Tables["ts_xs_fourSixGradeTextSignUp"].DefaultView[0];
                string faceObject = rowview["faceObject"].ToString();
                string restrictObject = rowview["restrictObject"].ToString();
                string testRequire = rowview["testRequire"].ToString();
                string SQL = "insert into ts_xs_stdFourSixGradeTextSignUp (studyNumber,IDcardNumber,studentName,college,speciality,grade,testDate,signupDate,testStyle,testName,remark,signupYear,signupSemester,addMan,testRequire,faceObject,restrictObject,ifSignUp,ifPayment) values ('" + this.studyNumber.Text + "','" + this.IDcardNumber.Text + "','" + this.studentName.Text + "','" + this.college.Text + "','" + this.speciality.Text + "','" + grade + "','" + this.testDate.Text + "','"+ System.DateTime.Now.ToShortDateString() +"','" + this.testStyle.Text + "','" + this.testName.Text + "','" + this.remark.Text + "','" + this.testStudyYear.Text + "','" + semester + "','" + Session["manName"].ToString() + "','" + testRequire + "','" + faceObject + "','" + restrictObject + "','" + 1 + "','"+ 0 +"')";
                SqlCommand scd1 = new SqlCommand("select count(*) from ts_xs_stdFourSixGradeTextSignUp where studyNumber='" + this.studyNumber.Text + "' and testName='"+ this.testName.Text +"' and signupYear ='" + "2007-2008" + "'and signupSemester ='" + semester + "'", con);
                int count = Convert.ToInt32(scd1.ExecuteScalar());
                if (count == 0)
                {
                    if (bc.ExecSQL(SQL))
                    {
                        sb.Append("学号： " + this.studyNumber.Text + "   姓名： " + this.studentName.Text + "  考试名称： " + this.testName.Text + "  报名成功...");
                        this.submitResult.Text = sb.ToString();
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
                    this.IDcardNumber.Text = "";
                    this.speciality.Text = "";
                    this.grade.Text = "";
                    this.testStyle.Text = "";
                    this.testDate.Text = "";
                    this.testSemester.Text = "";
                    this.testStudyYear.Text = "";
                    this.remark.Text = "";
                    this.remark.BackColor = System.Drawing.Color.Transparent;
                    this.studyNumber.Text = "";
                    this.studyNumber.ReadOnly = false;
                    this.RequiredFieldValidator2.Enabled = true;
                    this.testTotalMark.Text = "";
                }
                else
                {
                    this.submit.Enabled = false;
                    this.infoExport.Enabled = true;
                    this.testName.Enabled = true;
                    this.studentName.Text = "";
                    this.college.Text = "";
                    this.IDcardNumber.Text = "";
                    this.speciality.Text = "";
                    this.grade.Text = "";
                    this.testStyle.Text = "";
                    this.testDate.Text = "";
                    this.testSemester.Text = "";
                    this.testStudyYear.Text = "";
                    this.remark.Text = "";
                    this.remark.BackColor = System.Drawing.Color.Transparent;
                    this.studyNumber.Text = "";
                    this.studyNumber.ReadOnly = false;
                    this.RequiredFieldValidator2.Enabled = true;
                    this.testTotalMark.Text = "";
                    Response.Write(bc.MessageBox("此生已经报考了此等级考试！"));
                }
            }
            else
            {
                Response.Write(bc.MessageBox("您所报考的等级考试尚未开通或已过期！"));
            }

        con.Close();
    }
}
