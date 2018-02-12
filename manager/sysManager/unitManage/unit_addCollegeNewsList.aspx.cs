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

public partial class manager_sysManager_unitManage_unit_addCollegeNewsList : System.Web.UI.Page
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
            SqlDataAdapter sda = new SqlDataAdapter("select * from ts_news where id=" + Request["id"], con);
            sda.Fill(ds, "ts_news");
            DataRowView rowview = ds.Tables["ts_news"].DefaultView[0];

            this.newsTitle.Text = rowview["title"].ToString();
            this.newsContent.Text = rowview["content"].ToString();
            this.faceObject.Text = rowview["faceObject"].ToString();
            this.college.Text = rowview["releaseUnit"].ToString();

            SqlDataAdapter sda1 = new SqlDataAdapter(" select releaseUnit from ts_news where id=" + Request["id"], con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_news");
            this.college.DataSource = ds1.Tables["ts_news"];

            this.college.DataTextField = "releaseUnit";
            this.college.DataBind();
            con.Close();
        }

        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.newsContent.BackColor = System.Drawing.Color.White;
        this.newsTitle.BackColor = System.Drawing.Color.White;
        this.faceObject.BackColor = System.Drawing.Color.White;

        this.faceObject.ReadOnly = false;
        this.newsTitle.ReadOnly = false;
        this.newsContent.ReadOnly = false;

        this.submit.Enabled = true;
        this.edit.Enabled = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string ID = Request["id"].ToString();
        string title = this.newsTitle.Text;
        int count = title.Length;
        string dateLimit = this.dateLimit.SelectedDate.ToLongDateString();
        string releaseUnit = this.college.Text;
        string releaseDate = System.DateTime.Now.ToString();
        string faceObject = this.faceObject.Text;
        string newsStyle = "院系新闻";
        string SQL = "update  ts_news set title='" + title + "',content='" + this.newsContent.Text + "',dateLimit='"+ dateLimit +"',faceObject='"+ faceObject +"' where id='"+ Convert.ToString(ID) +"'";

        if (count <= 20)
        {
            if (bc.ExecSQL(SQL))
            {

                this.newsContent.BackColor = System.Drawing.Color.Transparent;
                this.newsTitle.BackColor = System.Drawing.Color.Transparent;
                this.faceObject.BackColor = System.Drawing.Color.Transparent;

                this.faceObject.ReadOnly = true;
                this.newsTitle.ReadOnly = true;
                this.newsContent.ReadOnly = true;

                this.submit.Enabled = false;
                this.edit.Enabled = true;
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网路忙，请稍后再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("您输入的标题字符太长！请不要超过20个字符！"));
        }
    }
}
