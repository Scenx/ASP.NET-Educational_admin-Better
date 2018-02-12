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

public partial class TS_ManagerLogin : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            this.superManager.Checked = true;
            this.secondManager.Checked = false;
            this.stairManager.Checked = false;
            this.collegeManager.Checked = false;
            this.unitManager.Checked = false;
            this.Label1.Text = new randomCode().RandomNum(5);
        }


    }

    protected void login_Click(object sender, EventArgs e)
    {
        if (this.superManager.Checked == true)
        {
            if (this.validateCode.Text == "")
            {
                Response.Write(bc.MessageBox("请输入验证码！"));
            }
            else if (this.validateCode.Text != Label1.Text)
            {
                Response.Write(bc.MessageBox("您输入的验证不正确！"));
            }
            else if (this.validateCode.Text == Label1.Text)
            {
                string user = this.userName.Text;
                string pwd = this.passWord.Text;
                if (bc.validate(user))
                {
                    Response.Write("<script>alert('用户名中不能含有非法字符');history.back()</script>");
                    return;
                }
                if (bc.validate(pwd))
                {
                    Response.Write("<script>alert('用户名中不能含有非法字符');history.back()</script>");
                    return;
                }
                if (user == "")
                {
                    Response.Write(bc.MessageBox("用户名不能为空！"));
                }
                else
                {
                    if (pwd == "")
                    {
                        Response.Write(bc.MessageBox("密码不能为空！"));
                    }
                    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
                    con.Open();
                    SqlCommand scd = new SqlCommand("select count(*) from  ts_manager_userInfo where  userName='" + user + "' and password='" + pwd + "'and managerStyle='"+ "A" +"'", con);
                    int count = Convert.ToInt32(scd.ExecuteScalar());
                    if (count > 0)
                    {
                        Session["manUserName"] = user.ToString();
                        SqlCommand scd1 = new SqlCommand("select managerName from ts_manager_userInfo where userName='" + user + "'", con);
                        string manName = Convert.ToString(scd1.ExecuteScalar());
                        Session["manName"] = manName.ToString();
                        Response.Redirect("manager/sysManager/systemManager_Default.aspx",false);
                    }
                }
            }
            
        }
    }
}
