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


public partial class manager_sysManager_unitManage_unit_addTeachedClassInfo : System.Web.UI.Page
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
            SqlCommand scd = new SqlCommand("select college from ts_unit_college ", con);
            string collegeName = Convert.ToString(scd.ExecuteScalar());
            SqlDataAdapter sda = new SqlDataAdapter(" select speciality from ts_unit_collgeSpeciality where collegeName ='" + collegeName + "'", con);
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
            con.Close();
            
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string teachedClassCode = this.teachedClassCode.Text;
        string teachedClassName = this.teachedClassName.Text;
        string grade = this.grade.Text;
        string college = this.college.Text;
        string speciality = this.speciality.Text;
        string teacherName = this.teacherName.Text;
        string teacherCode = this.teacherCode.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_unit_collegeTeachedClass where teachedClassCode = '"+ teachedClassCode +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count == 0)
        {
            string SQL = "insert into ts_unit_collegeTeachedClass (grade,teachedClassCode,teachedClassName,speciality,college,teacherName,teacherCode) values ('" + grade + "','" + teachedClassCode + "','" + teachedClassName + "','" + speciality + "','" + college + "','" + teacherName + "','" + teacherCode + "')";
            if (bc.ExecSQL(SQL))
            {
                System.Text.StringBuilder sb1 = new StringBuilder();
                sb1.Append("教学班编号：" + teachedClassCode + " 教学班名称：" + teachedClassName + "  所属学院：" + college + " 辅导员姓名： "+ teacherName +" 辅导员编号： "+ teacherCode +" 数据提交成功...");
                this.submitResult.Text = sb1.ToString();
                this.submitResult.Visible = true;
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("数据库中已存在此教学班编号！请查证后再输入！"));
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
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
