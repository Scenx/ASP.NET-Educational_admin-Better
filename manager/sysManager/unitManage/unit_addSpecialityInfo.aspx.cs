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

public partial class manager_sysManager_unitManage_unit_addSpecialityInfo : System.Web.UI.Page
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
            this.collegeName.DataSource = ds1.Tables["ts_unit_college"];

            this.collegeName.DataTextField = "college";
            this.collegeName.DataBind();
            con.Close();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string specialityCode = this.specialityCode.Text;
        string speciality = this.speciality.Text;
        string collegeName = this.collegeName.Text;
        string specialityIntroduce = this.specialityIntroduce.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_unit_collgeSpeciality where specialityCode = '"+ this.specialityCode.Text +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        con.Close();
        if (count == 0)
        {
            string SQL = "insert into ts_unit_collgeSpeciality  (collegeName,speciality,specialityCode,specialityIntroduce,addMan,addDate) values ('" + collegeName + "','" + speciality + "','" + specialityCode + "','" + specialityIntroduce + "','"+ Session["manName"] +"','"+ System.DateTime.Now.ToString() +"')";
            if (bc.ExecSQL(SQL))
            {
                System.Text.StringBuilder sb1 = new StringBuilder();
                sb1.Append("专业编号：" + specialityCode + " 专业简介：" + specialityIntroduce + "  专业名称：" + speciality + " 数据提交成功...");
                this.submitResult.Text = sb1.ToString();
                this.submitResult.Visible = true;
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍候再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("此专业编号已存在！请查证后再输入！"));
        }
    }
}
