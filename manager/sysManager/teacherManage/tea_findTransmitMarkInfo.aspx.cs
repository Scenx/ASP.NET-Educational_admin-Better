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


public partial class manager_sysManager_teacherManage_tea_findTransmitMarkInfo : System.Web.UI.Page
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
            string college1 = this.college.Text;
            SqlDataAdapter sda = new SqlDataAdapter(" select speciality from ts_unit_collgeSpeciality where collegeName ='" + college1 + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "ts_unit_collgeSpeciality");
            //DataRowView rowview = ds.Tables["ts_xs_professionalCourses"].DefaultView[0];
            this.speciality.DataSource = ds.Tables["ts_unit_collgeSpeciality"];

            this.speciality.DataTextField = "speciality";
            this.speciality.DataBind();
            SqlDataAdapter sda1 = new SqlDataAdapter(" select college from ts_unit_college", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_unit_college");
            this.college.DataSource = ds1.Tables["ts_unit_college"];

            this.college.DataTextField = "college";
            this.college.DataBind();

            
            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.studyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.studyYear.DataTextField = "studyYear";
            con.Close();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string sch = " ";
        int markChecked = 0;
        if (this.teacherCode1.Checked)
        {
            
            if (this.teacherCode.Text != "")
            {
                sch = sch + "and teacherCode like '%" + this.teacherCode.Text + "%' ";
            }
            
        }
        if (this.studyNumber1.Checked)
        {
            if (this.studyNumber.Text != "")
            {
                sch = sch + "and studyNumber like '%" + this.studyNumber.Text + "%' ";
            }
        }
        if (this.teacherName1.Checked)
        {
            if (this.teacherName.Text != "")
            {
                sch = sch + "and teacherName like '%" + this.teacherName.Text + "%' ";
            }
        }
        if (this.courseName1.Checked)
        {
            if (this.courseName.Text != "")
            {
                sch = sch + "and courseName like '%" + this.courseName.Text + "%' ";
            }
        }
        if (this.courseCode1.Checked)
        {
            if (this.courseCode.Text != "")
            {
                sch = sch + "and courseCode like '%" + this.courseCode.Text + "%' ";
            }
        }
        if (this.courseProperty1.Checked)
        {
            if (this.courseProperty.Text != "")
            {
                sch = sch + "and courseProperty like '%" + this.courseProperty.Text + "%' ";
            }
        }
        if (this.studyYear1.Checked)
        {
            if (this.studyYear.Text != "")
            {
                sch = sch + "and studyYear like '%" + this.studyYear.Text + "%' ";
            }
        }
        if (this.semester1.Checked)
        {
            if (this.Semester.Text != "")
            {
                int Semester2 = Convert.ToInt32(this.Semester.Text);
                sch = sch + "and semester like '%" + Semester2 + "%' ";
            }
        }
        if (this.studentName1.Checked)
        {
            if (this.studentName.Text != "")
            {
                sch = sch + "and studentName like '%" + this.studentName.Text + "%' ";
            }
        }
        if (this.college1.Checked)
        {
            if (this.college.Text != "")
            {
                sch = sch + "and collegeName like '%" + this.college.Text + "%' ";
            }
        }
        if (this.speciality1.Checked)
        {
            if (this.speciality.Text != "")
            {
                sch = sch + "and speciality like '%" + this.speciality.Text + "%' ";
            }
        }
        if (this.ninety.Checked)
        {
            sch = sch + "and mark >=" + 90 + " ";
            markChecked++;
        }
        if (this.eighty.Checked)
        {
            sch = sch + "and mark >=" + 80 + " ";
            markChecked++;
        }
        if (this.seventy.Checked)
        {
            sch = sch + "and mark >=" + 70 + " ";
            markChecked++;
        }
        
        if (this.sixty.Checked)
        {
             sch = sch + "and mark >=" + 60 + " ";
             markChecked++;
        }
        if (this.unpass.Checked)
        {
            sch = sch + "and mark <" + 60 + " ";
            markChecked++;
        }
        if (markChecked <= 1)
        {
            Session["teaTransimitMarkInfoSQL"] = sch;
            Session["teaTransimitMarkInfoCourseProperty"] = this.courseProperty.Text.ToString();
            if (this.college.Text != "")
            {
                Response.Write("<script>window.open('tea_findTransmitMarkInfoResult.aspx?','','width=1003,height=620');window.Close();</script>");
            }
        }
        else
        {
            Response.Write(bc.MessageBox("学生成绩项最多只能选择一项！"));
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
}
