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
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_studentManage_std_addGradeTestSignUpInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_fourSixGradeTextSignUp where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_xs_fourSixGradeTextSignUp");
            DataRowView rowview = ds.Tables["ts_xs_fourSixGradeTextSignUp"].DefaultView[0];
            this.testName.Text = rowview["testName"].ToString();
            this.remark.Text = rowview["remark"].ToString();
            this.testDate.Text = rowview["testDate"].ToString();
            this.testTime.Text = rowview["testTime"].ToString();
            this.testStyle.Text = rowview["testStyle"].ToString();
            this.testStudyYear.Text = rowview["signupYear"].ToString();
            this.testSemester.Text = rowview["signSemester"].ToString();
            this.restrictObject.Text = rowview["restrictObject"].ToString();
            this.testRequire.Text = rowview["testRequire"].ToString();
            this.faceObject.Text = rowview["faceObject"].ToString();
            this.remark.Text = rowview["remark"].ToString();
            con.Close();
            this.RegularExpressionValidator1.Enabled = false;
            this.RequiredFieldValidator2.Enabled = false;
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator5.Enabled = false;
            SqlDataAdapter sda3 = new SqlDataAdapter("select signupYear from ts_xs_fourSixGradeTextSignUp where id=" + Request["id"], con);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_fourSixGradeTextSignUp");
            this.testStudyYear.DataSource = ds3.Tables["ts_xs_fourSixGradeTextSignUp"];
            this.testStudyYear.DataTextField = "signupYear";
            this.testStudyYear.DataBind();
            con.Close();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        //this.testName.Enabled = true;
        this.testDate.ReadOnly = false;
        this.testTime.ReadOnly = false;
        //this.testStyle.Enabled = true;
        //this.testStudyYear.Enabled = true;
        //this.testSemester.Enabled = true;
        this.restrictObject.ReadOnly = false;
        this.testRequire.ReadOnly = false;
        this.testRequire.ReadOnly = false;
        this.faceObject.ReadOnly = false;
        this.remark.ReadOnly = false;
        this.edit.Enabled = false;
        this.submit.Enabled = true;
        this.RegularExpressionValidator1.Enabled = true;
        this.RequiredFieldValidator2.Enabled = true;
        this.RequiredFieldValidator1.Enabled = true;
        this.RequiredFieldValidator3.Enabled = true;
        this.RequiredFieldValidator4.Enabled = true;
        this.RequiredFieldValidator5.Enabled = true;
        this.testDate.BackColor = System.Drawing.Color.White;
        this.testTime.BackColor = System.Drawing.Color.White;
        this.testRequire.BackColor = System.Drawing.Color.White;
        this.restrictObject.BackColor = System.Drawing.Color.White;
        this.faceObject.BackColor = System.Drawing.Color.White;
        this.remark.BackColor = System.Drawing.Color.White;

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string semester1 = this.testSemester.Text;
        int semester = Math.Abs(Convert.ToInt32(semester1));
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        string SQL = "update ts_xs_fourSixGradeTextSignUp set testDate='" + this.testDate.Text + "',testRequire ='" + this.testRequire.Text + "',faceObject='" + this.faceObject.Text + "',restrictObject='" + this.restrictObject.Text + "',remark='" + this.remark.Text + "',testTime='" + this.testTime.Text + "' where testName='" + this.testName.Text + "' and signupYear ='" + this.testStudyYear.Text + "' and signSemester='" + semester + "' and testStyle='" + this.testStyle.Text + "'";
        if (bc.ExecSQL(SQL))
        {
            this.restrictObject.ReadOnly = true;
            this.testRequire.ReadOnly = true;
            this.testRequire.ReadOnly = true;
            this.faceObject.ReadOnly = true;
            this.remark.ReadOnly = true;
            this.edit.Enabled = true;
            this.submit.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
            this.RequiredFieldValidator2.Enabled = false;
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator5.Enabled = false;
            this.testDate.BackColor = System.Drawing.Color.Transparent;
            this.testTime.BackColor = System.Drawing.Color.Transparent;
            this.testRequire.BackColor = System.Drawing.Color.Transparent;
            this.restrictObject.BackColor = System.Drawing.Color.Transparent;
            this.faceObject.BackColor = System.Drawing.Color.Transparent;
            this.remark.BackColor = System.Drawing.Color.Transparent;
            Response.Write(bc.MessageBox("信息提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("信息提交失败！网络忙，请稍后再试！"));
        }
    }
}
