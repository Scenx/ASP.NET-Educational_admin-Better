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

public partial class manager_sysManager_teacherManage_tea_findTeacherExcellenceInfo : System.Web.UI.Page
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
        if (teacherCode1.Checked)
        {
            if (this.teacherCode.Text != "")
            {
                sch = sch + "and teacherCode like '%" + this.teacherCode.Text + "%' ";
            }
        }
        if (this.IDcardNumber1.Checked)
        {
            if (this.IDcardNumber.Text != "")
            {
                sch = sch + "and IDcardNumber like '%" + this.IDcardNumber.Text + "%' ";
            }
        }
        if (this.teacherName1.Checked)
        {
            if (this.teacherName.Text != "")
            {
                sch = sch + "and teacherName like '%" + this.teacherName.Text + "%' ";
            }
        }

        if (this.duty1.Checked)
        {
            if (this.duty.Text != "")
            {
                sch = sch + "and duty like '%" + this.duty.Text + "%' ";
            }
        }
        if (this.technicalpost1.Checked)
        {
            if (this.technicalpost.Text != "")
            {
                sch = sch + "and technicalpost like '%" + this.technicalpost.Text + "%' ";
            }
        }
        Session["teaExcellenceInfoSQL"] = sch;
        Session["teaExcellenceInfoCollege"] = this.college.Text.ToString();
        if (this.college.Text != "")
        {
            Response.Write("<script>window.open('tea_findTeacherExcellenceInfoResult.aspx?','','width=900,height=620');window.Close();</script>");
        }
    }
}
