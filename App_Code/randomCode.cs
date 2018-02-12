using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// 哈尔滨师范大学教务系统开发
/// 作者:易继勇
/// 邮箱:yijiyong100@163.com
/// qq:610068468
/// 哈尔滨师范大学教务平台图片展示地址:http://photo.sina.com.cn/yijiyong100
/// 如果您有什么问题,将您的问题发送至邮箱yijiyong100@163.com,欢迎大家和我交流讨论,多多希望您提出您宝贵的意见!
/// </summary>
public class randomCode
{
	public randomCode()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    public string RandomNum(int n)//
    {
        string strchar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
        string[] VcArray = strchar.Split(',');//split方法返回包含此实例中的字符串的String数组
        string VNum = "";
        int temp = -1;  //记录上次随即数值，尽量避免产生几个一样的随机数
        //采用一个简单的算法以保证生成随机数不同

        Random rand = new Random();
        for (int i = 1; i < n + 1; i++)
        {
            if (temp != -1)
            {
                rand = new Random(i * temp * unchecked((int)DateTime.Now.Ticks));//unchecked 关键字用于取消整形算术运算和转换的溢出检查，DataTime.Ticks属性获取表示此实例的日期和时间的刻度数。

            }

            int t = rand.Next(61);//方法返回一个小于61的随机数
            if (temp != -1 && temp == t)
            {
                return RandomNum(n);
            }

            temp = t;
            VNum += VcArray[t];//将生成的速加入VNum这个空数组，返回的是生成的随即字符串数组
        }
        return VNum;//返回生成的随机数
    }
}
