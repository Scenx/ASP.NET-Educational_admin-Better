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

public partial class manager_sysManager_teacherManage_tea_addTeacherPunishInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_teacher_punishInfo where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_teacher_punishInfo");
            DataRowView rowview = ds.Tables["ts_teacher_punishInfo"].DefaultView[0];
            this.punishCode.Text = rowview["punishCode"].ToString();
           
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.teacherCode.Text = rowview["teacherCode"].ToString();
            this.teacherName.Text = rowview["teacherName"].ToString();
            this.technicalpost.Text = rowview["technicalpost"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.duty.Text = rowview["duty"].ToString();
            this.punishCause.Text = rowview["punishCause"].ToString();
            this.punishDate.Text = rowview["punishDate"].ToString();
            this.punishName.Text = rowview["punishName"].ToString();
            this.punishUnit.Text = rowview["punishUnit"].ToString();
            con.Close();
        }
        
        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.punishDate.ReadOnly = false;
        this.punishName.ReadOnly = false;
        this.punishCause.ReadOnly = false;
        this.punishUnit.ReadOnly = false;


        this.punishDate.BackColor = System.Drawing.Color.White;
        this.punishName.BackColor = System.Drawing.Color.White;
        this.punishCause.BackColor = System.Drawing.Color.White;
        this.punishUnit.BackColor = System.Drawing.Color.White;


        this.edit.Enabled = false;
        this.submit.Enabled = true;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string punishCode = this.punishCode.Text;
        string punishDate = this.punishDate.Text;
        string punishName = this.punishName.Text;
        string punishCause = this.punishCause.Text;
        string punishUnit = this.punishUnit.Text;

        string SQL = "update ts_teacher_punishInfo set punishDate ='"+ punishDate +"',punishName ='"+ punishName +"',punishCause ='"+ punishCause +"',punishUnit ='"+ punishUnit +"' where punishCode='"+ punishCode +"'";
        if (bc.ExecSQL(SQL))
        {
            this.punishDate.ReadOnly = true;
            this.punishName.ReadOnly = true;
            this.punishCause.ReadOnly = true;
            this.punishUnit.ReadOnly = true;


            this.punishDate.BackColor = System.Drawing.Color.Transparent;
            this.punishName.BackColor = System.Drawing.Color.Transparent;
            this.punishCause.BackColor = System.Drawing.Color.Transparent;
            this.punishUnit.BackColor = System.Drawing.Color.Transparent;


            this.edit.Enabled = true;
            this.submit.Enabled = false;

            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
        }
    }
}
