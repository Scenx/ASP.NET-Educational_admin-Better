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

public partial class teacher_teacher_basicInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["teacherCode"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        if (!IsPostBack)
        {
            this.teacherCode.Text = Session["teacherCode"].ToString();
            this.IDcardNumber.Text = Session["teaIDcardNumber"].ToString();
            this.teacherName.Text = Session["teaName"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlCommand sd1 = new SqlCommand("select usedName from ts_teacher_teachersBasicInfo where userName = '" + Session["teaUserName"].ToString() + "'", con);
            string usedName = Convert.ToString(sd1.ExecuteScalar());
            this.usedName.Text = usedName;
            SqlCommand sd2 = new SqlCommand("select sex from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string sex = Convert.ToString(sd2.ExecuteScalar());
            this.sex.Text = sex;
            SqlCommand sd3 = new SqlCommand("select birthday from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string birthday = Convert.ToString(sd3.ExecuteScalar());
            this.birthday.Text = birthday;
            SqlCommand sd4 = new SqlCommand("select nation from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string nation = Convert.ToString(sd4.ExecuteScalar());
            this.nation.Text = nation;
            SqlCommand sd5 = new SqlCommand("select nativePlace from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string nativePlace = Convert.ToString(sd5.ExecuteScalar());
            this.nativePlace.Text = nativePlace;
            SqlCommand sd6 = new SqlCommand("select politicsVisage from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string politicsVisage = Convert.ToString(sd6.ExecuteScalar());
            this.politicsVisage.Text = politicsVisage;
            SqlCommand sd7 = new SqlCommand("select homePlace from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string homePlace = Convert.ToString(sd7.ExecuteScalar());
            this.homePlace.Text = homePlace;
            SqlCommand sd8 = new SqlCommand("select heathCondition from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string heathCondition = Convert.ToString(sd8.ExecuteScalar());
            this.healthCondition.Text = heathCondition;
            SqlCommand sd9 = new SqlCommand("select college from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string college = Convert.ToString(sd9.ExecuteScalar());
            this.college.Text = college;
            SqlCommand sd10 = new SqlCommand("select duty from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string duty = Convert.ToString(sd10.ExecuteScalar());
            this.duty.Text = duty;
            SqlCommand sd11 = new SqlCommand("select technicalpost from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string technicalpost = Convert.ToString(sd11.ExecuteScalar());
            this.technicalpost.Text = technicalpost;
            SqlCommand sd12 = new SqlCommand("select educationalLevel from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string educationalLevel = Convert.ToString(sd12.ExecuteScalar());
            this.educationalLevel.Text = educationalLevel;
            SqlCommand sd13 = new SqlCommand("select graduateCollege from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string graduateCollege = Convert.ToString(sd13.ExecuteScalar());
            this.graduateCollege.Text = graduateCollege;
            SqlCommand sd14 = new SqlCommand("select joinTime from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string joinTime = Convert.ToString(sd14.ExecuteScalar());
            this.joinTime.Text = joinTime;
            SqlCommand sd15 = new SqlCommand("select homePostalcode from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string homePostalcode = Convert.ToString(sd15.ExecuteScalar());
            this.homePostalcode.Text = homePostalcode;
            SqlCommand sd16 = new SqlCommand("select homeTel from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string homeTel = Convert.ToString(sd16.ExecuteScalar());
            this.homeTel.Text = homeTel;
            SqlCommand sd17 = new SqlCommand("select homeAddress from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string homeAddress = Convert.ToString(sd17.ExecuteScalar());
            this.homeAddress.Text = homeAddress;
            SqlCommand sd18 = new SqlCommand("select handPhoneNumber from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string handPhoneNumber = Convert.ToString(sd18.ExecuteScalar());
            this.handPhoneNumber.Text = handPhoneNumber;
            SqlCommand sd19 = new SqlCommand("select remark from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string remark = Convert.ToString(sd19.ExecuteScalar());
            this.remark.Text = remark;
            SqlCommand sd20 = new SqlCommand("select researchDirection from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string researchDirection = Convert.ToString(sd20.ExecuteScalar());
            this.researchDirection.Text = researchDirection;
            SqlCommand sd21 = new SqlCommand("select email from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string email = Convert.ToString(sd21.ExecuteScalar());
            this.email.Text = email;
            SqlCommand sd22 = new SqlCommand("select partyTime from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string partyTime = Convert.ToString(sd22.ExecuteScalar());
            this.partyTime.Text = partyTime;
            SqlCommand sd23 = new SqlCommand("select homeLocus from ts_teacher_teachersBasicInfo where userName= '" + Session["teaUserName"].ToString() + "'", con);
            string homeLocus = Convert.ToString(sd23.ExecuteScalar());
            this.homeLocus.Text = homeLocus;
            con.Close();

        }
    }
}
