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
using System.IO;
using System.Drawing;

public partial class manager_sysManager_unitManage_unit_addSpecialityInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_unit_collgeSpeciality where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_unit_collgeSpeciality");
            DataRowView rowview = ds.Tables["ts_unit_collgeSpeciality"].DefaultView[0];

           
            this.specialityCode.Text = rowview["specialityCode"].ToString();
            this.speciality.Text = rowview["speciality"].ToString();
            this.collegeName.DataSource = ds.Tables["ts_unit_collgeSpeciality"];
            this.collegeName.DataTextField = "collegeName";
            this.collegeName.DataBind();
            
            this.specialityIntroduce.Text = rowview["specialityIntroduce"].ToString();

            con.Close();
        }

        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string specialityCode = this.specialityCode.Text;
        string speciality = this.speciality.Text;
        string specialityIntroduce = this.specialityIntroduce.Text;

        string SQL = "update ts_unit_collgeSpeciality set speciality = '" + speciality + "',specialityIntroduce = '" + specialityIntroduce + "' where specialityCode = '" + specialityCode + "'";
        if (bc.ExecSQL(SQL))
        {
            this.speciality.ReadOnly = true;
            this.specialityIntroduce.ReadOnly = true;

            this.specialityIntroduce.BackColor = System.Drawing.Color.Transparent;
            this.speciality.BackColor = System.Drawing.Color.Transparent;

            this.submit.Enabled = false;
            this.edit.Enabled = true;
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍候再试！"));
        }
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.speciality.ReadOnly = false;
        this.specialityIntroduce.ReadOnly = false;

        this.specialityIntroduce.BackColor = System.Drawing.Color.White;
        this.speciality.BackColor = System.Drawing.Color.White;

        this.submit.Enabled = true;
        this.edit.Enabled = false;
    }
}
