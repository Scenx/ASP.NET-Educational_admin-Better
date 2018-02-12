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
using System.Text;
using System.IO;
using System.Drawing;

public partial class manager_sysManager_teacherManage_tea_addTeaBasicInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda = new SqlDataAdapter("select * from ts_teacher_teachersBasicInfo where id=" + Request["id"], con);
            sda.Fill(ds, "ts_teacher_teachersBasicInfo");
            DataRowView rowview = ds.Tables["ts_teacher_teachersBasicInfo"].DefaultView[0];
            this.college.Text = rowview["college"].ToString();
            this.sex.Text = rowview["sex"].ToString();
            this.educationalLevel.Text = rowview["educationalLevel"].ToString();
            this.politicsVisage.Text = rowview["politicsVisage"].ToString();
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.usedName.Text = rowview["usedName"].ToString();
            this.birthday.Text = rowview["birthday"].ToString();
            this.nation.Text = rowview["nation"].ToString();
            this.nativePlace.Text = rowview["nativePlace"].ToString();
            this.homePlace.Text = rowview["homePlace"].ToString();
            this.healthCondition.Text = rowview["heathCondition"].ToString();
            this.duty.Text = rowview["duty"].ToString();
            this.technicalpost.Text = rowview["technicalpost"].ToString();
            this.graduateCollege.Text = rowview["graduateCollege"].ToString();
            this.joinTime.Text = rowview["joinTime"].ToString();
            this.homePostalcode.Text = rowview["homePostalcode"].ToString();
            this.homeTel.Text = rowview["homeTel"].ToString();
            this.homeAddress.Text = rowview["homeAddress"].ToString();
            this.handPhoneNumber.Text = rowview["handPhoneNumber"].ToString();
            this.remark.Text = rowview["remark"].ToString();
            this.researchDirection.Text = rowview["researchDirection"].ToString();
            this.email.Text = rowview["email"].ToString();
            this.partyTime.Text = rowview["partyTime"].ToString();
            this.homeLocus.Text = rowview["homeLocus"].ToString();
            SqlDataAdapter sda1 = new SqlDataAdapter(" select college from ts_teacher_teachersBasicInfo where id=" + Request["id"], con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_unit_college");
            this.college.DataSource = ds1.Tables["ts_unit_college"];

            this.college.DataTextField = "college";
            this.college.DataBind();
            con.Close();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
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
        string SQL = "update ts_teacher_teachersBasicInfo set usedName ='" + usedName +"',sex ='" + sex +"',birthday ='" + birthday +"',nation ='" + nation +"',nativePlace ='" + nativePlace +"',politicsVisage ='" + politicsVisage +"',homePlace ='" + homePlace +"',heathCondition ='" + healthCondition +"',college ='" + college +"',duty ='" + duty +"',technicalpost ='" + technicalpost +"',educationalLevel ='" + educationalLevel +"',graduateCollege ='" + graduateCollege +"',joinTime ='" + joinTime +"',homePostalcode ='" + homePostalcode +"',homeTel ='" + homeTel +"',homeAddress ='" + homeAddress +"',handPhoneNumber ='" + handPhoneNumber +"',remark ='" + remark +"',researchDirection ='" + researchDirection +"',email ='" + email +"',partyTime ='" + partyTime +"',homeLocus ='" + homeLocus +"' where teacherCode ='"+ this.teacherCode.Text +"' and IDcardNumber ='"+ this.IDcardNumber.Text +"' and teacherName ='"+ teacherName +"'";
        if (bc.ExecSQL(SQL))
        {
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
        }
    }
}
