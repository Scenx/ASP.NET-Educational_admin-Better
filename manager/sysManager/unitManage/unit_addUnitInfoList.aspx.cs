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
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class manager_sysManager_unitManage_unit_addUnitInfoList : System.Web.UI.Page
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
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from ts_unit_unitInfo where id=" + Request["id"], con);
            sda1.Fill(ds, "ts_unit_unitInfo");
            DataRowView rowview = ds.Tables["ts_unit_unitInfo"].DefaultView[0];

            this.unitCode.Text = rowview["unitCode"].ToString();
            this.unitName.Text = rowview["unitName"].ToString();
            this.unitIntroduce.Text = rowview["unitIntroduce"].ToString();

            con.Close();
        }

        this.Button1.Attributes.Add("onclick", "window.close();");
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        this.unitIntroduce.BackColor = System.Drawing.Color.White;
        this.unitName.BackColor = System.Drawing.Color.White;

        this.unitName.ReadOnly = false;
        this.unitIntroduce.ReadOnly = false;

        this.edit.Enabled = false;
        this.submit.Enabled = true; 
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string unitIntrodunce = this.unitIntroduce.Text;
        string unitName = this.unitName.Text;
        string unitCode = this.unitCode.Text;
        string ID = Convert.ToString(Request["id"]);

        string SQL = "update ts_unit_unitInfo set unitIntroduce ='"+ unitIntrodunce +"',unitName='"+ unitName +"' where id ='"+ ID +"'";
        if (bc.ExecSQL(SQL))
        {
            this.unitIntroduce.BackColor = System.Drawing.Color.Transparent;
            this.unitName.BackColor = System.Drawing.Color.Transparent;

            this.unitName.ReadOnly = true;
            this.unitIntroduce.ReadOnly = true;

            this.edit.Enabled = true;
            this.submit.Enabled = false; 
            Response.Write(bc.MessageBox("数据提交成功！"));
        }
        else
        {
            Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！"));
        }
    }
}
