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
using System.IO;
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_infomationStat_info_collegePunishInfo : System.Web.UI.Page
{
    int punishSearchTag = 0;
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
            SqlCommand scd = new SqlCommand("select college from ts_unit_college order by id desc", con);
            string college1 = Convert.ToString(scd.ExecuteScalar());
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

            SqlDataAdapter sda2 = new SqlDataAdapter("select grade from ts_xs_studyYear ", con);

            DataSet ds2 = new DataSet();
            sda2.Fill(ds2, "ts_xs_studyYear");
            this.grade.DataSource = ds2.Tables["ts_xs_studyYear"];
            this.grade.DataTextField = "grade";
            this.grade.DataBind();

            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.punishStudyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.punishStudyYear.DataTextField = "studyYear";
            this.punishStudyYear.DataBind();

            SqlDataAdapter sda4 = new SqlDataAdapter("select unitName  from ts_unit_unitInfo ", con);

            DataSet ds4 = new DataSet();
            sda4.Fill(ds4, "ts_unit_unitInfo");
            this.punishUnit.DataSource = ds4.Tables["ts_unit_unitInfo"];
            this.punishUnit.DataTextField = "unitName";
            this.punishUnit.DataBind();
            con.Close();

            if (this.highNumber.Text == "0")
            {

                this.Panel1.Visible = false;
                
            }
            else
            {

                this.Panel1.Visible = true;
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

    protected void hignSearch1_Click(object sender, EventArgs e)
    {
        if (this.highNumber.Text == "0")
        {
            this.highNumber.Text = "1";
            this.Panel1.Visible = true;
        }
        else
        {
            this.highNumber.Text = "0";
            this.Panel1.Visible = false;
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {

        string sch = " ";
        if (this.studyNumber3.Checked)
        {
            if (this.studyNumber4.Text != "")
            {
                sch = sch + "and studyNumber like '%" + this.studyNumber4.Text + "%' ";
            }
        }
        if (this.IDcardNumber3.Checked)
        {
            if (this.IDcardNumber4.Text != "")
            {
                sch = sch + "and IDcardNumber like '%" + this.IDcardNumber4.Text + "%' ";
            }
        }
        if (this.studentName1.Checked)
        {
            if (this.studentName.Text != "")
            {
                sch = sch + "and studentName like '%" + this.studentName.Text + "%' ";
            }
        }

        if (this.speciality1.Checked)
        {
            if (this.speciality.Text != "")
            {
                sch = sch + "and speciality like '%" + this.speciality.Text + "%' ";
            }
        }
        if (this.grade1.Checked)
        {
            if (this.grade.Text != "")
            {
                int grade = Convert.ToInt32(this.grade.Text);
                sch = sch + "and  grade =" + grade + " ";
            }
        }


        
        if (this.punishReason1.Checked)
        {
            if (this.punishReason.Text != "")
            {
                sch = sch + "and punishReason like '%" + this.punishReason.Text + "%' ";
            }
        }
        if (this.punishResult1.Checked)
        {
            if (this.punishResult.Text != "")
            {
                sch = sch + "and punishResult like '%" + this.punishResult.Text + "%' ";
            }
        }
        if (this.punishUnit1.Checked)
        {
            if (this.punishUnit.Text != "")
            {

                sch = sch + "and punishUnit like '%" + this.punishUnit.Text + "%' ";
            }

        }
        
        if (this.punishName1.Checked)
        {
            if (this.punishName.Text != "")
            {
                sch = sch + "and punishName like '%" + this.punishName.Text + "%' ";
            }
        }
        if (this.punishDate1.Checked)
        {
            if (this.punishDate.Text != "")
            {
                sch = sch + "and punishDate like '%" + this.punishDate.Text + "%' ";
            }
        }
        if (this.punishStudyYear1.Checked)
        {
            if (this.punishStudyYear.Text != "")
            {
                sch = sch + "and punishStudyYear like '%" + this.punishStudyYear.Text + "%' ";
            }
        }
        if (this.punishSemester1.Checked)
        {
            if (this.punishSemester.Text != "")
            {
                sch = sch + "and punishSemester like '%" + this.punishSemester.Text + "%' ";
            }
        }
        punishSearchTag = 1;
        Session["punishSearchTag"] = Convert.ToString(punishSearchTag);
        Session["punishStdStatInfoSQL"] = sch;
        Session["punishStdStatGrade"] = this.grade.Text.ToString();
        if (this.grade.Text != "")
        {
            Response.Write("<script>window.open('info_collegePunishInfoResult.aspx?','','width=900,height=620');window.Close();</script>");
        }
    }
    protected void fastSearch_Click(object sender, EventArgs e)
    {
        if (this.studyNumber1.Checked)
        {
            if (this.studyNumber2.Text != "")
            {
                punishSearchTag = 0;
                Session["punishSearchTag"] = Convert.ToString(punishSearchTag);
                string SQL = " where studyNumber ='" + this.studyNumber2.Text + "' ";
                Session["fastpunishStdStatInfoSQL"] = SQL;
                Response.Write("<script>window.open('info_collegePunishInfoResult.aspx?','','width=900,height=620');window.Close();</script>");
            }
        }
        if (this.IDcardNumber1.Checked)
        {
            if (this.IDcardNumber2.Text != "")
            {
                punishSearchTag = 0;
                Session["punishSearchTag"] = Convert.ToString(punishSearchTag);
                string SQL = " where IDcardNumber ='" + this.IDcardNumber2.Text + "' ";
                Session["fastpunishStdStatInfoSQL"] = SQL;
                Response.Write("<script>window.open('info_collegePunishInfoResult.aspx?','','width=900,height=620');window.Close();</script>");
            }
        }
    }

}
