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

public partial class manager_sysManager_teacherManage_tea_addTransmitMarkInfo : System.Web.UI.Page
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
 
        }

    }
    protected void confirm_Click(object sender, EventArgs e)
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
            SqlCommand sd7 = new SqlCommand("select  studyYear from ts_xs_studyYear", con);
            Session["teacherCode"] = teacherCode.ToString();
            Session["teaIDcardNumber"] = IDcardNumber.ToString();
            Session["teaCollege"] = college.ToString();
            Session["teaUserName"] = user.ToString();
            Session["teaName"] = name.ToString();
            Session["teaTechnicalpost"] = technicalpost.ToString();
            con.Close();
            Response.Redirect("../../../teacher/teacher_Default.aspx", false);

        }
        else
        {
            Response.Write("<script>alert('该用户名不存在或密码错误或未参加教学活动，请重新输入！');history.back()</script>");
            return;
        }
    }
}
