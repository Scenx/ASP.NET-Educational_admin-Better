using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;        //Collections类用于使用对象数组
using System.Collections.Generic;
using System.Text;


/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public class stringBuilder: CollectionBase
{
	public stringBuilder()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//    
	}
    

    public stringItem this[int i]
    {
        get
        {
            return (stringItem)List[i];
        }
        set
        {
            List[i] = value;
        }
    }

    public void Add(stringItem s)  //Add方法用于添加对象成员
    {
        List.Add(s);
    }

    public void Remove(stringItem s)
    {
        List.Remove(s);
    }
    public stringBuilder getText( stringBuilder t,int a)
    {
        stringBuilder get = new stringBuilder();
        foreach (stringItem p in t)
        {
            if (p.index == a)
                get.Add(new stringItem(p.sb, p.index));
            
        }
        return get;
    }
     ~stringBuilder()
    {
       
    }
    
}
