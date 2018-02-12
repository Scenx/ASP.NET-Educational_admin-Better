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
using System.Drawing;
using System.IO;
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_infomationStat_info_collegePoorStd : System.Web.UI.Page
{
    int poorSearchTag = 0;
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
            SqlCommand scd = new SqlCommand("select college from ts_unit_college order by id desc", con);
            string college1 = Convert.ToString(scd.ExecuteScalar());
            SqlDataAdapter sda = new SqlDataAdapter(" select speciality from ts_unit_collgeSpeciality where collegeName ='" + college1 + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "ts_unit_collgeSpeciality");
            //DataRowView rowview = ds.Tables["ts_xs_professionalCourses"].DefaultView[0];
            this.speciality.DataSource = ds.Tables["ts_unit_collgeSpeciality"];

            this.speciality.DataTextField = "speciality";
            this.speciality.DataBind();

            SqlDataAdapter sda1 = new SqlDataAdapter(" select college from ts_unit_college", con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "ts_unit_college");
            this.college.DataSource = ds1.Tables["ts_unit_college"];

            this.college.DataTextField = "college";
            this.college.DataBind();

            SqlDataAdapter sda2 = new SqlDataAdapter("select grade from ts_xs_studyYear ", con);

            DataSet ds2 = new DataSet();
            sda2.Fill(ds2, "ts_xs_studyYear");
            this.grade.DataSource = ds2.Tables["ts_xs_studyYear"];
            this.grade.DataTextField = "grade";
            this.grade.DataBind();

            
            con.Close();

            if (this.highNumber.Text == "0")
            {
                
                this.Panel1.Visible = false;
            }
            else
            {
                
                this.Panel1.Visible = true;
            }
        }
    }
    protected void college_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();

        string college1 = this.college.Text;
        SqlDataAdapter sda = new SqlDataAdapter(" select speciality from ts_unit_collgeSpeciality where collegeName ='" + college1 + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "ts_unit_collgeSpeciality");
        //DataRowView rowview = ds.Tables["ts_xs_professionalCourses"].DefaultView[0];
        this.speciality.DataSource = ds.Tables["ts_unit_collgeSpeciality"];

        this.speciality.DataTextField = "speciality";
        this.speciality.DataBind();
        con.Close();
    }

    protected void hignSearch1_Click(object sender, EventArgs e)
    {
        if (this.highNumber.Text == "0")
        {
            this.highNumber.Text = "1";
            this.Panel1.Visible = true;
        }
        else
        {
            this.highNumber.Text = "0";
            this.Panel1.Visible = false;
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        
        string sch = " ";
        if (this.studyNumber3.Checked)
        {
            if (this.studyNumber4.Text != "")
            {
                sch = sch + "and studyNumber like '%" + this.studyNumber4.Text + "%' ";
            }
        }
        if (this.IDcardNumber3.Checked)
        {
            if (this.IDcardNumber4.Text != "")
            {
                sch = sch + "and IDcardNumber like '%" + this.IDcardNumber4.Text + "%' ";
            }
        }
        if (this.studentName1.Checked)
        {
            if (this.studentName.Text != "")
            {
                sch = sch + "and studentName like '%" + this.studentName.Text + "%' ";
            }
        }
        
        if (this.speciality1.Checked)
        {
            if (this.speciality.Text != "")
            {
                sch = sch + "and speciality like '%" + this.speciality.Text + "%' ";
            }
        }
        if (this.grade1.Checked)
        {
            if (this.grade.Text != "")
            {
                int grade = Convert.ToInt32(this.grade.Text);
                sch = sch + "and  grade =" +grade +" ";
            }
        }
        if (this.three.Checked)
        {
            sch = sch + "and  totalPopulation <= 3  ";
        }
        
        if (this.seven.Checked)
        {
            sch = sch + "and  totalPopulation>=4 and totalPopulation<=7  ";
        }
        if (this.eight.Checked)
        {
            sch = sch + "and  totalPopulation >= 8  ";
        }
        if (this.exactitudePopulation1.Checked)
        {
            if (this.exactitudePopulation.Text != "")
            {
                int population = Convert.ToInt32(this.exactitudePopulation.Text);
                sch = sch + "and  totalPopulation = "+ population +"  ";
            }
        }
        if (this.incomeSource1.Checked)
        {
            if (this.incomeSource.Text != "")
            {
                if (this.incomeSource.Text == "打工")
                {
                    sch = sch + "and  incomeSource = '"+ "打工" +"'  ";
                }
                else if (this.incomeSource.Text == "务农")
                {
                    sch = sch + "and  incomeSource = '" + "务农" + "'  ";
                }
                else if (this.incomeSource.Text == "其他")
                {
                    sch = sch + "and  incomeSource != '" + "务农" + "' and incomeSource !='"+ "打工" +"'  ";
                }
            }
        }
        if (this.twoThousand.Checked)
        {
            sch = sch + "and  yearIncome <=2000  "; 
        }
        if (this.thirdThousand.Checked)
        {
            sch = sch + "and  yearIncome >2000 and yearIncome <=4000  "; 
        }
        if (this.fourThousand.Checked)
        {
            sch = sch + "and  yearIncome >4000  "; 
        }
        if (this.exactitudeYearIncome1.Checked)
        {
            if (this.exactitudeYearIncome.Text != "")
            {
                sch = sch + " and yearIncome ="+ Convert.ToInt32(this.exactitudeYearIncome.Text)+" ";
            }
        }
        if (this.postalCode1.Checked)
        {
            if (this.postalCode.Text != "")
            {
                sch = sch + "and postalCode like '%" + this.postalCode.Text + "%' ";
            }
        }
        if (this.graduateSchool1.Checked)
        {
            if (this.graduateSchool.Text!= "")
            {

                sch = sch + "and graduateSchool like '%" + this.graduateSchool.Text + "%' ";
            }
        }
        
        if (this.homeAddress1.Checked)
        {
            if (this.homeAddress.Text!="")
            {
                sch = sch + "and homeAddress like '%" + this.homeAddress.Text + "%' ";
            }
        }
        poorSearchTag =1;
        Session["poorSearchTag"] = Convert.ToString(poorSearchTag);
        Session["poorStdStatInfoSQL"] = sch;
        Session["poorStdStatGrade"] = this.grade.Text.ToString();
        if (this.grade.Text != "")
        {
            Response.Write("<script>window.open('info_collegePoorStdResult.aspx?','','width=900,height=620');window.Close();</script>");
        }
    }
    protected void fastSearch_Click(object sender, EventArgs e)
    {
        if (this.studyNumber1.Checked)
        {
            if (this.studyNumber2.Text != "")
            {
                poorSearchTag = 0;
                Session["poorSearchTag"] = Convert.ToString(poorSearchTag);
                string SQL = " where studyNumber ='"+ this.studyNumber2.Text +"' ";
                Session["fastpoorStdStatInfoSQL"] = SQL;
                Response.Write("<script>window.open('info_collegePoorStdResult.aspx?','','width=900,height=620');window.Close();</script>");
            }
        }
        if (this.IDcardNumber1.Checked)
        {
            if (this.IDcardNumber2.Text != "")
            {
                poorSearchTag = 0;
                Session["poorSearchTag"] = Convert.ToString(poorSearchTag);
                string SQL = " where IDcardNumber ='"+ this.IDcardNumber2.Text +"' ";
                Session["fastpoorStdStatInfoSQL"] = SQL;
                Response.Write("<script>window.open('info_collegePoorStdResult.aspx?','','width=900,height=620');window.Close();</script>");
            }
        }
    }
}
