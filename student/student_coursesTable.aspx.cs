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

public partial class student_student_coursesTable : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    stringBuilder sb = new stringBuilder();
   
    int[,] a = new int[8, 13];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["stdUserName"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        if (!IsPostBack)
        {
            SqlConnection con1= new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con1.Open();
            SqlDataAdapter sda3 = new SqlDataAdapter("select studyYear from ts_xs_studyYear ", con1);

            DataSet ds3 = new DataSet();
            sda3.Fill(ds3, "ts_xs_studyYear");
            this.studyYear.DataSource = ds3.Tables["ts_xs_studyYear"];
            this.studyYear.DataTextField = "studyYear";
            this.studyYear.DataBind();
            this.studyYear.Text = Session["currentlyStudyYear"].ToString();
            con1.Close();
            this.Label1.Text = Session["stdUserName"].ToString();
            this.Label2.Text = Session["stdName"].ToString();
            this.Label3.Text = Session["stdSpeciality"].ToString();
            this.Label4.Text = Session["stdCollege"].ToString();
            this.Label5.Text = Session["stdTeachedClass"].ToString();
            this.Label6.Text = Session["stdAdminClass"].ToString();
            this.stdGrade.Text = Session["stdGrade"].ToString();
            for (int i = 1; i <= 7; i++)
            {
                for (int j = 1; j <= 12; j++)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
                    con.Open();
                    a[i, j] = i * 12 + j;
                    string studyYear = Session["currentlyStudyYear"].ToString();
                    int semester = Convert.ToInt32(Session["currentlySemester"]);
                    SqlCommand sd7 = new SqlCommand("select count(*)  from ts_xs_courseTable where courseTableName='" + Session["stdAdminClass"].ToString() + "'and weekday = '" + i + "'and daytime= '" + j + "' and studyYear = '" + studyYear + "' and semester ='"+semester+"'", con);
                    int count = Convert.ToInt32(sd7.ExecuteScalar());
                    if (count > 0)
                    {
                        SqlCommand sd7_1 = new SqlCommand("select courseName  from ts_xs_courseTable where courseTableName='" + Session["stdAdminClass"] + "'and weekday = '" + i + "'and daytime= '" + j + "' and studyYear = '" + studyYear + "' and semester ='"+semester+"'", con);
                        string courseName = Convert.ToString(sd7_1.ExecuteScalar());
                        SqlCommand sd7_2 = new SqlCommand("select weekPeriod  from ts_xs_courseTable where courseTableName='" + Session["stdAdminClass"] + "'and weekday = '" + i + "'and daytime= '" + j + "' and studyYear = '" + studyYear + "' and semester ='"+semester+"'", con);
                        string weekPeriod = Convert.ToString(sd7_2.ExecuteScalar());
                        SqlCommand sd7_3 = new SqlCommand("select courseDatefrom  from ts_xs_courseTable where courseTableName='" + Session["stdAdminClass"] + "'and weekday = '" + i + "'and daytime= '" + j + "' and studyYear = '" + studyYear + "' and semester ='"+semester+"'", con);
                        string courseDatefrom = Convert.ToString(sd7_3.ExecuteScalar());
                        SqlCommand sd7_4 = new SqlCommand("select teacherName  from ts_xs_courseTable where courseTableName='" + Session["stdAdminClass"] + "'and weekday = '" + i + "'and daytime= '" + j + "' and studyYear = '" + studyYear + "' and semester ='"+semester+"'", con);
                        string teacherName = Convert.ToString(sd7_4.ExecuteScalar());
                        SqlCommand sd7_5 = new SqlCommand("select coursePlace  from ts_xs_courseTable where courseTableName='" + Session["stdAdminClass"] + "'and weekday = '" + i + "'and daytime= '" + j + "' and studyYear = '" + studyYear + "' and semester ='"+semester+"'", con);
                        string coursePlace = Convert.ToString(sd7_5.ExecuteScalar());
                        System.Text.StringBuilder std = new StringBuilder();
                        std.Append(courseName);
                        std.Append("<br>");
                        std.Append(weekPeriod);
                        std.Append(courseDatefrom);
                        std.Append("<br>");
                        std.Append(teacherName);
                        std.Append("<br>");
                        std.Append(coursePlace);
                        sb.Add(new stringItem(std, a[i, j]));
                        con.Close();
                    }
                    else
                    {
                        System.Text.StringBuilder std1 = new StringBuilder();

                        stringItem si1 = new stringItem(std1, a[i, j]);
                        con.Close();
                    }
                }
            }

            stringBuilder u = sb.getText(sb, 13);
            foreach (stringItem p in u)
            {
                this.Label7.Text = p.getText();
            }
            stringBuilder u1 = sb.getText(sb, 14);
            foreach (stringItem p in u)
            {
                this.Label8.Text = p.getText();
            }
        }
    }        
    
}