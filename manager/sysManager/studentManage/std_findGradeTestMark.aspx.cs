﻿/// <summary>
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

public partial class manager_sysManager_studentManage_std_findGradeTestMark : System.Web.UI.Page
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
            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.testStudyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.testStudyYear.DataTextField = "studyYear";
            this.testStudyYear.DataBind();
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
        string sch = " ";
        if (this.studyNumber1.Checked)
        {
            if (this.studyNumber.Text != "")
            {
                sch = sch + "and studyNumber like '%" + this.studyNumber.Text + "%' ";
            }
        }
        if (this.IDcardNumber1.Checked)
        {
            if (this.IDcardNumber.Text != "")
            {
                sch = sch + "and IDcardNumber like '%" + this.IDcardNumber.Text + "%' ";
            }
        }
        if (this.studentName1.Checked)
        {
            if (this.studentName.Text != "")
            {
                sch = sch + "and studentName like '%" + this.studentName.Text + "%' ";
            }
        }
        if (this.testName1.Checked)
        {
            if (this.testName.Text != "")
            {
                sch = sch + "and testName like '%" + this.testName.Text + "%' "; 
            }
        }
      
        if (this.testStudyYear1.Checked)
        {
            if (this.testStudyYear.Text != "")
            {
                sch = sch + "and testStudyYear like '%" + this.testStudyYear.Text + "%' "; 
            }
        }
        if (this.testSemster1.Checked)
        {
            if (this.testSemester.Text != "")
            {
                int testSemester = Math.Abs(Convert.ToInt32(this.testSemester.Text));
                sch = sch + "and testSemester like '%" + testSemester + "%' ";
            }
        }
        if (this.college1.Checked)
        {
            if (this.college.Text != "")
            {
                sch = sch + "and college like '%" + this.college.Text + "%' "; 
            }
        }
        if (this.speciality1.Checked)
        {
            if (this.speciality.Text != "")
            {
                sch = sch + "and speciality like '%" + this.speciality.Text + "%' "; 
            }
        }
        Session["gradeTestMarksSQL"] = sch;
        Session["gradeTestMarkTestStyle"] = this.testStyle.Text;
        if (sch != "" && this.testStyle.Text != "")
        {
            Response.Write("<script>window.open('std_findGradeTestMarkResult.aspx?','','width=900,height=630');window.Close();</script>");
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
