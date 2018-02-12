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

public partial class student_student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["stdUserName"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        if (!IsPostBack)
        {
            this.bind();
            this.bind1();
        }
    }


    

    public void bind()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select top 6 * from ts_news where newsStyle ='"+ "校内公告" +"'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_news");
        GridView1.DataSource = ds.Tables["ts_news"];
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();

        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            LinkButton lb = (LinkButton)GridView1.Rows[i].FindControl("LinkButton1");
            string id = GridView1.DataKeys[i].Value.ToString();
            SqlCommand scd = new SqlCommand("select title from ts_news where id='" + id + "'",con);
            string news = Convert.ToString(scd.ExecuteScalar());
            
            lb.Text = news;
            
        }
        con.Close();
    }
    public void bind1()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select top 6 * from ts_news where newsStyle ='" + "院系新闻" + "' and releaseUnit = '"+ Session["stdCollege"].ToString() +"'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_news");
        GridView2.DataSource = ds.Tables["ts_news"];
        GridView2.DataKeyNames = new string[] { "id" };
        GridView2.DataBind();
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            LinkButton lb = (LinkButton)GridView2.Rows[i].FindControl("LinkButton2");
            string id = GridView2.DataKeys[i].Value.ToString();
            SqlCommand scd = new SqlCommand("select title from ts_news where id='" + id + "'", con);
            string news = Convert.ToString(scd.ExecuteScalar());

            lb.Text = news;

        }
        con.Close();
        
    }

    // protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //string id = GridView1.DataKeys[e.index].Value.ToString();
    //  Response.Write("<script>window.open('showSchoolNews.aspx?id=" + id + "','','width=700,height=540')</script>");
    //Response.Write("<script>location='javascript:history.go(-1)'</script>");
    //}


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "LBClick")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            string id = Convert.ToString(GridView1.DataKeys[index].Value);
            Response.Write("<script>window.open('showSchoolNews.aspx?id=" + id + "','','width=700,height=540')</script>");
        }
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton LB = (LinkButton)e.Row.FindControl("LinkButton1");
            LB.CommandArgument = e.Row.RowIndex.ToString();
        }
    }


    protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton LB = (LinkButton)e.Row.FindControl("LinkButton2");
            LB.CommandArgument = e.Row.RowIndex.ToString();
        }
        
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "LBClick1")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            string id = Convert.ToString(GridView2.DataKeys[index].Value);
            Response.Write("<script>window.open('showCollegeNews.aspx?id=" + id + "','','width=700,height=540')</script>");
        }
    }
}
