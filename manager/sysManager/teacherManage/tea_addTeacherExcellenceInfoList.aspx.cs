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
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class manager_sysManager_teacherManage_tea_addTeacherExcellenceInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_teacher_excellenceInfo where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_teacher_excellenceInfo");
            DataRowView rowview = ds.Tables["ts_teacher_excellenceInfo"].DefaultView[0];
            this.scholarCode.Text = rowview["scholarCode"].ToString();
            this.ifExcellenceTeacher.Text = rowview["ifExcellenceTeacher"].ToString();
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.technicalpost.Text = rowview["technicalpost"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.duty.Text = rowview["duty"].ToString();
            this.scholarDate.Text = rowview["scholarDate"].ToString();
            this.scholarCause.Text = rowview["scholarCause"].ToString();
            this.scholarName.Text = rowview["scholarName"].ToString();
            this.scholarSum.Text = rowview["scholarSum"].ToString();
            this.giveScholarUnit.Text = rowview["giveScholarUnit"].ToString();

            con.Close();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    
    protected void submit_Click(object sender, EventArgs e)
    {
        string scholarDate = this.scholarDate.Text;
        string scholarSum = this.scholarSum.Text;
        string scholarName = this.scholarName.Text;
        string scholarCause = this.scholarCause.Text;
        string giveScholarUnit = this.giveScholarUnit.Text;
        string scholarCode = this.scholarCode.Text;

        string SQL = "update ts_teacher_excellenceInfo set scholarDate ='"+ scholarDate +"' ,scholarSum = '"+ scholarSum +"',scholarName ='"+ scholarName +"',scholarCause='"+ scholarCause +"' ,giveScholarUnit ='"+ giveScholarUnit +"' where scholarCode = '"+ scholarCode +"'";
        if (bc.ExecSQL(SQL))
        {
            this.scholarDate.ReadOnly = true;
            this.scholarSum.ReadOnly = true;
            this.scholarCause.ReadOnly = true;
            this.scholarName.ReadOnly = true;
            this.giveScholarUnit.ReadOnly = true;

            this.scholarDate.BackColor = System.Drawing.Color.Transparent;
            this.scholarName.BackColor = System.Drawing.Color.Transparent;
            this.scholarCause.BackColor = System.Drawing.Color.Transparent;
            this.scholarSum.BackColor = System.Drawing.Color.Transparent;
            this.giveScholarUnit.BackColor = System.Drawing.Color.Transparent;

            this.edit.Enabled = true;
            this.submit.Enabled = false;
            Response.Write(bc.MessageBox("数据提交成功！"));

        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
        }
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.scholarDate.ReadOnly = false;
        this.scholarSum.ReadOnly = false;
        this.scholarCause.ReadOnly = false;
        this.scholarName.ReadOnly = false;
        this.giveScholarUnit.ReadOnly = false;

        this.scholarDate.BackColor = System.Drawing.Color.White;
        this.scholarName.BackColor = System.Drawing.Color.White;
        this.scholarCause.BackColor = System.Drawing.Color.White;
        this.scholarSum.BackColor = System.Drawing.Color.White;
        this.giveScholarUnit.BackColor = System.Drawing.Color.White;

        this.edit.Enabled = false;
        this.submit.Enabled = true;
    }
}
