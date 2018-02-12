using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Threading;

/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public class BaseClass
{
	public BaseClass()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    #region 显示客户端对话框
    ///<summary>
    ///说明：Message Box用来在在客户端弹出对话框。
    ///参数：TxtMessage对话框中显示的内容。
    ///</summary>
    public string MessageBox(string TxtMessage)
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "')</script>";
        return str;
    }
    #endregion

    #region 执行SQL语句
    ///<summary>
    ///说明：ExecSQL用来执行SQL语句。
    /// 返回值：操作是否成功（True\False）
    /// 参数：sQueryString SQL 字符串
    ///</summary>
    public Boolean ExecSQL(string sQueryString)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlCommand dbCommand = new SqlCommand(sQueryString, con);
        try
        {
            dbCommand.ExecuteNonQuery();
            con.Close();
        }
        catch
        {
            con.Close();
            return false;
        }
        return true;
    }
    #endregion

    #region 获取数据集
    ///<summary>
    /// 说明：GetDataSet数据集，返回数据源的数据集
    /// 返回值：数据集DataSet
    /// 参数：sQueryStringSQL字符串，TableName 数据表名称
    ///</summary>
    public System.Data.DataSet GetDataSet(string sQueryString, string TableName)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["strcon"]);
        con.Open();
        SqlDataAdapter dbAdapter = new SqlDataAdapter(sQueryString, con);
        DataSet dataset = new DataSet();
        dbAdapter.Fill(dataset, TableName);
        con.Close();
        return dataset;
    }
    #endregion

    #region  处理过长字符串
    /// <summary>
    /// 说明：SubStr用来将字符串保留到制定长度，将超出部分用“...”代替。
    /// 返回值：处理后的字符串。
    /// 参数： sString原字符串。
    ///        nLeng长度。
    /// </summary>

    public string SubStr(string sString, int nLeng)
    {
        if (sString.Length <= nLeng)
        {
            return sString;
        }
        int nStrLeng = nLeng - 3;
        string sNewStr = sString.Substring(0, nStrLeng); //利用递归算法将字符串缩短
        sNewStr = sNewStr + "...";
        return sNewStr;
    }
    #endregion

    #region
    /// <summary>
    /// 说明：验证是否含有非法字符
    /// 返回值：ture or false
    /// 参数：str
    ///        
    /// </summary>
    public bool validate(string str)
    {
        string strobj;
        bool ss = false;
        for (int i = 0; i < str.Length; i++)
        {
            strobj = str.Substring(i, 1);
            if (strobj == "%" || strobj == "&" || strobj == "'" || strobj == "|" || strobj == "<" || strobj == ">" ||strobj =="."|| strobj ==":"||strobj==";"||strobj =="/")
            {
                ss = true;
                break;
            }
        }
        return ss;
    }
    #endregion

}
