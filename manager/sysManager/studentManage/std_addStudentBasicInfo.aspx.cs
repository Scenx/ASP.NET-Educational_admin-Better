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

public partial class manager_sysManager_studentManage_std_addStudentBasicInfo : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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

                SqlDataAdapter sda2 = new SqlDataAdapter("select grade from ts_xs_studyYear ", con);

                DataSet ds2 = new DataSet();
                sda2.Fill(ds2, "ts_xs_studyYear");
                this.currentlyGrade.DataSource = ds2.Tables["ts_xs_studyYear"];
                this.currentlyGrade.DataTextField = "grade";
                this.currentlyGrade.DataBind();
                con.Close();
            }
        }
    }
    protected void college_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        string college1 = this.college.Text;
        SqlDataAdapter sda = new SqlDataAdapter(" select speciality from ts_unit_collgeSpeciality where collegeName ='" + college1 + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_unit_collgeSpeciality");
        //DataRowView rowview = ds.Tables["ts_xs_professionalCourses"].DefaultView[0];
        this.speciality.DataSource = ds.Tables["ts_unit_collgeSpeciality"];

        this.speciality.DataTextField = "speciality";
        this.speciality.DataBind();
        con.Close();
    }
    protected void submit_Click(object sender, EventArgs e)
    {

        string IDcardNumber = this.IDcardNumber.Text;
        string studyNumber = this.studyNumber.Text;
        string studentName = this.studentName.Text;
        string usedName=this.usedName.Text;
        string sex=this.sex.Text;
        string birthday =this.birthday.Text;
        string nation = this.nation.Text;
        string nativePlace  = this.nativePlace.Text;
        string politicsVisage = this.politicsVisage.Text;
        string fromArea = this.fromArea.Text;
        string fromProvince = this.fromProvince.Text;
        string homePlace = this.homePlace.Text;
        string healthCondition = this.healthCondition.Text;
        string college = this.college.Text;
        string department = this.department.Text;
        string speciality = this.speciality.Text;
        string teachedClass = this.teachedClass.Text;
        string adminClass = this.adminClass.Text;
        string eductionalSystme = this.eductionalSystme.Text;
        string studyLength = this.studyLength.Text;
        string studyState = this.studyState.Text;
        string currentlyGrade = this.currentlyGrade.Text;
        string stdproveCode = this.stdproveCode.Text;
        string culitivateDirection = this.culitivateDirection.Text;
        string specialityDirection = this.specialityDirection.Text;
        string entranceDate = this.entranceDate.Text;
        string graduateSchool = this.graduateSchool.Text;
        string dormitoryCode = this.dormitoryCode.Text;
        string email = this.email.Text;
        string tel = this.tel.Text;
        string postalCode = this.postalCode.Text;
        string testproveCode = this.testproveCode.Text;
        string educationalLevel = this.educationalLevel.Text;
        string gangaotaiCode = this.gangaotaiCode.Text;
        string reportCode = this.reportCode.Text;
        string ifathlete = this.ifathlete.Text;
        string englishGrade = this.englishGrade.Text;
        int englishMark = 0;
        string englishMark1 = this.englishMark.Text;
        if (englishMark1 == "")
        {
            englishMark = 0;
        }
        else
        {
            englishMark = Math.Abs(Convert.ToInt32(englishMark1));
        }
        string lujianCode = this.lujianCode.Text;
        string strongSuit = this.strongSuit.Text;
        string partyTime = this.partyTime.Text;
        string trainDestination = this.trainDestination.Text;
        string handphoneStyle = this.handphoneStyle.Text;
        string handphoneNumber = this.handphoneNumber.Text;
        string homePostalcode = this.homePostalcode.Text;
        string homeTel = this.homeTel.Text;
        string fatherName = this.fatherName.Text;
        string fatherWorkplace = this.fatherWorkplace.Text;
        string fatherPostalcode = this.fatherPostalcode.Text;
        string motherName = this.motherName.Text;
        string motherWorkplace = this.motherWorkplace.Text;
        string motherPostalcode = this.motherPostalcode.Text;
        string fatherTel = this.fatherTel.Text;
        string motherTel = this.motherTel.Text;
        string homeAddress = this.homeAddress.Text;
        string homeLocus = this.homeLocus.Text;
        string remark = this.remark.Text;
        string birthYearMonth = this.birthYearMonth.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        string SQL = "insert into ts_xs_basicInfo (studyNumber,IDcardNumber,studentName,usedName,sex,birthday,nation,nativePlace,politicsVisage,fromArea,fromProvince,homePlace,healthCondition,college,department,speciality,teachedClass,adminClass,eductionalSystme,studyLength,studyState,currentlyGrade,stdproveCode,culitivateDirection,specialityDirection,entranceDate,graduateSchool,dormitoryCode,email,tel,postalCode,testproveCode,educationalLevel,gangaotaiCode,reportCode,ifathlete,englishGrade,englishMark,lujianCode,strongSuit,partyTime,trainDestination,handphoneStyle,handphoneNumber,homePostalCode,homeTel,fatherName,fatherWorkPlace,fatherPostalCode,motherName,motherWorkPlace,motherPostalCode,fatherTel,motherTel,homeAddress,homeLocus,remark,birthYearMonth,addMan,addDate) values ('" + studyNumber + "','" + IDcardNumber + "','" + studentName + "','" + usedName + "','" + sex + "','" + birthday + "','" + nation + "','" + nativePlace + "','" + politicsVisage + "','" + fromArea + "','" + fromProvince + "','" + homePlace + "','" + healthCondition + "','" + college + "','" + department + "','" + speciality + "','" + teachedClass + "','" + adminClass + "','" + eductionalSystme + "','" + studyLength + "','" + studyState + "','" + currentlyGrade + "','" + stdproveCode + "','" + culitivateDirection + "','" + specialityDirection + "','" + entranceDate + "','" + graduateSchool + "','" + dormitoryCode + "','" + email + "','" + tel + "','" + postalCode + "','" + testproveCode + "','" + educationalLevel + "','" + gangaotaiCode + "','" + reportCode + "','" + ifathlete + "','" + englishGrade + "','" + englishMark + "','" + lujianCode + "','" + strongSuit + "','" + partyTime + "','" + trainDestination + "','" + handphoneStyle + "','" + handphoneNumber + "','" + homePostalcode + "','" + homeTel + "','" + fatherName + "','" + fatherWorkplace + "','" + fatherPostalcode + "','" + motherName + "','" + motherWorkplace + "','" + motherPostalcode + "','" + fatherTel + "','" + motherTel + "','" + homeAddress + "','" + homeLocus + "','" + remark + "','" + birthYearMonth + "','" + Session["manName"] + "','" + System.DateTime.Now.ToString() + "')";
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_basicInfo where studyNumber ='"+ this.studyNumber.Text +"' and IDcardNumber ='"+ this.IDcardNumber.Text +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count == 0)
        {
            if (bc.ExecSQL(SQL))
            {
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("已有管理员为此学生上传过信息！"));
        }
        con.Close();
    }
   
}
