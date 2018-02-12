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
/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public partial class manager_sysManager_managerManage_man_findManagerDetail : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    int currentPageNumber;
    int pageTotalNumber = 0;
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
            this.bind();
            if (pageTotalNumber != 0)
            {
                int pageSize = GridView1.PageCount;
                this.totalNumber.Text = Convert.ToString(pageSize);
                for (int i = 0; i < pageSize; i++)
                {

                    this.pageNumber.Items.Add(new ListItem(Convert.ToString(i + 1)));
                }
                this.Label1.Text = "1";
                currentPageNumber = 1;

                if (pageSize == 1)
                {
                    this.firstPage.Enabled = false;
                    this.upPage.Enabled = false;
                    this.lastPage.Enabled = false;
                    this.downPage.Enabled = false;
                }
                else if (pageSize > 1)
                {
                    if (currentPageNumber == 1)
                    {
                        this.firstPage.Enabled = false;
                        this.upPage.Enabled = false;
                        this.lastPage.Enabled = true;
                        this.downPage.Enabled = true;
                    }
                    else if (currentPageNumber == pageSize)
                    {
                        this.lastPage.Enabled = false;
                        this.downPage.Enabled = false;
                        this.upPage.Enabled = true;
                        this.firstPage.Enabled = true;
                    }
                    else
                    {
                        this.lastPage.Enabled = true;
                        this.upPage.Enabled = true;
                        this.downPage.Enabled = true;
                        this.firstPage.Enabled = true;
                    }
                }
            }
        }
    }

    private void bind()
    {
        
        char managerStyle = ' ';
        if (this.managerStyle.Text == "一级管理员")
        {
            managerStyle = 'B';
        }
        else if (this.managerStyle.Text == "二级管理员")
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
        string belongto = this.unit.Text;
        string Sql = "select * from ts_manager_userInfo where managerStyle ='" + managerStyle + "' and belongto ='" + belongto + "' order by id desc";
        DataSet ds = new DataSet();
        ds = bc.GetDataSet(Sql, "ts_manager_userInfo");

        GridView1.DataSource = ds.Tables["ts_manager_userInfo"];
        pageTotalNumber = ds.Tables["ts_manager_userInfo"].Rows.Count;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
        int pageSize = GridView1.PageCount;

        this.totalNumber.Text = Convert.ToString(pageSize);
        this.pageNumber.Items.Clear();
        for (int i = 0; i < pageSize; i++)
        {

            this.pageNumber.Items.Add(new ListItem(Convert.ToString(i + 1)));
        }
        //this.pageNumber.Text = Convert.ToString(currentPageNumber);
        if (GridView1.Rows.Count > 0)
        {
            this.jump.Enabled = true;
            this.export.Enabled = true;
            this.Label1.Text = Convert.ToString(GridView1.PageIndex + 1);
            this.search.Text = "一共搜索到" + pageTotalNumber + "管理员信息.   共" + pageSize + "页";
        }
        else
        {
            this.search.Text = "没有找到相关的管理员信息！";
            this.Label1.Text = "0";
            this.lastPage.Enabled = false;
            this.upPage.Enabled = false;
            this.downPage.Enabled = false;
            this.firstPage.Enabled = false;
            this.jump.Enabled = false;
            this.export.Enabled = false;

        }
        currentPageNumber = GridView1.PageIndex + 1;
        if (pageSize == 1)
        {
            this.firstPage.Enabled = false;
            this.upPage.Enabled = false;
            this.lastPage.Enabled = false;
            this.downPage.Enabled = false;
        }
        else if (pageSize > 1)
        {
            if (currentPageNumber == 1)
            {
                this.firstPage.Enabled = false;
                this.upPage.Enabled = false;
                this.lastPage.Enabled = true;
                this.downPage.Enabled = true;
            }
            else if (currentPageNumber == pageSize)
            {
                this.lastPage.Enabled = false;
                this.downPage.Enabled = false;
                this.upPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
            else
            {
                this.lastPage.Enabled = true;
                this.upPage.Enabled = true;
                this.downPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
        }
    }
    protected void export_Click(object sender, EventArgs e)
    {
        Export("application/ms-excel", "管理员信息报表.xls");
    }

    private void Export(string FileType, string FileName)
    {
        this.bind();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        char managerStyle = ' ';
        if (this.managerStyle.Text == "一级管理员")
        {
            managerStyle = 'B';
        }
        else if (this.managerStyle.Text == "二级管理员")
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
        string belongto = this.unit.Text;
        string Sql = "select * from ts_manager_userInfo where managerStyle ='" + managerStyle + "' and belongto ='" + belongto + "' order by id desc";
        DataSet ds = new DataSet();
        ds = bc.GetDataSet(Sql, "ts_manager_userInfo");
        DataTable dt = ds.Tables["ts_manager_userInfo"];
        StringBuilder sb = new StringBuilder();
        sb.Append("用户名\t姓名\t所属单位\t电话\t邮箱\t密码保护问题1\t密码保护问题2\t密码保护问题3");
        StringWriter sw = new StringWriter();
        sw.WriteLine(sb.ToString());

        foreach (DataRow r in dt.Rows)
        {
            sb = new StringBuilder();
            sb.Append(r["userName"].ToString());
            sb.Append("\t" + r["managerName"].ToString());
            sb.Append("\t" + r["belongto"].ToString());
            sb.Append("\t" + r["tel"].ToString());
            sb.Append("\t" + r["email"].ToString());
            sb.Append("\t" + r["pwdProtectQue1"].ToString());
            sb.Append("\t" + r["pwdProtectQue2"].ToString());
            sb.Append("\t" + r["pwdProtectQue3"].ToString());

            sw.WriteLine(sb.ToString());
        }
        sw.Close();
        Response.Clear();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(FileName, Encoding.UTF8).ToString());
        Response.ContentType = FileType;// 指定返回的是一个不能被客户端读取的流，必须被下载 
        Response.ContentEncoding = System.Text.Encoding.Default;//.GetEncoding("GB2312");
        Response.Write(sw);// 把流发送到客户端 
        Response.End();
        con.Close();

    }

    public override void VerifyRenderingInServerForm(Control control)
    {
    }
    protected void firstPage_Click(object sender, EventArgs e)
    {
        this.GridView1.PageIndex = 0;
        this.Label1.Text = "1";
        this.bind();
        this.pageNumber.Text = "1";
        currentPageNumber = 1;
        int pageSize = GridView1.PageCount;
        if (pageSize == 1)
        {
            this.firstPage.Enabled = false;
            this.upPage.Enabled = false;
            this.lastPage.Enabled = false;
            this.downPage.Enabled = false;
        }
        else if (pageSize > 1)
        {
            if (currentPageNumber == 1)
            {
                this.firstPage.Enabled = false;
                this.upPage.Enabled = false;
                this.lastPage.Enabled = true;
                this.downPage.Enabled = true;
            }
            else if (currentPageNumber == pageSize)
            {
                this.lastPage.Enabled = false;
                this.downPage.Enabled = false;
                this.upPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
            else
            {
                this.lastPage.Enabled = true;
                this.upPage.Enabled = true;
                this.downPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
        }
    }
    protected void upPage_Click(object sender, EventArgs e)
    {
        string size1 = this.Label1.Text;
        int size = Convert.ToInt32(size1);
        currentPageNumber = size - 1;
        this.GridView1.PageIndex = currentPageNumber - 1;
        this.Label1.Text = Convert.ToString(currentPageNumber);
        this.bind();
        int pageSize = GridView1.PageCount;
        if (pageSize == 1)
        {
            this.firstPage.Enabled = false;
            this.upPage.Enabled = false;
            this.lastPage.Enabled = false;
            this.downPage.Enabled = false;
        }
        else if (pageSize > 1)
        {
            if (currentPageNumber == 1)
            {
                this.firstPage.Enabled = false;
                this.upPage.Enabled = false;
                this.lastPage.Enabled = true;
                this.downPage.Enabled = true;
            }
            else if (currentPageNumber == pageSize)
            {
                this.lastPage.Enabled = false;
                this.downPage.Enabled = false;
                this.upPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
            else
            {
                this.lastPage.Enabled = true;
                this.upPage.Enabled = true;
                this.downPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
        }
    }
    protected void downPage_Click(object sender, EventArgs e)
    {
        string size1 = this.Label1.Text;
        int size = Convert.ToInt32(size1);
        currentPageNumber = size + 1;
        this.GridView1.PageIndex = currentPageNumber - 1;
        this.Label1.Text = Convert.ToString(currentPageNumber);
        this.bind();
        int pageSize = GridView1.PageCount;
        if (pageSize == 1)
        {
            this.firstPage.Enabled = false;
            this.upPage.Enabled = false;
            this.lastPage.Enabled = false;
            this.downPage.Enabled = false;
        }
        else if (pageSize > 1)
        {
            if (currentPageNumber == 1)
            {
                this.firstPage.Enabled = false;
                this.upPage.Enabled = false;
                this.lastPage.Enabled = true;
                this.downPage.Enabled = true;
            }
            else if (currentPageNumber == pageSize)
            {
                this.lastPage.Enabled = false;
                this.downPage.Enabled = false;
                this.upPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
            else
            {
                this.lastPage.Enabled = true;
                this.upPage.Enabled = true;
                this.downPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
        }
    }
    protected void lastPage_Click(object sender, EventArgs e)
    {
        int pageSize = GridView1.PageCount;
        this.GridView1.PageIndex = pageSize - 1;
        this.Label1.Text = Convert.ToString(pageSize);
        this.bind();
        this.pageNumber.Text = Convert.ToString(pageSize);
        currentPageNumber = pageSize;

        if (pageSize == 1)
        {
            this.firstPage.Enabled = false;
            this.upPage.Enabled = false;
            this.lastPage.Enabled = false;
            this.downPage.Enabled = false;
        }
        else if (pageSize > 1)
        {
            if (currentPageNumber == 1)
            {
                this.firstPage.Enabled = false;
                this.upPage.Enabled = false;
                this.lastPage.Enabled = true;
                this.downPage.Enabled = true;
            }
            else if (currentPageNumber == pageSize)
            {
                this.lastPage.Enabled = false;
                this.downPage.Enabled = false;
                this.upPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
            else
            {
                this.lastPage.Enabled = true;
                this.upPage.Enabled = true;
                this.downPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
        }
    }
    protected void jump_Click(object sender, EventArgs e)
    {
        string size1 = this.pageNumber.Text;
        int size = Convert.ToInt32(size1);
        this.GridView1.PageIndex = size - 1;
        this.Label1.Text = size1;
        this.bind();
        currentPageNumber = size;
        int pageSize = GridView1.PageCount;
        if (pageSize == 1)
        {
            this.firstPage.Enabled = false;
            this.upPage.Enabled = false;
            this.lastPage.Enabled = false;
            this.downPage.Enabled = false;
        }
        else if (pageSize > 1)
        {
            if (currentPageNumber == 1)
            {
                this.firstPage.Enabled = false;
                this.upPage.Enabled = false;
                this.lastPage.Enabled = true;
                this.downPage.Enabled = true;
            }
            else if (currentPageNumber == pageSize)
            {
                this.lastPage.Enabled = false;
                this.downPage.Enabled = false;
                this.upPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
            else
            {
                this.lastPage.Enabled = true;
                this.upPage.Enabled = true;
                this.downPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.Label1.Text = Convert.ToString(e.NewPageIndex + 1);
        this.bind();
        int pageSize = GridView1.PageCount;
        currentPageNumber = e.NewPageIndex + 1;
        if (pageSize == 1)
        {
            this.firstPage.Enabled = false;
            this.upPage.Enabled = false;
            this.lastPage.Enabled = false;
            this.downPage.Enabled = false;
        }
        else if (pageSize > 1)
        {
            if (currentPageNumber == 1)
            {
                this.firstPage.Enabled = false;
                this.upPage.Enabled = false;
                this.lastPage.Enabled = true;
                this.downPage.Enabled = true;
            }
            else if (currentPageNumber == pageSize)
            {
                this.lastPage.Enabled = false;
                this.downPage.Enabled = false;
                this.upPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
            else
            {
                this.lastPage.Enabled = true;
                this.upPage.Enabled = true;
                this.downPage.Enabled = true;
                this.firstPage.Enabled = true;
            }
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i;
        //执行循环，保证每条数据都可以更新
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            //首先判断是否是数据行
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //当鼠标停留时更改背景色
                e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#dee9f9'");
                //当鼠标移开时还原背景色
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
            }
        }

        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[9].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除管理员用户名为 \"" + e.Row.Cells[1].Text + "\" 管理员单位为 \"" + e.Row.Cells[4].Text + "\" 的管理员信息吗?')");
            }
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        SqlCommand scd = new SqlCommand("delete  from ts_manager_userInfo where id='" + id + "'", con);
        scd.ExecuteNonQuery();
        con.Close();
        this.bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string id = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        Response.Write("<script>window.open('man_addManagerList.aspx?id=" + id + "','','width=740,height=490')</script>");
        Response.Write("<script>location='javascript:history.go(-1)'</script>");
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
        this.bind();
    }
    protected void belongto_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.bind();
    }
}
