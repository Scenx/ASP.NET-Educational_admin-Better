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
using System.Text;
using System.Data.SqlClient;
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
public partial class manager_sysManager_managerManage_man_addManagerList : System.Web.UI.Page
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
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_manager_userInfo where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_manager_userInfo");
            DataRowView rowview = ds.Tables["ts_manager_userInfo"].DefaultView[0];
            this.userName.Text = rowview["userName"].ToString();
            this.password.Text = rowview["password"].ToString();
            this.passwordAgain.Text = rowview["password"].ToString();
            this.managerName.Text = rowview["managerName"].ToString();
            this.tel.Text = rowview["tel"].ToString();
            string  managerStyle1 = rowview["managerStyle"].ToString();
            if (managerStyle1 == "B")
            {
                this.managerStyle.Text = "一级管理员";
            }
            else if (managerStyle1 == "C")
            {
                this.managerStyle.Text = "二级管理员";
            }
            else if (managerStyle1 == "D")
            {
                this.managerStyle.Text = "院系管理员";
            }
            else if (managerStyle1 == "E")
            {
                this.managerStyle.Text = "部门管理员";
            }
            this.unit.Text = rowview["belongto"].ToString();
            this.email.Text = rowview["email"].ToString();
            this.pwdProtectAns1.Text = rowview["pwdProtectAns1"].ToString();
            this.pwdProtectAns2.Text = rowview["pwdProtectAns2"].ToString();
            this.pwdProtectAns3.Text = rowview["pwdProtectAns3"].ToString();
            this.pwdProtectQue1.Text = rowview["pwdProtectQue1"].ToString();
            this.pwdProtectQue2.Text = rowview["pwdProtectQue2"].ToString();
            this.pwdProtectQue3.Text = rowview["pwdProtectQue3"].ToString();
            this.managerIntroduce.Text = rowview["managerIntroduce"].ToString();
            con.Close();
        }
        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void managerStyle_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.managerName.ReadOnly = false;
        this.tel.ReadOnly = false;
        this.pwdProtectAns1.ReadOnly = false;
        this.pwdProtectAns2.ReadOnly = false;
        this.pwdProtectAns3.ReadOnly = false;
        this.pwdProtectQue1.Enabled = true;
        this.pwdProtectQue2.Enabled = true;
        this.pwdProtectQue3.Enabled = true;
        this.email.ReadOnly = false;
        this.managerIntroduce.ReadOnly = false;
        this.edit.Enabled = false;
        this.submit.Enabled = true;

        this.managerName.BackColor = System.Drawing.Color.White;
        this.tel.BackColor = System.Drawing.Color.White;
        this.email.BackColor = System.Drawing.Color.White;
        this.managerIntroduce.BackColor = System.Drawing.Color.White;
        this.pwdProtectAns1.BackColor = System.Drawing.Color.White;
        this.pwdProtectAns2.BackColor = System.Drawing.Color.White;
        this.pwdProtectAns3.BackColor = System.Drawing.Color.White;

        
    }
    protected void submit_Click(object sender, EventArgs e)
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

       
        string SQL = "update  ts_manager_userInfo set managerName='"+ managerName +"',email='"+ email +"',pwdProtectQue1='"+ pwdProtectQue1 +"',pwdProtectAns1='"+ pwdProtectAns1 +"',pwdProtectQue2='"+ pwdProtectQue2 +"',pwdProtectAns2='"+ pwdProtectAns2 +"',pwdProtectQue3='"+ pwdProtectQue3 +"',pwdProtectAns3='"+ pwdProtectAns3 +"',managerIntroduce='"  + this.managerIntroduce.Text +"',tel='"+ tel +"' where userName = '" + this.userName.Text + "'";
        if (bc.ExecSQL(SQL))
        {
            this.managerName.ReadOnly = true;
            this.tel.ReadOnly = true;
            this.pwdProtectAns1.ReadOnly = true;
            this.pwdProtectAns2.ReadOnly = true;
            this.pwdProtectAns3.ReadOnly = true;
            this.pwdProtectQue1.Enabled = false;
            this.pwdProtectQue2.Enabled = false;
            this.pwdProtectQue3.Enabled = false;
            this.email.ReadOnly = true;
            this.managerIntroduce.ReadOnly = true;
            this.edit.Enabled = true;
            this.submit.Enabled = false;

            this.managerName.BackColor = System.Drawing.Color.Transparent;
            this.tel.BackColor = System.Drawing.Color.Transparent;
            this.email.BackColor = System.Drawing.Color.Transparent;
            this.managerIntroduce.BackColor = System.Drawing.Color.Transparent;
            this.pwdProtectAns1.BackColor = System.Drawing.Color.Transparent;
            this.pwdProtectAns2.BackColor = System.Drawing.Color.Transparent;
            this.pwdProtectAns3.BackColor = System.Drawing.Color.Transparent;  
             Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍候再试！"));
        }
        
    }
}
