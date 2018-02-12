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

public partial class manager_sysManager_studentManage_std_addStudentUserInfo : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Convert.ToString(Session["manName"]) == "")
            {
                Response.Write("<script language=javascript>location='../../../TS_ManagerLogin.aspx'</script>");
                return;
            }
        }
    }
    protected void infoExport_Click(object sender, EventArgs e)
    {
        string studyNumber = this.userName.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_basicInfo where studyNumber ='"+ studyNumber +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count > 0)
        {

            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_basicInfo where studyNumber ='" + studyNumber + "'", con);
            sda1.Fill(ds, "ts_xs_basicInfo");
            DataRowView rowview = ds.Tables["ts_xs_basicInfo"].DefaultView[0];
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.studentName.Text= rowview["studentName"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.currentlyGarde.Text = rowview["currentlyGrade"].ToString();
            this.adminClass.Text = rowview["adminClass"].ToString();
            this.teachedClass.Text = rowview["teachedClass"].ToString();
            this.stdPwd.Text = studyNumber;

            this.infoExport.Enabled = false;
            this.submit.Enabled = true;
        }
        else
        {
            Response.Write(bc.MessageBox("在数据库中尚未找到相关学生的信息！请您校验您的输入的信息！"));
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string userName = this.userName.Text;
        string IDcardNumber = this.IDcardNumber.Text;
        string studentName = this.studentName.Text;
        string adminClass = this.adminClass.Text;
        string teachedClass = this.teachedClass.Text;
        string college = this.college.Text;
        string speciality = this.speciality.Text;
        string stdPwd = userName;
        string grade1 = this.currentlyGarde.Text;
        int grade = Math.Abs(Convert.ToInt32(grade1));

        string SQL = "insert into ts_xs_user (userName,password,studentName,college,speciality,grade,adminClass,teachedClass) values ('" + userName +"','" + stdPwd +"','" + studentName +"','" + college +"','" + speciality +"','" + grade +"','" + adminClass  +"','" + teachedClass +"')";
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_user where userName='"+ userName +"'",con);

        int count = Convert.ToInt32(scd.ExecuteScalar());
        con.Close();
        if (count == 0)
        {
            if (bc.ExecSQL(SQL))
            {
                this.submit.Enabled = false;
                this.infoExport.Enabled = true;
                this.userName.Text = "";
                this.IDcardNumber.Text = "";
                this.studentName.Text = "";
                this.adminClass.Text = "";
                this.teachedClass.Text = "";
                this.college.Text = "";
                this.speciality.Text = "";
                this.currentlyGarde.Text = "";
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网络忙请稍候再试！"));
            }
        }
        else
        {
            Response.Write(bc.MessageBox("已有管理员为此生上传过信息！"));
        }

    }
}
