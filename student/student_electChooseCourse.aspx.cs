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

public partial class student_student_electChooseCourse : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["stdUserName"]) == "")
        {
            Response.Write("<script language=javascript>location='../TS_login.aspx'</script>");
            return;
        }
        if (!IsPostBack)
        {
            this.Label1.Text = Session["stdUserName"].ToString();
            this.Label2.Text = Session["stdName"].ToString();
            this.Label3.Text = Session["stdSpeciality"].ToString();
            this.Label4.Text = Session["stdCollege"].ToString();
            this.Label5.Text = Session["stdTeachedClass"].ToString();
            this.Label6.Text = Session["stdAdminClass"].ToString();
            this.bind1();
            this.bind2();
            this.bind3();
        }
        
    }

    public void bind1()
    {
        Session["currentlyStudyYear"].ToString();
        Convert.ToInt32(Session["currentlySemester"]);
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_chooseCoursesInfo where courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester ='"+ Convert.ToInt32(Session["currentlySemester"]) + "' order by id", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_xs_chooseCoursesInfo");
        GridView1.DataSource = ds.Tables["ts_xs_chooseCoursesInfo"];
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
        con.Close();
    }

    public void bind2()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_stdChooseCoursesInfo where courseStudyYear ='" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'and studyNumber = '" + Session["stdUserName"].ToString() + "' order by id", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_xs_stdChooseCoursesInfo");
        GridView2.DataSource = ds.Tables["ts_xs_stdChooseCoursesInfo"];
        GridView2.DataKeyNames = new string[] { "id" };
        
        GridView2.DataBind();
        con.Close();
       
        
    }

    public void bind3()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_stdChooseCoursesInfo where courseStudyYear ='" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'and studyNumber = '" + Session["stdUserName"].ToString() + "' order by id", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_xs_stdChooseCoursesInfo");
        GridView3.DataSource = ds.Tables["ts_xs_stdChooseCoursesInfo"];
        GridView3.DataKeyNames = new string[] { "id" };
        GridView3.DataBind();
        con.Close();
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        int checkedCount1 = 0;
        int chechedCount2 = 0;
        int uncheckedCount1 = 0;
        int uncheckedCount2 = 0;
        int[] a = new int[200];
        int[] b = new int[200];
        for (int i = 0; i <= 199; i++)
        {
            a[i] = b[i] = 0;
        }
        int rowsNumber = GridView1.Rows.Count;
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox1 = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            CheckBox cbox2 = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
            if (cbox1.Checked == true)
            {
                checkedCount1++;
                a[i] = i + 1;
            }
            else
            {
                uncheckedCount1++;
            }
            if (cbox2.Checked == true)
            {
                chechedCount2++;
                b[i] = i + 1;
            }
            else
            {
                uncheckedCount2++;
            }
        }

        if (checkedCount1 > 2)
        {
            Response.Write("<script>alert('每次最多只能选择两门选修课！');history.back()</script>");
        }
        if (uncheckedCount1 == rowsNumber)
        {
            Response.Write("<script>alert('你还没有选择你所要选择的选修课！');history.back()</script>");
        }
        else
        {
            SqlConnection constr = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            constr.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from ts_xs_stdChooseCoursesInfo where studyNumber ='" + Session["stdUserName"] + "' and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", constr);
            int dbcount = Convert.ToInt32(cmd.ExecuteScalar());
            constr.Close();
            int totalcount = dbcount + checkedCount1;
            if (totalcount <= 2)
            {
                if (checkedCount1 == 1)
                {
                    int checkedNumber = 0;
                    int teachingMaterial = 0;
                    for (int i = 0; i <= 199; i++)
                    {
                        if (a[i] != 0)
                        {
                            checkedNumber = i;

                        }
                    }
                    for (int i = 0; i <= 199; i++)
                    {
                        if (b[checkedNumber] != 0)
                        {
                            teachingMaterial = 1;
                        }
                    }

                    int yuding = 0;

                    for (int i = 0; i <= 199; i++)
                    {
                        if (i != checkedNumber && b[i] != 0)
                        {
                            yuding++;
                        }
                    }
                    if (yuding != 0)
                    {
                        Response.Write("<script>alert('你选择了其他选修课科目预定教材，但你没有选择此选修课！');history.back()</script>");
                    }
                    else
                    {
                        string courseName = GridView1.Rows[checkedNumber].Cells[2].Text.ToString();
                        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
                        con.Open();

                        string capacity1 = GridView1.Rows[checkedNumber].Cells[9].Text.ToString();
                        int capacity = Math.Abs(Convert.ToInt32(capacity1));
                        string choosed1 = GridView1.Rows[checkedNumber].Cells[10].Text.ToString();
                        int choosed = Math.Abs(Convert.ToInt32(choosed1));
                        choosed++;
                        string remain1 = GridView1.Rows[checkedNumber].Cells[11].Text.ToString();
                        int remain = Math.Abs(Convert.ToInt32(remain1));
                        remain--;
                        SqlCommand sd = new SqlCommand("select count(*) from ts_xs_stdChooseCoursesInfo where courseName = '" + courseName + "' and studyNumber ='"+ Session["stdUserName"].ToString() +"'", con);
                        int sdSQL = Convert.ToInt32(sd.ExecuteScalar());
                        if (sdSQL <= 0)
                        {
                            SqlCommand sd1 = new SqlCommand("select courseCode from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string courseCode = Convert.ToString(sd1.ExecuteScalar());
                            SqlCommand sd2 = new SqlCommand("select teacherCode from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string teacherCode = Convert.ToString(sd2.ExecuteScalar());
                            SqlCommand sd3 = new SqlCommand("select teacherName from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string teacherName = Convert.ToString(sd3.ExecuteScalar());
                            SqlCommand sd4 = new SqlCommand("select courseTime from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string courseTime = Convert.ToString(sd4.ExecuteScalar());
                            SqlCommand sd5 = new SqlCommand("select coursePlace from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string coursePlace = Convert.ToString(sd5.ExecuteScalar());
                            SqlCommand sd6 = new SqlCommand("select creditHour from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            int creditHour = Convert.ToInt32(sd6.ExecuteScalar());
                            SqlCommand sd7 = new SqlCommand("select weekPeriod from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            int weekPeriod = Convert.ToInt32(sd7.ExecuteScalar());
                            SqlCommand sd8 = new SqlCommand("select weekDateFrom from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string weekDateFrom = Convert.ToString(sd8.ExecuteScalar());
                            SqlCommand sd9 = new SqlCommand("select remark from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string remark = Convert.ToString(sd9.ExecuteScalar());
                            SqlCommand sd10 = new SqlCommand("select courseProperty from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string courseProperty = Convert.ToString(sd10.ExecuteScalar());
                            SqlCommand sd11 = new SqlCommand("select schoolArea from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string schoolArea = Convert.ToString(sd11.ExecuteScalar());
                            SqlCommand sd12 = new SqlCommand("select courseCollege from ts_xs_chooseCoursesInfo where courseName = '" + courseName + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string courseCollege = Convert.ToString(sd12.ExecuteScalar());
                            string SQL = "insert into ts_xs_stdChooseCoursesInfo (studyNumber,studentName,IDcardNumber,college,speciality,teachedClass,adminClass,courseCode,ifChoose,ifTeachingMaterial,courseName,teacherCode,teacherName,courseTime,coursePlace,creditHour,weekPeriod,weekDateFrom,remark,courseProperty,schoolArea,courseCollege,courseStudyYear,courseSemester,chooseDate) values('" + Session["stdUserName"].ToString() + "','" + Session["stdName"].ToString() + "','" + Session["stdIDcardNumber"].ToString() + "','"+ Session["stdCollege"].ToString() +"','" + Session["stdSpeciality"].ToString() + "','" + Session["stdTeachedClass"].ToString() + "','" + Session["stdAdminClass"] + "','" + courseCode + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','" + teachingMaterial + "','" + courseName + "','" + teacherCode + "','" + teacherName + "','" + courseTime + "','" + coursePlace + "','" + creditHour + "','" + weekPeriod + "','" + weekDateFrom + "','" + remark + "','" + courseProperty + "','" + schoolArea + "','" + courseCollege + "','" + Session["currentlyStudyYear"].ToString() + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','"+ System.DateTime.Now.ToString() +"')";
                            string SQL1 = "update ts_xs_chooseCoursesInfo set choosed=  '" + choosed + "' where courseName='" + courseName + "' and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "' and courseSemester ='" + Convert.ToInt32(Session["currentlySemester"]) + "'";
                            string SQL2 = "update ts_xs_chooseCoursesInfo set remain=  '" + remain + "' where courseName='" + courseName + "' and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "' and courseSemester ='" + Convert.ToInt32(Session["currentlySemester"]) + "'";
                            if (bc.ExecSQL(SQL) && bc.ExecSQL(SQL1) && bc.ExecSQL(SQL2))
                            {
                                con.Close();
                                this.bind1();
                                this.bind2();
                                this.bind3();
                                Response.Write("<script>alert('你已成功选择此门修课！')</script>");
                            }
                            else
                            {
                                con.Close();
                                Response.Write("<script>alert('数据提交不成功！系统忙！请稍后再试！');history.back()</script>");
                            }
                            
                        }
                        else
                        {
                            Response.Write("<script>alert('你已经选择过此门选修课或你已经选修此们选修课！');history.back()</script>");
                        }

                    }

                }
                if (checkedCount1 == 2)
                {
                    int p=0, q = 0;
                    System.Collections.ArrayList myList = new System.Collections.ArrayList();
                    for (int i = 0; i <= 199; i++)
                    {
                        if (a[i] != 0)
                        {
                            myList.Add(i);
                        }
                    }
                    int m = (int)myList[0];
                    int n = (int)myList[1];
                    for (int i = 0; i <= 199; i++)
                    {
                        if (a[m] != 0)
                        {
                            p = 1;
                        }
                        if (a[n] != 0)
                        {
                            q = 1;
                        }
                    }
                    int yuding = 0;
                    for (int i = 0; i < 199; i++)
                    {
                        if (i != m && i != n && b[i] != 0)
                        {
                            yuding++;
                        }
                    }
                    if (yuding != 0)
                    {
                        Response.Write("<script>alert('你选择了其他选修科目预定教材，但你没有选择次们此选修课！');history.back()</script>");
                    }
                    else
                    {
                        string courseName1 = GridView1.Rows[m].Cells[2].Text.ToString();
                        string courseName2 = GridView1.Rows[n].Cells[2].Text.ToString();
                        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
                        con.Open();

                        string capacity11 = GridView1.Rows[m].Cells[9].Text.ToString();
                        string capacity22 = GridView1.Rows[n].Cells[9].Text.ToString();
                        int capacity1 = Math.Abs(Convert.ToInt32(capacity11));
                        int capacity2 = Math.Abs(Convert.ToInt32(capacity22));
                        string choosed11 = GridView1.Rows[m].Cells[10].Text.ToString();
                        string choosed22 = GridView1.Rows[n].Cells[10].Text.ToString();
                        int choosed1 = Math.Abs(Convert.ToInt32(choosed11));
                        int choosed2 = Math.Abs(Convert.ToInt32(choosed22));
                        choosed1++;
                        choosed2++;
                        string remain11 = GridView1.Rows[m].Cells[11].Text.ToString();
                        string remain22 = GridView1.Rows[n].Cells[11].Text.ToString();
                        int remain1 = Math.Abs(Convert.ToInt32(remain11));
                        int remain2 = Math.Abs(Convert.ToInt32(remain22));
                        remain1--;
                        remain2--;
                        SqlCommand scd1 = new SqlCommand("select count(*) from ts_xs_stdChooseCoursesInfo where courseName = '" + courseName1 + "'", con);
                        int sdSQL1 = Convert.ToInt32(scd1.ExecuteScalar());
                        SqlCommand scd2 = new SqlCommand("select count(*) from ts_xs_stdChooseCoursesInfo where courseName = '" + courseName2 + "'", con);
                        int sdSQL2 = Convert.ToInt32(scd2.ExecuteScalar());
                        if (sdSQL1 <= 0 && sdSQL2 <= 0)
                        {
                            SqlCommand sdm1 = new SqlCommand("select courseCode from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string courseCodem = Convert.ToString(sdm1.ExecuteScalar());
                            SqlCommand sdn1 = new SqlCommand("select courseCode from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string courseCoden = Convert.ToString(sdn1.ExecuteScalar());
                            SqlCommand sdm2 = new SqlCommand("select teacherCode from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                           
                            string teacherCodem = Convert.ToString(sdm2.ExecuteScalar());
                            SqlCommand sdn2 = new SqlCommand("select teacherCode from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string teacherCoden = Convert.ToString(sdn2.ExecuteScalar());
                            SqlCommand sdm3 = new SqlCommand("select teacherName from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string teacherNamem = Convert.ToString(sdm3.ExecuteScalar());
                            SqlCommand sdn3 = new SqlCommand("select teacherName from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string teacherNamen = Convert.ToString(sdn3.ExecuteScalar());
                            SqlCommand sdm4 = new SqlCommand("select courseTime from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string courseTimem = Convert.ToString(sdm4.ExecuteScalar());
                            SqlCommand sdn4 = new SqlCommand("select courseTime from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string courseTimen = Convert.ToString(sdn4.ExecuteScalar());
                            SqlCommand sdm5 = new SqlCommand("select coursePlace from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string coursePlacem = Convert.ToString(sdm5.ExecuteScalar());
                            SqlCommand sdn5 = new SqlCommand("select coursePlace from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string coursePlacen = Convert.ToString(sdn5.ExecuteScalar());
                            SqlCommand sdm6 = new SqlCommand("select creditHour from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            int creditHourm = Convert.ToInt32(sdm6.ExecuteScalar());
                            SqlCommand sdn6 = new SqlCommand("select creditHour from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            int creditHourn = Convert.ToInt32(sdn6.ExecuteScalar());
                            SqlCommand sdm7 = new SqlCommand("select weekPeriod from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            int weekPeriodm = Convert.ToInt32(sdm7.ExecuteScalar());
                            SqlCommand sdn7 = new SqlCommand("select weekPeriod from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            int weekPeriodn = Convert.ToInt32(sdn7.ExecuteScalar());
                            SqlCommand sdm8 = new SqlCommand("select weekDateFrom from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string weekDateFromm = Convert.ToString(sdm8.ExecuteScalar());
                            SqlCommand sdn8 = new SqlCommand("select weekDateFrom from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string weekDateFromn = Convert.ToString(sdn8.ExecuteScalar());
                            SqlCommand sdm9 = new SqlCommand("select remark from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string remarkm = Convert.ToString(sdm9.ExecuteScalar());
                            SqlCommand sdn9 = new SqlCommand("select remark from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string remarkn = Convert.ToString(sdn9.ExecuteScalar());
                            SqlCommand sdm10 = new SqlCommand("select courseProperty from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string coursePropertym = Convert.ToString(sdm10.ExecuteScalar());
                            SqlCommand sdn10 = new SqlCommand("select courseProperty from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string coursePropertyn = Convert.ToString(sdn10.ExecuteScalar());
                            SqlCommand sdm11 = new SqlCommand("select schoolArea from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string schoolAream = Convert.ToString(sdm11.ExecuteScalar());
                            SqlCommand sdn11 = new SqlCommand("select schoolArea from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string schoolArean = Convert.ToString(sdn11.ExecuteScalar());
                            SqlCommand sdm12 = new SqlCommand("select courseCollege from ts_xs_chooseCoursesInfo where courseName = '" + courseName1 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            
                            string courseCollegem = Convert.ToString(sdm12.ExecuteScalar());
                            SqlCommand sdn12 = new SqlCommand("select courseCollege from ts_xs_chooseCoursesInfo where courseName = '" + courseName2 + "'and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "'and courseSemester = '" + Convert.ToInt32(Session["currentlySemester"]) + "'", con);
                            string courseCollegen = Convert.ToString(sdn12.ExecuteScalar());
                            string SQL = "insert into ts_xs_stdChooseCoursesInfo (studyNumber,studentName,IDcardNumber,college,speciality,teachedClass,adminClass,courseCode,ifChoose,ifTeachingMaterial,courseName,teacherCode,teacherName,courseTime,coursePlace,creditHour,weekPeriod,weekDateFrom,remark,courseProperty,schoolArea,courseCollege,courseStudyYear,courseSemester,chooseDate) values('" + Session["stdUserName"].ToString() + "','" + Session["stdName"].ToString() + "','" + Session["stdIDcardNumber"].ToString() + "','"+ Session["stdCollege"].ToString() +"','" + Session["stdSpeciality"].ToString() + "','" + Session["stdTeachedClass"].ToString() + "','" + Session["stdAdminClass"] + "','" + courseCodem + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','" + p + "','" + courseName1 + "','" + teacherCodem + "','" + teacherNamem + "','" + courseTimem + "','" + coursePlacem + "','" + creditHourm + "','" + weekPeriodm + "','" + weekDateFromm + "','" + remarkm + "','" + coursePropertym + "','" + schoolAream + "','" + courseCollegem + "','" + Session["currentlyStudyYear"].ToString() + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','"+ System.DateTime.Now.ToString() +"')";
                            string SQL1 = "update ts_xs_chooseCoursesInfo set choosed=  '" + choosed1 + "' where courseName='" + courseName1 + "' and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "' and courseSemester ='" + Convert.ToInt32(Session["currentlySemester"]) + "'";
                            string SQL2 = "update ts_xs_chooseCoursesInfo set remain=  '" + remain1 + "' where courseName='" + courseName1 + "' and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "' and courseSemester ='" + Convert.ToInt32(Session["currentlySemester"]) + "'";
                            string SQL3 = "insert into ts_xs_stdChooseCoursesInfo (studyNumber,studnetName,IDcardNumber,college,speciality,teachedClass,adminClass,courseCode,ifChoose,ifTeachingMaterial,courseName,teacherCode,teacherName,courseTime,coursePlace,creditHour,weekPeriod,weekDateFrom,remark,courseProperty,schoolArea,courseCollege,courseStudyYear,courseSemester,chooseDate) values('" + Session["stdUserName"].ToString() + "','" + Session["stdName"].ToString() + "','" + Session["stdIDcardNumber"].ToString() + "','" + Session["stdCollege"].ToString() + "','" + Session["stdSpeciality"].ToString() + "','" + Session["stdTeachedClass"].ToString() + "','" + Session["stdAdminClass"] + "','" + courseCoden + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','" + q + "','" + courseName2 + "','" + teacherCoden + "','" + teacherNamen + "','" + courseTimen + "','" + coursePlacen + "','" + creditHourn + "','" + weekPeriodn + "','" + weekDateFromn + "','" + remarkn + "','" + coursePropertyn + "','" + schoolArean + "','" + courseCollegen + "','" + Session["currentlyStudyYear"].ToString() + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','" + System.DateTime.Now.ToString() + "')";
                            string SQL4 = "update ts_xs_chooseCoursesInfo set choosed=  '" + choosed2 + "' where courseName='" + courseName2 + "' and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "' and courseSemester ='" + Convert.ToInt32(Session["currentlySemester"]) + "'";
                            string SQL5 = "update ts_xs_chooseCoursesInfo set remain=  '" + remain2 + "' where courseName='" + courseName2 + "' and courseStudyYear = '" + Session["currentlyStudyYear"].ToString() + "' and courseSemester ='" + Convert.ToInt32(Session["currentlySemester"]) + "'";
                            if (bc.ExecSQL(SQL) && bc.ExecSQL(SQL1) && bc.ExecSQL(SQL2) && bc.ExecSQL(SQL3) && bc.ExecSQL(SQL4) && bc.ExecSQL(SQL5))
                            {
                                con.Close();
                                this.bind1();
                                this.bind2();
                                this.bind3();
                                Response.Write("<script>alert('你已成功选择这两门选修课！')</script>");
                                
                            }
                            else
                            {
                                con.Close();
                                Response.Write("<script>alert('数据提交不成功！系统忙！请稍后再试！');history.back()</script>");
                                
                            }
                            
                        }
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('你已经选择了多于两门选修课，每次只能选择两门选修课！');history.back()</script>");
            }
        }
    }

    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        string id = GridView2.DataKeys[e.RowIndex].Value.ToString();
        SqlCommand scd = new SqlCommand("delete  from ts_xs_stdChooseCoursesInfo where id= '"+ id +"'", con);
        scd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('" + id + "')</script>");
        this.bind2();
        this.bind3();
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
