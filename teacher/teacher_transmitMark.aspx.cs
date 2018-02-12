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

public partial class teacher_teacher_transmitMark : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["teacherCode"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        if (!IsPostBack)
        {
            this.teacherCode.Text = Session["teacherCode"].ToString();
            this.teacherName.Text = Session["teaName"].ToString();
            this.tecnicalPost.Text = Session["teaTechnicalpost"].ToString();
            this.college.Text = Session["teaCollege"].ToString();
            this.bind();
        }
    }


    protected void bind()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_stdChooseCoursesInfo where teacherCode = '" + Session["teacherCode"].ToString() + "' and courseStudyYear ='" + "2007-2008" + "' and courseSemester = '" + 1 + "'and courseProperty = '" + "校公共选修课" + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_xs_stdChooseCoursesInfo");
        GridView1.DataSource = ds.Tables["ts_xs_stdChooseCoursesInfo"];
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            string studyNumber = GridView1.Rows[i].Cells[0].Text.ToString();
            string courseName = GridView1.Rows[i].Cells[3].Text.ToString();
            SqlCommand scd1 = new SqlCommand("select count(*) from ts_xs_Mark  where studyNumber='" + studyNumber + "' and courseName='" + courseName + "'and studyYear='" + "2007-2008" + "'and semester='" + 1 + "'", con);
            int count = Convert.ToInt32(scd1.ExecuteScalar());
            if (count > 0)
            {
                LinkButton LB = (LinkButton)GridView1.Rows[i].FindControl("LinkButton1");
                LB.Text = "<font color=#003399>已上传</font>";
            }
        }
        con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "LBClick")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            string id = Convert.ToString(GridView1.DataKeys[index].Value);
            string studyNumber = GridView1.Rows[index].Cells[0].Text;
            string courseName = GridView1.Rows[index].Cells[3].Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlCommand scd1 = new SqlCommand("select count(*) from ts_xs_Mark  where studyNumber='"+ studyNumber +"' and courseName='"+ courseName +"'and studyYear='"+ "2007-2008" +"'and semester='"+ 1 +"'", con);
            int count = Convert.ToInt32(scd1.ExecuteScalar());
            if (count > 0)
            {
                con.Close();
                this.bind();
                LinkButton LB = (LinkButton)GridView1.Rows[index].FindControl("LinkButton1");
                LB.Attributes.Add("onclick", "return confirm('您已经给此生上传过此门课的成绩！如有问题请与教务处管理员联系！')");
                //Response.Write(bc.MessageBox("您已经给此生上传过此门课的成绩！如有问题请与教务处管理员联系！"));
            }
            else
            {
                this.bind();
                con.Close();
                Response.Write("<script>window.open('teacher_transmitMarkList.aspx?id=" + id + "','','width=300,height=450')</script>");
            }
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
}
