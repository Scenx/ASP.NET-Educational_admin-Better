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

public partial class manager_sysManager_unitManage_unit_addTeachedClassInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda = new SqlDataAdapter("select * from ts_unit_collegeTeachedClass where id=" + Request["id"], con);
            sda.Fill(ds, "ts_unit_collegeTeachedClass");
            DataRowView rowview = ds.Tables["ts_unit_collegeTeachedClass"].DefaultView[0];

            this.speciality.DataTextField = "speciality";
            this.speciality.DataBind();
            this.teachedClassCode.Text = rowview["teachedClassCode"].ToString();
            this.teachedClassName.Text = rowview["teachedClassName"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.grade.Text = rowview["grade"].ToString();
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();

            SqlDataAdapter sda1 = new SqlDataAdapter(" select college from ts_unit_collegeTeachedClass where id=" + Request["id"], con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_unit_collegeTeachedClass");
            this.college.DataSource = ds1.Tables["ts_unit_collegeTeachedClass"];

            this.college.DataTextField = "college";
            this.college.DataBind();

            SqlDataAdapter sda3 = new SqlDataAdapter("select grade from ts_unit_collegeTeachedClass where id=" + Request["id"], con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_unit_collegeTeachedClass");
            this.grade.DataSource = ds3.Tables["ts_unit_collegeTeachedClass"];
            this.grade.DataTextField = "grade";
            this.grade.DataBind();

            SqlDataAdapter sda2 = new SqlDataAdapter(" select speciality from ts_unit_collegeTeachedClass where id ="+ Request["id"],con);
            DataSet ds2 = new DataSet();
            sda2.Fill(ds2, "ts_unit_collegeTeachedClass");
            this.speciality.DataSource = ds2.Tables["ts_unit_collegeTeachedClass"];

            this.speciality.DataTextField = "speciality";
            this.speciality.DataBind();
            con.Close();
        }

        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {

        this.speciality.Enabled = true;
        this.college.Enabled = true;
        this.teachedClassName.ReadOnly = false;
        this.teacherCode.ReadOnly = false;
        this.teacherName.ReadOnly = false;
        this.grade.Enabled = true;

        this.teachedClassName.BackColor = System.Drawing.Color.White;
        this.teacherCode.BackColor = System.Drawing.Color.White;
        this.teacherName.BackColor = System.Drawing.Color.White;

        this.submit.Enabled = true;
        this.edit.Enabled = false;
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

       
        string SQL = "update ts_unit_collegeTeachedClass set teachedClassName ='"+ teachedClassName +"',grade ='"+ grade +"',college ='" + college +"',speciality ='"+ speciality +"',teacherName='"+ teacherName +"',teacherCode='"+ teacherCode +"' where teachedClassCode = '"+ this.teachedClassCode.Text +"'";
        if (bc.ExecSQL(SQL))
        {

            this.speciality.Enabled = false;
            this.college.Enabled = false;
            this.teachedClassName.ReadOnly = true;
            this.teacherCode.ReadOnly = true;
            this.teacherName.ReadOnly = true;
            this.grade.Enabled = false;

            this.teachedClassName.BackColor = System.Drawing.Color.Transparent;
            this.teacherCode.BackColor = System.Drawing.Color.Transparent;
            this.teacherName.BackColor = System.Drawing.Color.Transparent;

            this.submit.Enabled = false;
            this.edit.Enabled = true;
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
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
