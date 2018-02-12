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

public partial class manager_sysManager_unitManage_unit_addCollegeNews : System.Web.UI.Page
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
    protected void release_Click(object sender, EventArgs e)
    {
        string title = this.newsTitle.Text;
        int count = title.Length;
        string dateLimit = this.dateLimit.SelectedDate.ToLongDateString();
        string releaseUnit = this.college.Text;
        string releaseDate = System.DateTime.Now.ToString();
        string faceObject = this.faceObject.Text;
        string newsStyle = "院系新闻";
        string SQL = "insert into ts_news (title,content,releaseUnit,releaseDate,dateLimit,releaseMan,newsStyle,faceObject) values ('" + title +"','" + this.newsContent.Text +"','" + releaseUnit +"','" + releaseDate +"','" + dateLimit +"','" + Session["manName"].ToString() +"','" + newsStyle +"','" + faceObject +"')";

        if (count <= 20)
        {
            if (bc.ExecSQL(SQL))
            {
                this.newsContent.Text = "";
                this.newsTitle.Text = "";
                this.faceObject.Text = "";


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
