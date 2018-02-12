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

public partial class manager_sysManager_unitManage_unit_addAdminClassInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_unit_collegeAdminClass where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_unit_collegeAdminClass");
            DataRowView rowview = ds.Tables["ts_unit_collegeAdminClass"].DefaultView[0];

            this.speciality.DataTextField = "speciality";
            this.speciality.DataBind();
            this.adminClassCode.Text = rowview["adminClassCode"].ToString();
            this.adminClassName.Text = rowview["adminClassName"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();

            SqlDataAdapter sda2 = new SqlDataAdapter(" select speciality from ts_unit_collegeAdminClass where id =" + Request["id"], con);
            DataSet ds2 = new DataSet();
            sda2.Fill(ds2, "ts_unit_collegeAdminClass");
            this.speciality.DataSource = ds2.Tables["ts_unit_collegeAdminClass"];

            this.speciality.DataTextField = "speciality";
            this.speciality.DataBind();

            SqlDataAdapter sda3 = new SqlDataAdapter("select teachedClass from ts_unit_collegeAdminClass where id =" + Request["id"], con);
            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_unit_collegeAdminClass");
            this.teachedClass.DataSource = ds3.Tables["ts_unit_collegeAdminClass"];
            this.teachedClass.DataTextField = "teachedClass";
            this.teachedClass.DataBind();

            SqlDataAdapter sda4 = new SqlDataAdapter("select college from ts_unit_collegeAdminClass where id =" + Request["id"], con);
            DataSet ds4 = new DataSet();
            sda4.Fill(ds4, "ts_unit_collegeAdminClass");
            this.college.DataSource = ds4.Tables["ts_unit_collegeAdminClass"];
            this.college.DataTextField = "college";
            this.college.DataBind();

            SqlDataAdapter sda5 = new SqlDataAdapter("select grade from ts_unit_collegeAdminClass where id =" + Request["id"], con);
            DataSet ds5 = new DataSet();
            sda5.Fill(ds5, "ts_unit_collegeAdminClass");
            this.grade.DataSource = ds5.Tables["ts_unit_collegeAdminClass"];
            this.grade.DataTextField = "grade"; 
            this.grade.DataBind();
            con.Close();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        
        
        this.adminClassName.ReadOnly = false;
        this.teacherCode.ReadOnly = false;
        this.teacherName.ReadOnly = false;
        

        this.adminClassName.BackColor = System.Drawing.Color.White;
        this.teacherCode.BackColor = System.Drawing.Color.White;
        this.teacherName.BackColor = System.Drawing.Color.White;

        this.submit.Enabled = true;
        this.edit.Enabled = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string adminClassCode = this.adminClassCode.Text;
        string adminClassName = this.adminClassName.Text;
        string grade = this.grade.Text;
        string college = this.college.Text;
        string speciality = this.speciality.Text;
        string teacherName = this.teacherName.Text;
        string teacherCode = this.teacherCode.Text;


        string SQL = "update ts_unit_collegeAdminClass set adminClassName ='" + adminClassName + "',grade ='" + grade + "',college ='" + college + "',speciality ='" + speciality + "',teacherName='" + teacherName + "',teacherCode='" + teacherCode + "' where adminClassCode = '" + this.adminClassCode.Text + "'";
        if (bc.ExecSQL(SQL))
        {

            this.speciality.Enabled = false;
            this.college.Enabled = false;
            this.adminClassName.ReadOnly = true;
            this.teacherCode.ReadOnly = true;
            this.teacherName.ReadOnly = true;
            this.grade.Enabled = false;

            this.adminClassName.BackColor = System.Drawing.Color.Transparent;
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
}
