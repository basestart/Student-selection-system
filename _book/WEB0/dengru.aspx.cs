using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class dengru : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string no = txtno.Text.Trim();
        string pwd = txtpwd.Text.Trim();
        string constr = "server=(local);user id=sa;pwd=;database=myDate;";
        SqlConnection con = new SqlConnection(constr);

        string sqlstr = "";
        if (RadioButton1.Checked)
            sqlstr = "select * from userInfo where userNo='"+no+"' and userPwd='"+pwd+"'";
        else
            sqlstr = "select * from managerInfo where userName='" + no + "' and userPwd='" + pwd + "'";
        SqlCommand com = new SqlCommand(sqlstr, con);
        try
        {
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                System.Web.Security.FormsAuthentication.SetAuthCookie(no,true);
                Session["no"] = no;
                if (RadioButton1.Checked)
                {   //Session["name"]=dr["userName"];
                    Response.Redirect("student/main.aspx");
                }
                else
                {
                    Response.Redirect("manager/main.aspx");

                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('账号或密码错误！')</script>");
            }
            

        }
        catch(Exception ex)
        {
            Response.Write (ex);
        }
        finally
        
        { 
            con.Close();
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}