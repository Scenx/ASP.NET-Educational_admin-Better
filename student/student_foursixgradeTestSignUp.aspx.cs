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

public partial class student_student_gradeTestSignUp : System.Web.UI.Page
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
            this.Label9.Text = Session["stdIDcardNumber"].ToString();
            this.bind();
            
        }
        this.bind1();
        this.Button1.Attributes.Add("onclick", "window.close()");
   }

    public void bind()
    {
        
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from ts_xs_fourSixGradeTextSignUp where signupYear ='"+Session["currentlyStudyYear"].ToString()+"' and signSemester = '"+ Convert.ToInt32(Session["currentlySemester"]) +"' order by id", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_xs_fourSixGradeTextSignUp");
        GridView1.DataSource = ds.Tables["ts_xs_fourSixGradeTextSignUp"];
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
        con.Close();
    }

    public void bind1()
    {
        string SQL = "select * from ts_xs_stdFourSixGradeTextSignUp where studyNumber = '"+ Session["stdUserName"] +"'and signupYear ='"+ Session["currentlyStudyYear"].ToString() +"'and signupSemester = '"+ Convert.ToInt32(Session["currentlySemester"]) +"'order by id";
        DataSet ds = bc.GetDataSet(SQL, "ts_xs_stdFourSixGradeTextSignUp");
        GridView2.DataSource = ds.Tables["ts_xs_stdFourSixGradeTextSignUp"];
        GridView2.DataKeyNames = new string[] { "id" };
        GridView2.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text == "")
        {
            Response.Write("<script>alert('请填写身份证号码！');history.back()</script>");
            return;
        }

        if (this.TextBox1.Text != this.Label9.Text)
        {
            Response.Write("<script>alert('身份证号码填写不正确！');history.back()</script>");
            return;
        }
        else
        {
            
            int checkedCount = 0;
            int uncheckedCount = 0;
            int rowsNumber = GridView1.Rows.Count;
            int[] a = new int[100];
            for (int i = 0; i < 100; i++)
            {
                a[i] = 0;
            }
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {

                    CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

                    if (cbox.Checked == false)
                    {
                        uncheckedCount++;
                    }
                    else
                    {
                        checkedCount++;
                        a[i] = i + 1;
                    }
            }

            if (checkedCount > 1)
            {
                Response.Write("<script>alert('每次只能选择一门考试科目！');history.back()</script>");
            }

            if (uncheckedCount == rowsNumber)
            {
                Response.Write("<script>alert('你还没有选择你选择的考试科目');history.back()</script>)");
            }
            else
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    if (a[i] != 0)
                    {
                        
                        string testName = GridView1.Rows[a[i] - 1].Cells[1].Text.ToString();
                        if ( testName== "英语四级等级考试")
                        {
                            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
                            con.Open();
                            SqlCommand scd = new SqlCommand("select count(*) from ts_xs_stdFourSixGradeTextSignUp where testName ='" + testName + "'and studyNumber='" + Session["stdUserName"] + "'", con);
                            if (Convert.ToInt32(scd.ExecuteScalar()) <= 0)
                            {

                                SqlCommand scd1 = new SqlCommand("select testDate from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                string testDate = Convert.ToString(scd1.ExecuteScalar());
                                SqlCommand scd2 = new SqlCommand("select testStyle from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                string testStyle = Convert.ToString(scd2.ExecuteScalar());
                                SqlCommand scd3 = new SqlCommand("select ifAllowSignUp from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                int ifAllowSignUp = Convert.ToInt32(scd3.ExecuteScalar());
                                SqlCommand scd4 = new SqlCommand("select testRequire from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                string testRequire = Convert.ToString(scd4.ExecuteScalar());
                                SqlCommand scd5 = new SqlCommand("select faceObject from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                string faceObject = Convert.ToString(scd5.ExecuteScalar());
                                SqlCommand scd6 = new SqlCommand("select restrictObject from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                string restrictObject = Convert.ToString(scd6.ExecuteScalar());
                                SqlCommand scd7 = new SqlCommand("select remark from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                string remark = Convert.ToString(scd7.ExecuteScalar());
                                string SQL = "insert into ts_xs_stdFourSixGradeTextSignUp (studyNumber,IDcardNumber,studentName,college,speciality,grade,signupYear,signupSemester,testDate,testName,testStyle,signupDate,ifAllowSignUp,testRequire,faceObject,restrictObject,totalMark,remark,ifSignUp,ifPayment)values('" + Session["stdUserName"].ToString() + "','" + Session["stdIDcardNumber"].ToString() + "','" + Session["stdName"].ToString() + "','" + Session["stdCollege"].ToString() + "','" + Session["stdSpeciality"].ToString() + "','" + 2005 + "','" + Session["currentlyStudyYear"].ToString() + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','" + "2007-10-13" + "','" + testName + "','" + testStyle + "','" + System.DateTime.Now.ToString() + "','" + ifAllowSignUp + "','" + testRequire + "','" + faceObject + "','" + restrictObject + "','"+ 710 +"','" + remark + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','" + 0 + "') ";
                                if (bc.ExecSQL(SQL))
                                {
                                    this.bind1();
                                    this.bind();
                                    con.Close();
                                    Response.Write("<script>alert('成功提交！');history.back()</script>)");
                                    this.bind1();
                                }
                                else
                                {
                                    Response.Write("<script>alert('提交不成功！');history.back()</script>)");
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('您已经选择了此门考试科目！');history.back()</script>)");
                            }

                        }
                        if (testName == "英语六级等级考试")
                        {
                            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
                            con.Open();
                            SqlCommand scd = new SqlCommand("select count(*) from ts_xs_stdFourSixGradeTextSignUp where testName ='" + testName + "'and studyNumber='" + Session["stdUserName"] + "'", con);
                            if (Convert.ToInt32(scd.ExecuteScalar()) <= 0)
                            {
                                SqlCommand sd = new SqlCommand("select count(*) from ts_xs_gradeTestMark where testName ='" + "英语四级等级考试" + "'and studyNumber='" + Session["stdUserName"] + "' and mark >='" + 425 + "'", con);
                                int count = Convert.ToInt32(sd.ExecuteScalar());
                                if (count > 0)
                                {
                                    SqlCommand scd1 = new SqlCommand("select testDate from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                    string testDate = Convert.ToString(scd1.ExecuteScalar());
                                    SqlCommand scd2 = new SqlCommand("select testStyle from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                    string testStyle = Convert.ToString(scd2.ExecuteScalar());
                                    SqlCommand scd3 = new SqlCommand("select ifAllowSignUp from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                    int ifAllowSignUp = Convert.ToInt32(scd3.ExecuteScalar());
                                    SqlCommand scd4 = new SqlCommand("select testRequire from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                    string testRequire = Convert.ToString(scd4.ExecuteScalar());
                                    SqlCommand scd5 = new SqlCommand("select faceObject from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                    string faceObject = Convert.ToString(scd5.ExecuteScalar());
                                    SqlCommand scd6 = new SqlCommand("select restrictObject from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                    string restrictObject = Convert.ToString(scd6.ExecuteScalar());
                                    SqlCommand scd7 = new SqlCommand("select remark from ts_xs_fourSixGradeTextSignUp where testName ='" + testName + "'", con);
                                    string remark = Convert.ToString(scd7.ExecuteScalar());
                                    string SQL = "insert into ts_xs_stdFourSixGradeTextSignUp (studyNumber,IDcardNumber,studentName,college,speciality,grade,signupYear,signupSemester,testDate,testName,testStyle,signupDate,ifAllowSignUp,testRequire,faceObject,restrictObject,remark,ifSignUp,ifPayment)values('" + Session["stdUserName"].ToString() + "','" + Session["stdIDcardNumber"].ToString() + "','" + Session["stdName"].ToString() + "','" + Session["stdCollege"].ToString() + "','" + Session["stdSpeciality"].ToString() + "','" + 2005 + "','" + Session["currentlyStudyYear"].ToString() + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','" + "2007-10-13" + "','" + testName + "','" + testStyle + "','" + System.DateTime.Now.ToString() + "','" + ifAllowSignUp + "','" + testRequire + "','" + faceObject + "','" + restrictObject + "','" + remark + "','" + Convert.ToInt32(Session["currentlySemester"]) + "','" + 0 + "') ";
                                    if (bc.ExecSQL(SQL))
                                    {
                                        this.bind1();
                                        this.bind();
                                        con.Close();
                                        Response.Write("<script>alert('成功提交！');history.back()</script>)");
                                    }


                                }
                                else
                                {
                                    con.Close();
                                    Response.Write("<script>alert('你的英语四级等级考试成绩尚未及格！');history.back()</script>");
                                }
                            }

                        }
                        
                        
                    }
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        string id = GridView2.DataKeys[e.RowIndex].Value.ToString();
        SqlCommand scd = new SqlCommand("delete  from ts_xs_stdFourSixGradeTextSignUp where id='" + id + "'", con);
        scd.ExecuteNonQuery();
        con.Close();
        this.bind1();
    }
}
