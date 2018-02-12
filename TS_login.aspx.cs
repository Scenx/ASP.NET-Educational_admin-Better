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

public partial class TS_login : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            unit.Checked = false;
            teacher.Checked = true;
            student.Checked = false;
            visitor.Checked = false;
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        System.Collections.ArrayList al = new System.Collections.ArrayList();
        if (student.Checked == true)
        {
            string user = userName.Text;
            string pwd = passWord.Text;
            if (bc.validate(user))
            {
                Response.Write("<script>alert('用户名中不能含有非法字符');history.back()</script>");
                return;
            }
            if (bc.validate(pwd))
            {
                Response.Write("<script>alert('用户名中不能含有非法字符');history.back()</script>");
                return;
            }
            if (user == "")
            {
                Response.Write(bc.MessageBox("用户名不能为空！"));
            }
            if (pwd == "")
            {
                Response.Write(bc.MessageBox("密码不能为空！"));
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlCommand scd = new SqlCommand("select count(*) from  ts_xs_user where  userName='" + user + "' and password='" + pwd + "'", con);
            int count = Convert.ToInt32(scd.ExecuteScalar());
            if (count > 0)
            {
                SqlCommand sd = new SqlCommand("select studentName from ts_xs_user where userName='" + user + "'", con);
                string name = Convert.ToString(sd.ExecuteScalar());
                SqlCommand sd1 = new SqlCommand("select speciality from ts_xs_basicInfo where studyNumber='" + user + "'", con);
                string speciality = Convert.ToString(sd1.ExecuteScalar());
                SqlCommand sd2 = new SqlCommand("select college from ts_xs_basicInfo where studyNumber='" + user + "'", con);
                string college = Convert.ToString(sd2.ExecuteScalar());
                SqlCommand sd3 = new SqlCommand("select adminClass from ts_xs_basicInfo where studyNumber='" + user + "'", con);
                string adminClass = Convert.ToString(sd3.ExecuteScalar());
                SqlCommand sd4 = new SqlCommand("select teachedClass from ts_xs_basicInfo where studyNumber='" + user + "'", con);
                string teachedClass = Convert.ToString(sd4.ExecuteScalar());
                SqlCommand sd5 = new SqlCommand("select IDcardNumber from ts_xs_basicInfo where studyNumber='" + user + "'", con);
                string IDcardNumber = Convert.ToString(sd5.ExecuteScalar());
                SqlCommand sd6 = new SqlCommand("select currentlyGrade from ts_xs_basicInfo where studyNumber='" + user + "'", con);
                string grade = Convert.ToString(sd6.ExecuteScalar());
                int grade1 = Convert.ToInt32(sd6.ExecuteScalar());
                SqlCommand sd7 = new SqlCommand("select  studyYear from ts_xs_studyYearSemester where currentlyTag =1", con);
                string studyYear = Convert.ToString(sd7.ExecuteScalar());
                SqlCommand sd8 = new SqlCommand("select   semester from ts_xs_studyYearSemester where currentlyTag =1",con);
                string semester1 = Convert.ToString(sd8.ExecuteScalar());
                int semester = Convert.ToInt32(semester1);
                Session["stdIDcardNumber"] = IDcardNumber.ToString(); 
                Session["stdCollege"] = college.ToString();
                Session["stdAdminClass"] = adminClass.ToString();
                Session["stdTeachedClass"] = teachedClass.ToString();
                Session["stdSpeciality"] = speciality.ToString();
                Session["stdName"] = name.ToString();
                Session["stdUserName"] = user.ToString();
                Session["currentlyStudyYear"] = studyYear.ToString();
                Session["currentlySemester"] = semester1.ToString();
                Session["stdGrade"] = grade.ToString();
                con.Close();
                Response.Redirect("student/student_Default.aspx",false);
            }
            else
            {
                Response.Write("<script>alert('该用户名不存在或密码错误或未参加教学活动，请重新输入！');history.back()</script>");
                return;
            }
            
        }

        if (visitor.Checked == true)
        {
            Response.Redirect("guest/guest_Default.aspx");
        }

        if (teacher.Checked == true)
        {
            string user = userName.Text;
            string pwd = passWord.Text;
            if (bc.validate(user))
            {
                Response.Write("<script>alert('用户名中不能含有非法字符');history.back()</script>");
                return;
            }
            if (bc.validate(pwd))
            {
                Response.Write("<script>alert('用户名中不能含有非法字符');history.back()</script>");
                return;
            }
            if (user == "")
            {
                Response.Write(bc.MessageBox("用户名不能为空！"));
            }
            if (pwd == "")
            {
                Response.Write(bc.MessageBox("密码不能为空！"));
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlCommand scd = new SqlCommand("select count(*) from  ts_teacher_user where  userName='" + user + "' and password='" + pwd + "'", con);
            int count = Convert.ToInt32(scd.ExecuteScalar());
            if (count > 0)
            {
                SqlCommand sd = new SqlCommand("select teacherName from ts_teacher_user where userName='" + user + "'", con);
                string name = Convert.ToString(sd.ExecuteScalar());
                SqlCommand sd1 = new SqlCommand("select technicalpost from ts_teacher_teachersBasicInfo where userName='" + user + "'", con);
                string technicalpost = Convert.ToString(sd1.ExecuteScalar());
                SqlCommand sd2 = new SqlCommand("select college from ts_teacher_teachersBasicInfo where userName='" + user + "'", con);
                string college = Convert.ToString(sd2.ExecuteScalar());
                SqlCommand sd3 = new SqlCommand("select teacherCode from ts_teacher_teachersBasicInfo where userName='" + user + "'", con);
                string teacherCode = Convert.ToString(sd3.ExecuteScalar());
                //SqlCommand sd4 = new SqlCommand("select teachedClass from ts_teacher_teachersBasicInfo where userName='" + user + "'", con);
                //string teachedClass = Convert.ToString(sd4.ExecuteScalar());
                SqlCommand sd5 = new SqlCommand("select IDcardNumber from ts_teacher_teachersBasicInfo where userName='" + user + "'", con);
                string IDcardNumber = Convert.ToString(sd5.ExecuteScalar());
                SqlCommand sd6 = new SqlCommand("select currentlyGrade from ts_teacher_teachersBasicInfo where studyNumber='" + user + "'", con);
                //string grade = Convert.ToString(sd6.ExecuteScalar());
                //int grade1 = Convert.ToInt32(sd6.ExecuteScalar());
                SqlCommand sd7 = new SqlCommand("select  studyYear from ts_xs_studyYearSemester where currentlyTag =1", con);
                string studyYear = Convert.ToString(sd7.ExecuteScalar());
                SqlCommand sd8 = new SqlCommand("select   semester from ts_xs_studyYearSemester where currentlyTag =1", con);
                string semester1 = Convert.ToString(sd8.ExecuteScalar());
                int semester = Convert.ToInt32(semester1);
                Session["teacherCode"] = teacherCode.ToString();
                Session["teaIDcardNumber"] = IDcardNumber.ToString();
                Session["teaCollege"] = college.ToString(); 
                Session["teaUserName"] = user.ToString();
                Session["teaName"] = name.ToString();
                Session["teaTechnicalpost"] = technicalpost.ToString();
                Session["currentlyStudyYear"] = studyYear.ToString();
                Session["currentlySemester"] = semester1.ToString();
                con.Close();
                Response.Redirect("teacher/teacher_Default.aspx",false);

            }
            else
            {
                Response.Write("<script>alert('该用户名不存在或密码错误或未参加教学活动，请重新输入！');history.back()</script>");
                return;
            }
        }

        if (unit.Checked == true)
        {
            string user = userName.Text;
            string pwd = passWord.Text;
            if (bc.validate(user))
            {
                Response.Write("<script>alert('用户名中不能含有非法字符');history.back()</script>");
                return;
            }
            if (bc.validate(pwd))
            {
                Response.Write("<script>alert('用户名中不能含有非法字符');history.back()</script>");
                return;
            }
            if (user == "")
            {
                Response.Write(bc.MessageBox("用户名不能为空！"));
            }
            if (pwd == "")
            {
                Response.Write(bc.MessageBox("密码不能为空！"));
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlCommand scd = new SqlCommand("select count(*) from  ts_manager_userInfo where  userName='" + user + "' and password='" + pwd + "'", con);
            int count = Convert.ToInt32(scd.ExecuteScalar());
            if (count > 0)
            {
                con.Close();
                Response.Redirect("TS_ManagerLogin.aspx",false);
                
            }
            else
            {
                con.Close();
                Response.Write("<script>alert('该用户名不存在或密码错误或未参加教学活动，请重新输入！');history.back()</script>");
                return;
            }
        }
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        userName.Text = "";
        passWord.Text = "";
    }

    protected void remeberName_CheckedChanged(object sender, EventArgs e)
    {
        
    }
}
