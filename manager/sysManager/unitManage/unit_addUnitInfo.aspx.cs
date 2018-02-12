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

public partial class manager_sysManager_unitManage_unit_addUnitInfo : System.Web.UI.Page
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
           
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string unitCode = this.unitCode.Text;
        string unitName = this.unitName.Text;
        string unitIntroduce = this.unitIntroduce.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand scd = new SqlCommand("select count(*) from ts_unit_unitInfo where unitCode ='"+ unitCode +"'", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
        if (count == 0)
        {

            string SQL = "insert into ts_unit_unitInfo (unitCode,unitName,unitIntroduce,addDate,addMan) values ('"+ unitCode +"','"+ unitName +"','"+ unitIntroduce +"','"+ System.DateTime.Now.ToString() +"','"+ Session["manName"].ToString() +"')";
            if (bc.ExecSQL(SQL))
            {
                System.Text.StringBuilder sb1 = new StringBuilder();
                sb1.Append("单位编号：" + unitCode + " 单位简介：" + unitIntroduce + "  单位名称：" + unitName + " 数据提交成功...");
                this.submitResult.Text = sb1.ToString();
                this.submitResult.Visible = true;
                Response.Write(bc.MessageBox("数据提交成功！"));
            }
            else
            {
                Response.Write(bc.MessageBox("数据提交失败！网络忙，请稍后再试！ "));
            }

        }
        else
        {
            Response.Write(bc.MessageBox("在数据库中已存在此单位编号！请查证号在输入！"));
        }

    }
}
