using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class manager_opennewcouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //取消功能
        coursenumber.Text = "";
        coursename.Text = "";
        courseteacher.Text = "";
        coursecredit.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //开设新课功能
        //第一步获取用户输入内容
        string id = coursenumber.Text.Trim();
        string name = coursename.Text.Trim();
        string teacher = courseteacher.Text.Trim();
        double credit = Convert.ToDouble(coursecredit.Text.Trim());
       
        //第二步数据库连接
        string constr = "server=(local);user id=sa;pwd=;database=myDate";
        SqlConnection con = new SqlConnection(constr);
        string sqlstr = "insert into CourseInfo (Cno,Cname,Cteacher,Ccredit) values ('" + id + "','" +name+ "','" + teacher + "'," + credit + ")";
        SqlCommand com = new SqlCommand(sqlstr, con);
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('开设新课成功！')</script>");

        }
        catch (Exception ex)
        {
            Response.Write(ex);
           // Response.Write("<script language=javascript>alert('开设新课失败！')</script>");
        }
        finally
        {
            con.Close();
           
        }
        coursenumber.Text = "";
        coursename.Text = "";
        courseteacher.Text = "";
        coursecredit.Text = "";



    }
}