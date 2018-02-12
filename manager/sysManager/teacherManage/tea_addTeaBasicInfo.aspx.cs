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

public partial class manager_sysManager_teacherManage_tea_addTeaBasicInfo : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter(" select college from ts_unit_college", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_unit_college");
            this.college.DataSource = ds1.Tables["ts_unit_college"];

            this.college.DataTextField = "college";
            this.college.DataBind();
            con.Close();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string teacherCode = this.teacherCode.Text;
        string IDcardNumber = this.IDcardNumber.Text;
        string teacherName = this.teacherName.Text;
        string usedName = this.usedName.Text;
        string sex = this.sex.Text;
        string birthday = this.birthday.Text;
        string nation = this.nation.Text;
        string nativePlace = this.nativePlace.Text;
        string politicsVisage = this.politicsVisage.Text;
        string homePlace = this.homePlace.Text;
        string healthCondition = this.healthCondition.Text;
        string college = this.college.Text;
        string duty = this.duty.Text;
        string technicalpost = this.technicalpost.Text;
        string educationalLevel = this.educationalLevel.Text;
        string graduateCollege = this.graduateCollege.Text;
        string joinTime = this.joinTime.Text;
        string homePostalcode = this.homePostalcode.Text;
        string homeTel = this.homeTel.Text;
        string homeAddress = this.homeAddress.Text;
        string handPhoneNumber = this.handPhoneNumber.Text;
        string remark = this.remark.Text;
        string researchDirection = this.researchDirection.Text;
        string email = this.email.Text;
        string partyTime = this.partyTime.Text;
        string homeLocus = this.homeLocus.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_teacher_teachersBasicInfo where teacherCode ='" + this.teacherCode.Text + "'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count == 0)
        {
            string SQL = "insert into ts_teacher_teachersBasicInfo (teacherCode,IDcardNumber,teacherName,usedName,sex,birthday,nation,nativePlace,politicsVisage,homePlace,heathCondition,college,duty,technicalpost,educationalLevel,graduateCollege,joinTime,homePostalcode,homeTel,homeAddress,handPhoneNumber,remark,researchDirection,email,partyTime,homeLocus,addMan,addDate) values ('" + teacherCode + "','" + IDcardNumber + "','" + teacherName + "','" + usedName + "','" + sex + "','" + birthday + "','" + nation + "','" + nativePlace + "','" + politicsVisage + "','" + homePlace + "','" + healthCondition + "','" + college + "','" + duty + "','" + technicalpost + "','" + educationalLevel + "','" + graduateCollege + "','" + joinTime + "','" + homePostalcode + "','" + homeTel + "','" + homeAddress + "','" + handPhoneNumber + "','" + remark + "','" + researchDirection + "','" + email + "','" + partyTime + "','" + homeLocus + "','" + Session["manName"].ToString() + "','" + System.DateTime.Now.ToString() + "')";
            con.Close();
            if (bc.ExecSQL(SQL))
            {
                this.teacherCode.Text = "";
                this.IDcardNumber.Text = "";
                this.teacherName.Text = "";
                this.usedName.Text = "";
                this.birthday.Text = "";
                this.nation.Text = "";
                this.nativePlace.Text = "";
                this.homePlace.Text = "";
                this.healthCondition.Text = "";
                this.duty.Text = "";
                this.technicalpost.Text = "";
                this.graduateCollege.Text = "";
                this.joinTime.Text = "";
                this.homePostalcode.Text = "";
                this.homeTel.Text = "";
                this.homeAddress.Text = "";
                this.handPhoneNumber.Text = "";
                this.remark.Text = "";
                this.researchDirection.Text = "";
                this.email.Text = "";
                this.partyTime.Text = "";
                this.homeLocus.Text = "";
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("数据库中已存在此教师编号！"));
        }
    }
   
}
