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
using System.Text;
using System.IO;
using System.Data.SqlClient;

public partial class manager_sysManager_studentManage_std_addStdBasicInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_basicInfo where id='" + Session["StdBasicInfoList"].ToString() + "'", con);
            sda.Fill(ds, "ts_xs_basicInfo");
            DataRowView rowview = ds.Tables["ts_xs_basicInfo"].DefaultView[0];
            this.studentName.Text = rowview["studentName"].ToString();
            this.studyNumber.Text = rowview["studyNumber"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.currentlyGrade.Text = rowview["currentlyGrade"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();
            this.usedName.Text = rowview["usedName"].ToString();
            this.sex.Text =rowview["sex"].ToString();
            this.birthday.Text = rowview["birthday"].ToString();
            this.nation.Text = rowview["nation"].ToString();
            this.nativePlace.Text = rowview["nativePlace"].ToString();
            this.politicsVisage.Text = rowview["politicsVisage"].ToString();
            this.fromArea.Text = rowview["fromArea"].ToString();
            this.fromProvince.Text = rowview["homePlace"].ToString();
            this.homePlace.Text = rowview["homePlace"].ToString();
            this.healthCondition.Text = rowview["healthCondition"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.speciality.Text=rowview["speciality"].ToString();
            this.department.Text = rowview["department"].ToString();        
            this.eductionalSystme.Text = rowview["eductionalSystme"].ToString();
            this.studyLength.Text = rowview["studyLength"].ToString();
            this.studyState.Text = rowview["studyState"].ToString();
            this.currentlyGrade.Text = rowview["currentlyGrade"].ToString();
            this.stdproveCode.Text = rowview["stdproveCode"].ToString();
            this.culitivateDirection.Text = rowview["culitivateDirection"].ToString();
            this.specialityDirection.Text = rowview["specialityDirection"].ToString();
            this.entranceDate.Text = rowview["entranceDate"].ToString();
            this.graduateSchool.Text = rowview["graduateSchool"].ToString();
            this.dormitoryCode.Text = rowview["dormitoryCode"].ToString();
            this.email.Text = rowview["email"].ToString();
            this.tel.Text = rowview["tel"].ToString();
            this.postalCode.Text = rowview["postalCode"].ToString();
            this.testproveCode.Text = rowview["testproveCode"].ToString();
            this.educationalLevel.Text = rowview["educationalLevel"].ToString();
            this.gangaotaiCode.Text = rowview["gangaotaiCode"].ToString();
            this.reportCode.Text = rowview["reportCode"].ToString();
            this.ifathlete.Text = rowview["ifathlete"].ToString();
            this.englishGrade.Text = rowview["englishGrade"].ToString();
            this.englishMark.Text = rowview["englishMark"].ToString();
            this.lujianCode.Text = rowview["lujianCode"].ToString();
            this.strongSuit.Text= rowview["strongSuit"].ToString();
            this.partyTime.Text= rowview["partyTime"].ToString();
            this.trainDestination.Text= rowview["trainDestination"].ToString();
            this.handphoneStyle.Text= rowview["handphoneStyle"].ToString();
            this.handphoneNumber.Text= rowview["handphoneNumber"].ToString();
            this.homePostalcode.Text= rowview["homePostalcode"].ToString();
            this.homeTel.Text= rowview["homeTel"].ToString();
            this.fatherName.Text= rowview["fatherName"].ToString();
            this.fatherWorkplace.Text= rowview["fatherWorkplace"].ToString();
            this.fatherPostalcode.Text= rowview["fatherPostalcode"].ToString();
            this.motherName.Text= rowview["motherName"].ToString();
            this.motherWorkplace.Text= rowview["motherWorkplace"].ToString();
            this.motherPostalcode.Text= rowview["motherPostalcode"].ToString();
            this.fatherTel.Text= rowview["fatherTel"].ToString();
            this.motherTel.Text= rowview["motherTel"].ToString();
            this.homeAddress.Text= rowview["homeAddress"].ToString();
            this.homeLocus.Text= rowview["homeLocus"].ToString();
            this.remark.Text= rowview["remark"].ToString();
            this.birthYearMonth.Text= rowview["birthYearMonth"].ToString();
            SqlDataAdapter sda1 = new SqlDataAdapter(" select college from ts_xs_basicInfo where id='" + Session["StdBasicInfoList"].ToString() + "'", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_xs_basicInfo");
            this.college.DataSource = ds1.Tables["ts_xs_basicInfo"];

            this.college.DataTextField = "college";
            this.college.DataBind();

            SqlDataAdapter sda2 = new SqlDataAdapter("select currentlyGrade from ts_xs_basicInfo where id='" + Session["StdBasicInfoList"].ToString() + "'", con);

            DataSet ds2 = new DataSet();
            sda2.Fill(ds2, "ts_xs_basicInfo");
            this.currentlyGrade.DataSource = ds2.Tables["ts_xs_basicInfo"];
            this.currentlyGrade.DataTextField = "currentlyGrade";
            this.currentlyGrade.DataBind();

            
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string IDcardNumber = this.IDcardNumber.Text;
        string studyNumber = this.studyNumber.Text;
        string studentName = this.studentName.Text;
        string usedName = this.usedName.Text;
        string sex = this.sex.Text;
        string birthday = this.birthday.Text;
        string nation = this.nation.Text;
        string nativePlace = this.nativePlace.Text;
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
        string SQL = "update ts_xs_basicInfo set usedName='" + usedName +"',sex='" +sex +"',birthday='" +birthday +"',nation='" + nation +"',nativePlace='" + nativePlace +"',politicsVisage='" + politicsVisage +"',fromArea='" + fromArea +"',fromProvince='" + fromProvince +"',homePlace='" + homePlace +"',healthCondition='" + healthCondition +"',college='" + college +"',department='" + department +"',speciality='" + speciality +"',teachedClass='" + teachedClass +"',adminClass='" +adminClass +"',eductionalSystme='" + eductionalSystme +"',studyLength='" + studyLength +"',studyState='" + studyState +"',currentlyGrade='" + currentlyGrade +"',stdproveCode='" + stdproveCode +"',culitivateDirection='" + culitivateDirection +"',specialityDirection='" + specialityDirection +"',entranceDate='" + entranceDate +"',graduateSchool='" + graduateSchool +"',dormitoryCode='" + dormitoryCode +"',email='" + email +"',tel='" + tel +"',postalCode='" + postalCode +"',testproveCode='" + testproveCode +"',educationalLevel='" + educationalLevel +"',gangaotaiCode='" + gangaotaiCode +"',reportCode='" +  reportCode+"',ifathlete='" + ifathlete +"',englishGrade='" + englishGrade +"',englishMark='" + englishMark +"',lujianCode='" + lujianCode +"',strongSuit='" + strongSuit +"',partyTime='" + partyTime +"',trainDestination='" + trainDestination +"',handphoneStyle='" + handphoneStyle +"',handphoneNumber='" + handphoneNumber +"',homePostalCode='" + homePostalcode +"',homeTel='" + homeTel +"',fatherName='" + fatherName +"',fatherWorkPlace='" + fatherWorkplace +"',fatherPostalCode='" + fatherPostalcode +"',motherName='" + motherName +"',motherWorkPlace='" + motherWorkplace +"',motherPostalCode='" + motherPostalcode +"',fatherTel='" + fatherTel +"',motherTel='" + motherTel +"',homeAddress='" + homeAddress +"',homeLocus='" + homeLocus +"',remark='" + remark +"',birthYearMonth='" + birthYearMonth +"' where IDcardNumber ='"+ IDcardNumber +"' and studentName ='"+ studentName +"' and studyNumber='"+ studyNumber +"'";
        if (bc.ExecSQL(SQL))
        {
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
        }
        con.Close();
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
}
