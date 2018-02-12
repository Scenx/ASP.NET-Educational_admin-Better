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
using System.Text;
using System.IO;
using System.Data.SqlClient;


public partial class manager_sysManager_studentManage_std_addPoorStdInfo : System.Web.UI.Page
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
            this.RequiredFieldValidator1.Enabled = false;
            this.RequiredFieldValidator3.Enabled = false;
            this.RequiredFieldValidator4.Enabled = false;
            this.RequiredFieldValidator5.Enabled = false;
            this.RequiredFieldValidator6.Enabled = false;
            this.RequiredFieldValidator7.Enabled = false;
            this.RequiredFieldValidator8.Enabled = false;
            this.RequiredFieldValidator9.Enabled = false;
            this.RequiredFieldValidator10.Enabled = false;
            this.RequiredFieldValidator11.Enabled = false;
            this.RequiredFieldValidator12.Enabled = false;
            this.RequiredFieldValidator13.Enabled = false;
            this.RequiredFieldValidator14.Enabled = false;
            this.RequiredFieldValidator15.Enabled = false;
            this.RequiredFieldValidator16.Enabled = false;
            this.RequiredFieldValidator17.Enabled = false;
            this.RequiredFieldValidator19.Enabled = false;
            this.CompareValidator2.Enabled = false;
            this.CompareValidator1.Enabled = false;
            this.CompareValidator4.Enabled = false;
            this.RangeValidator1.Enabled = false;
            this.RangeValidator2.Enabled = false;
            this.RangeValidator4.Enabled = false;
            this.RegularExpressionValidator1.Enabled = false;
            this.RegularExpressionValidator2.Enabled = false;
            this.RegularExpressionValidator3.Enabled = false;
        }
    }
    protected void infoExport_Click(object sender, EventArgs e)
    {
        string studyNumber = this.studyNumber.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_basicInfo where studyNumber ='"+ studyNumber +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count > 0)
        {
            this.studyNumber.ReadOnly = true;
            this.infoExport.Enabled = false;
            this.submit.Enabled = true;
            this.RequiredFieldValidator2.Enabled = false;
            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_xs_basicInfo where studyNumber ='" + studyNumber + "'", con);

            sda1.Fill(ds, "ts_xs_basicInfo");
            DataRowView rowview = ds.Tables["ts_xs_basicInfo"].DefaultView[0];
            this.IDcardNumber.Text = rowview["IDcardNumber"].ToString();
            this.studentName.Text = rowview["studentName"].ToString();
            this.college.Text = rowview["college"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.grade.Text = rowview["currentlyGrade"].ToString();
            this.birthday.Text = rowview["birthYearMonth"].ToString();
            this.sex.Text = rowview["sex"].ToString();
            this.graduateSchool.BackColor = System.Drawing.Color.White;
            this.homeAddress.BackColor = System.Drawing.Color.White;
            this.totalPopulation.BackColor = System.Drawing.Color.White;
            this.yearIncome.BackColor = System.Drawing.Color.White;
            this.postalCode.BackColor = System.Drawing.Color.White;
            this.keeper1Name.BackColor = System.Drawing.Color.White;
            this.relation1.BackColor = System.Drawing.Color.White;
            this.keeper1IDcardNumber.BackColor = System.Drawing.Color.White;
            this.keeper1Address.BackColor = System.Drawing.Color.White;
            this.keeper1Tel.BackColor = System.Drawing.Color.White;
            this.keeper2Name.BackColor = System.Drawing.Color.White;
            this.relation2.BackColor = System.Drawing.Color.White;
            this.keeper2IDcardNumber.BackColor = System.Drawing.Color.White;
            this.keeper2Address.BackColor = System.Drawing.Color.White;
            this.keeper2Tel.BackColor = System.Drawing.Color.White;
            this.remark.BackColor = System.Drawing.Color.White;
            this.averageIncome.BackColor = System.Drawing.Color.White;

            this.graduateSchool.ReadOnly = false;
            this.homeAddress.ReadOnly = false;
            this.totalPopulation.ReadOnly = false;
            this.yearIncome.ReadOnly = false;
            this.postalCode.ReadOnly = false;
            this.keeper1Name.ReadOnly = false;
            this.relation1.ReadOnly = false;
            this.keeper1IDcardNumber.ReadOnly = false;
            this.keeper1Address.ReadOnly = false;
            this.keeper1Tel.ReadOnly = false;
            this.keeper2Name.ReadOnly = false;
            this.relation2.ReadOnly = false;
            this.keeper2IDcardNumber.ReadOnly = false;
            this.keeper2Address.ReadOnly = false;
            this.keeper2Tel.ReadOnly = false;
            this.remark.ReadOnly = false;
            this.otherSource.ReadOnly = false;
            this.averageIncome.ReadOnly = false;

            this.RequiredFieldValidator1.Enabled = true;
            this.RequiredFieldValidator3.Enabled = true;
            this.RequiredFieldValidator4.Enabled = true;
            this.RequiredFieldValidator5.Enabled = true;
            //this.RequiredFieldValidator6.Enabled = true;
            this.RequiredFieldValidator7.Enabled = true;
            this.RequiredFieldValidator8.Enabled = true;
            this.RequiredFieldValidator9.Enabled = true;
            this.RequiredFieldValidator10.Enabled = true;
            this.RequiredFieldValidator11.Enabled = true;
            this.RequiredFieldValidator12.Enabled = true;
            this.RequiredFieldValidator13.Enabled = true;
            this.RequiredFieldValidator14.Enabled = true;
            this.RequiredFieldValidator15.Enabled = true;
            this.RequiredFieldValidator16.Enabled = true;
            this.RequiredFieldValidator17.Enabled = true;
            this.RequiredFieldValidator19.Enabled = true;
            this.CompareValidator2.Enabled = true;
            this.CompareValidator1.Enabled = true;
            this.CompareValidator4.Enabled = true;
            this.RangeValidator1.Enabled = true;
            this.RangeValidator2.Enabled = true;
            this.RangeValidator4.Enabled = true;
            this.RegularExpressionValidator1.Enabled = true;
            this.RegularExpressionValidator2.Enabled = true;
            this.RegularExpressionValidator3.Enabled = true;
        }
        else
        {
            Response.Write(bc.MessageBox("请你校验您输入的学号！在数据库中没有找到相关信息！"));
        }
        con.Close();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_xs_poorStdInfo where studyNumber ='"+ this.studyNumber.Text +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count > 0)
        {
            Response.Write(bc.MessageBox("已有管理员添加了此贫困生！"));
        }
        else
        {
            int number = 0;
            string incomeSource = "";
            if (this.dagong.Checked)
            {
                incomeSource = "打工";
                number++;
            }
            else if (this.farm.Checked)
            {
                incomeSource = "务农";
                number++;
            }
            else if (this.other.Checked)
            {
                this.RequiredFieldValidator6.Enabled = true;
                this.otherSource.BackColor = System.Drawing.Color.White;
                this.otherSource.ReadOnly = false;
                incomeSource = this.otherSource.Text;
                number++;
            }
            if (number == 0)
            {
                Response.Write(bc.MessageBox("请选择收入来源！"));

            }
            else if (number > 1)
            {
                Response.Write(bc.MessageBox("收入来源只能填写一个！"));
            }
            else
            {
                string averageIncome1 = this.averageIncome.Text;
                int averageIncome = Math.Abs(Convert.ToInt32(averageIncome1));
                string studyNumber = this.studyNumber.Text;
                string IDcardNumber = this.IDcardNumber.Text;
                string studentName = this.studentName.Text;
                string college = this.college.Text;
                string speciality = this.speciality.Text;
                string grade1 = this.grade.Text;
                int grade = Math.Abs(Convert.ToInt32(grade1));
                string sex = this.sex.Text;
                string birthYearMonth = this.birthday.Text;
                string graduateSchool = this.graduateSchool.Text;
                string homeAddress = this.homeAddress.Text;
                string totalPopulation1 = this.totalPopulation.Text;
                int totalPopulation = Math.Abs(Convert.ToInt32(totalPopulation1));
                string yearIncome1 = this.yearIncome.Text;
                int yearIncome = Math.Abs(Convert.ToInt32(yearIncome1));
                string postalCode = this.postalCode.Text;
                string keeper1Name = this.keeper1Name.Text;
                string relation1 = this.relation1.Text;
                string keeper1IDcardNumber = this.keeper1IDcardNumber.Text;
                string keeper1Address = this.keeper1Address.Text;
                string keeper1Tel = this.keeper1Tel.Text;
                string keeper2Name = this.keeper2Name.Text;
                string relation2 = this.relation2.Text;
                string keeper2IDcardNumber = this.keeper2IDcardNumber.Text;
                string keeper2Address = this.keeper2Address.Text;
                string keeper2Tel = this.keeper2Tel.Text;
                string remark = this.remark.Text;
                string SQL = "insert into ts_xs_poorStdInfo (studyNumber,IDcardNumber,studentName,college,speciality,grade,sex,birthYearMonth,graduateSchool,homeAddress,totalPopulation,yearIncome,incomeSource,postalCode,keeper1Name,relation1,keeper1IDcardNumber,keeper1Address,keeper1Tel,keeper2Name,relation2,keeper2IDcardNumber,keeper2Address,keeper2Tel,remark,averageIncome) values ('" + studyNumber + "','" + IDcardNumber + "','" + studentName + "','" + college + "','" + speciality + "','" + grade + "','" + sex + "','" + birthYearMonth + "','" + graduateSchool + "','" + homeAddress + "','" + totalPopulation + "','" + yearIncome + "','" + incomeSource + "','" + postalCode + "','" + keeper1Name + "','" + relation1 + "','" + keeper1IDcardNumber + "','" + keeper1Address + "','" + keeper1Tel + "','" + keeper2Name + "','" + relation2 + "','" + keeper2IDcardNumber + "','" + keeper2Address + "','" + keeper2Tel + "','" + remark + "','" + averageIncome + "')";
                if (bc.ExecSQL(SQL))
                {
                    this.submit.Enabled = false;
                    this.studyNumber.ReadOnly = false;
                    this.infoExport.Enabled = true;
                    this.studyNumber.Text = "";
                    this.graduateSchool.BackColor = System.Drawing.Color.Transparent;
                    this.homeAddress.BackColor = System.Drawing.Color.Transparent;
                    this.totalPopulation.BackColor = System.Drawing.Color.Transparent;
                    this.yearIncome.BackColor = System.Drawing.Color.Transparent;
                    this.postalCode.BackColor = System.Drawing.Color.Transparent;
                    this.keeper1Name.BackColor = System.Drawing.Color.Transparent;
                    this.relation1.BackColor = System.Drawing.Color.Transparent;
                    this.keeper1IDcardNumber.BackColor = System.Drawing.Color.Transparent;
                    this.keeper1Address.BackColor = System.Drawing.Color.Transparent;
                    this.keeper1Tel.BackColor = System.Drawing.Color.Transparent;
                    this.keeper2Name.BackColor = System.Drawing.Color.Transparent;
                    this.relation2.BackColor = System.Drawing.Color.Transparent;
                    this.keeper2IDcardNumber.BackColor = System.Drawing.Color.Transparent;
                    this.keeper2Address.BackColor = System.Drawing.Color.Transparent;
                    this.keeper2Tel.BackColor = System.Drawing.Color.Transparent;
                    this.remark.BackColor = System.Drawing.Color.Transparent;
                    this.averageIncome.BackColor = System.Drawing.Color.Transparent;

                    this.graduateSchool.ReadOnly = true;
                    this.homeAddress.ReadOnly = true;
                    this.totalPopulation.ReadOnly = true;
                    this.yearIncome.ReadOnly = true;
                    this.postalCode.ReadOnly = true;
                    this.keeper1Name.ReadOnly = true;
                    this.relation1.ReadOnly = true;
                    this.keeper1IDcardNumber.ReadOnly = true;
                    this.keeper1Address.ReadOnly = true;
                    this.keeper1Tel.ReadOnly = true;
                    this.keeper2Name.ReadOnly = true;
                    this.relation2.ReadOnly = true;
                    this.keeper2IDcardNumber.ReadOnly = true;
                    this.keeper2Address.ReadOnly = true;
                    this.keeper2Tel.ReadOnly = true;
                    this.remark.ReadOnly = true;
                    this.otherSource.ReadOnly = true;
                    this.averageIncome.ReadOnly = true;

                    this.graduateSchool.Text = "";
                    this.homeAddress.Text = "";
                    this.totalPopulation.Text = "";
                    this.yearIncome.Text = "";
                    this.postalCode.Text = "";
                    this.keeper1Name.Text = "";
                    this.relation1.Text = "";
                    this.keeper1IDcardNumber.Text = "";
                    this.keeper1Address.Text = "";
                    this.keeper1Tel.Text = "";
                    this.keeper2Name.Text = "";
                    this.relation2.Text = "";
                    this.keeper2IDcardNumber.Text = "";
                    this.keeper2Address.Text = "";
                    this.keeper2Tel.Text = "";
                    this.remark.Text = "";
                    this.otherSource.Text = "";
                    this.averageIncome.Text = "";
                    this.RequiredFieldValidator1.Enabled = false;
                    this.RequiredFieldValidator3.Enabled = false;
                    this.RequiredFieldValidator4.Enabled = false;
                    this.RequiredFieldValidator5.Enabled = false;
                    this.RequiredFieldValidator6.Enabled = false;
                    this.RequiredFieldValidator7.Enabled = false;
                    this.RequiredFieldValidator8.Enabled = false;
                    this.RequiredFieldValidator9.Enabled = false;
                    this.RequiredFieldValidator10.Enabled = false;
                    this.RequiredFieldValidator11.Enabled = false;
                    this.RequiredFieldValidator12.Enabled = false;
                    this.RequiredFieldValidator13.Enabled = false;
                    this.RequiredFieldValidator14.Enabled = false;
                    this.RequiredFieldValidator15.Enabled = false;
                    this.RequiredFieldValidator16.Enabled = false;
                    this.RequiredFieldValidator17.Enabled = false;
                    this.RequiredFieldValidator19.Enabled = false;
                    this.CompareValidator2.Enabled = false;
                    this.CompareValidator1.Enabled = false;
                    this.CompareValidator4.Enabled = false;
                    this.RangeValidator1.Enabled = false;
                    this.RangeValidator2.Enabled = false;
                    this.RangeValidator4.Enabled = false;
                    this.RegularExpressionValidator1.Enabled = false;
                    this.RegularExpressionValidator2.Enabled = false;
                    this.RegularExpressionValidator3.Enabled = false;
                    Response.Write(bc.MessageBox("数据提交成功！"));
                }
                else
                {
                    Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
                }
            }
        }
    }
    protected void other_CheckedChanged(object sender, EventArgs e)
    {
        
    }
}
