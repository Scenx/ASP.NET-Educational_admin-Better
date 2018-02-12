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
public partial class manager_sysManager_managerManage_man_addManager : System.Web.UI.Page
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
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select unitName from ts_unit_unitInfo order by id desc ", con);
            sda.Fill(ds, "ts_unit_unitInfo");
            this.unit.DataSource = ds.Tables["ts_unit_unitInfo"];
            this.unit.DataTextField = "unitName";
            this.unit.DataBind();
            con.Close();
        }
    }

    protected void managerStyle_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (this.managerStyle.Text == "院系管理员")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select college from ts_unit_college order by id desc ", con);
            sda.Fill(ds, "ts_unit_college");
            this.unit.DataSource = ds.Tables["ts_unit_college"];
            this.unit.DataTextField = "college";
            this.unit.DataBind();
            con.Close();
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select unitName from ts_unit_unitInfo order by id desc ", con);
            sda.Fill(ds, "ts_unit_unitInfo");
            this.unit.DataSource = ds.Tables["ts_unit_unitInfo"];
            this.unit.DataTextField = "unitName";
            this.unit.DataBind();
            con.Close();
        }
    }

    protected void edit_Click(object sender, EventArgs e)
    {
        string password = this.password.Text;
        string passwordAgain = this.passwordAgain.Text;
        if (bc.validate(password)==false && bc.validate(passwordAgain)==false)
        {
            if (password.Length >= 6 && passwordAgain.Length >= 6)
            {
                if (password == passwordAgain)
                {
                    string userName = this.userName.Text;
                    string managerName = this.managerName.Text;
                    string tel = this.tel.Text;
                    string pwdProtectQue1 = this.pwdProtectQue1.Text;
                    string pwdProtectAns1 = this.pwdProtectAns1.Text;
                    string pwdProtectQue2 = this.pwdProtectQue2.Text;
                    string pwdProtectAns2 = this.pwdProtectAns2.Text;
                    string pwdProtectQue3 = this.pwdProtectQue3.Text;
                    string pwdProtectAns3 = this.pwdProtectAns3.Text;
                    string email = this.email.Text;
                   
                    string belongto = this.unit.Text;
                    char managerStyle = ' ';
                    if (this.managerStyle.Text == "一级管理员")
                    {
                        managerStyle = 'B';
                    }
                    else if(this.managerStyle.Text == "二级管理员")
                    {
                        managerStyle = 'C';
                    }
                    else if (this.managerStyle.Text == "院系管理员")
                    {
                        managerStyle = 'D';
                    }
                    else if (this.managerStyle.Text == "部门管理员")
                    {
                        managerStyle = 'E';
                    }
                    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
                    con.Open();
                    SqlCommand scd = new SqlCommand("select count(*) from ts_manager_userInfo where userName='"+ userName +"'", con);
                    int count = Convert.ToInt32(scd.ExecuteScalar());
                    con.Close();
                    if (count == 0)
                    {
                        string SQL = "insert into ts_manager_userInfo (userName,password,managerName,belongto,managerStyle,email,pwdProtectQue1,pwdProtectAns1,pwdProtectQue2,pwdProtectAns2,pwdProtectQue3,pwdProtectAns3,addMan,addDate,managerIntroduce,tel) values ('" + userName + "','" + password + "','" + managerName + "','" + belongto + "','" + managerStyle + "','" + email + "','" + pwdProtectQue1 + "','" + pwdProtectAns1 + "','" + pwdProtectQue2 + "','" + pwdProtectAns2 + "','" + pwdProtectQue3 + "','" + pwdProtectAns3 + "','" + Session["manName"].ToString() + "','" + System.DateTime.Now.ToString() + "','" + this.managerIntroduce.Text + "','" + tel + "') ";
                        if (bc.ExecSQL(SQL))
                        {
                            System.Text.StringBuilder sb = new StringBuilder();
                            sb.Append("管理员用户名： " + userName + "  管理员类型： " + this.managerStyle.Text + " 管理员单位： " + belongto + " 管理员姓名： " + managerName + "数据提交成功");
                            this.submitResult.Text = sb.ToString();
                            this.submitResult.Visible = true;
                            Response.Write(bc.MessageBox("数据提交成功！"));
                        }
                        else
                        {
                            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍候再试！"));
                        }
                    }
                    else
                    {
                        Response.Write(bc.MessageBox("数据库中已存在此用户名！请查证后再输入！"));
                    }

                }
            }
            else
            {
                Response.Write(bc.MessageBox("密码长度太短！安全系数太低！"));
            }

        }
        else
        {
            Response.Write(bc.MessageBox("密码中含有非法字符！"));
        }
    }
}
