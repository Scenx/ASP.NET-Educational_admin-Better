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

public partial class teacher_teacher_transmitProCourseMark : System.Web.UI.Page
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
            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con1.Open();
            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con1);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.studyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.studyYear.DataTextField = "studyYear";
            this.studyYear.DataBind();
            this.studyYear.Text = Session["currentlyStudyYear"].ToString();
            con1.Close();
            this.teacherCode.Text = Session["teacherCode"].ToString();
            this.teacherName.Text = Session["teaName"].ToString();
            this.tecnicalPost.Text = Session["teaTechnicalpost"].ToString();
            this.college.Text = Session["teaCollege"].ToString();
            this.bind();
        }

    }


    protected void bind()
    {
        string courseProperty1 = this.courseProperty.Text;
        string adminClass1=this.adminClass.Text;
        if (courseProperty1 == ""|| adminClass1 =="")
        {
            Response.Write(bc.MessageBox("请输入课程性质或课程性质！"));

        }
        else
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_basicInfo where adminClass='"+ adminClass1 +"'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "ts_xs_basicInfo");
            GridView1.DataSource = ds.Tables["ts_xs_basicInfo"];
            GridView1.DataKeyNames = new string[] { "id" };
            GridView1.DataBind();
            this.search.Text = "一共搜索到" + GridView1.Rows.Count + "条学生信息.";
            SqlCommand sd1 = new SqlCommand("select courseName from ts_xs_professionalCourses where teacherCode='" + Session["teacherCode"].ToString() + "' and courseProperty='" + courseProperty1 + "' and semester='" + Convert.ToInt32(Session["currentlySemester"]) + "' and studyYear ='" + Session["currentlyStudyYear"].ToString() + "'", con);
            SqlCommand sd2 = new SqlCommand("select courseCode from ts_xs_professionalCourses where teacherCode='" + Session["teacherCode"].ToString() + "' and courseProperty='" + courseProperty1 + "' and semester='" + Convert.ToInt32(Session["currentlySemester"]) + "' and studyYear ='" + Session["currentlyStudyYear"].ToString() + "'", con);
            string courseName = Convert.ToString(sd1.ExecuteScalar());
            string courseCode = Convert.ToString(sd2.ExecuteScalar());
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {

                string studyNumber = GridView1.Rows[i].Cells[0].Text.ToString();
                Label LL1 = (Label)GridView1.Rows[i].FindControl("Label1");
                Label LL2 = (Label)GridView1.Rows[i].FindControl("Label2");
                Label LL3 = (Label)GridView1.Rows[i].FindControl("Label3");
                LL1.Text = courseCode;
                LL2.Text = courseName;
                LL3.Text = courseProperty1;
                SqlCommand scd1 = new SqlCommand("select count(*) from ts_xs_Mark  where studyNumber='" + studyNumber + "' and courseName='" + courseName + "'and studyYear='" + Session["currentlyStudyYear"].ToString() + "'and semester='" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                int count = Convert.ToInt32(scd1.ExecuteScalar());
                if (count > 0)
                {
                    LinkButton LB = (LinkButton)GridView1.Rows[i].FindControl("LinkButton1");
                    LB.Text = "<font color=#003399>已上传</font>";
                }
            }
            con.Close();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string courseProperty1 = this.courseProperty.Text;
        if (e.CommandName == "LBClick")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            string id = Convert.ToString(GridView1.DataKeys[index].Value);
            string studyNumber = GridView1.Rows[index].Cells[0].Text;
            Label LL2 = (Label)GridView1.Rows[index].FindControl("Label2");
            string courseName = LL2.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlCommand scd1 = new SqlCommand("select count(*) from ts_xs_Mark  where studyNumber='" + studyNumber + "' and courseName='" + courseName + "'and studyYear='" + Session["currentlyStudyYear"].ToString() + "'and semester='" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
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
                SqlCommand sd1 = new SqlCommand("select courseName from ts_xs_professionalCourses where teacherCode='" + Session["teacherCode"].ToString() + "' and courseProperty='" + courseProperty1 + "' and semester='" + Convert.ToInt32(Session["currentlySemester"]) + "' and studyYear ='" + Session["currentlyStudyYear"].ToString() + "'", con);
                SqlCommand sd2 = new SqlCommand("select courseCode from ts_xs_professionalCourses where teacherCode='" + Session["teacherCode"].ToString() + "' and courseProperty='" + courseProperty1 + "' and semester='" + Convert.ToInt32(Session["currentlySemester"]) + "' and studyYear ='" + Session["currentlyStudyYear"].ToString() + "'", con);
                Session["courseName"] = Convert.ToString(sd1.ExecuteScalar());
                Session["courseCode"] = Convert.ToString(sd2.ExecuteScalar());
                Session["courseProperty"] = courseProperty1.ToString();
                con.Close();
                Response.Write("<script>window.open('teacher_transmitProCourseList.aspx?id=" + id + "','','width=300,height=450')</script>");
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
    protected void courseProperty_SelectedIndexChanged(object sender, EventArgs e)
    {
        string courseProperty1 = courseProperty.Text;
        if (this.courseProperty.Text != "")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select courseAdminClass from ts_xs_professionalCourses where teacherCode='"+ Session["teacherCode"].ToString() +"'and courseProperty ='"+ this.courseProperty.Text +"'and studyYear='"+ Session["currentlyStudyYear"].ToString() +"' and semester='"+ Convert.ToInt32(Session["currentlySemester"]) +"' order by id desc", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "ts_xs_professionalCourses");
            //DataRowView rowview = ds.Tables["ts_xs_professionalCourses"].DefaultView[0];
            this.adminClass.DataSource = ds.Tables["ts_xs_professionalCourses"];
            
            this.adminClass.DataTextField = "courseAdminClass";
            this.adminClass.DataBind();
            con.Close();
            this.bind();
        }
    }
    protected void adminClass_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        this.bind();
    }
}
