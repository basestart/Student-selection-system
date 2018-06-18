using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class searchstu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //实现查找功能
        string content = TextBox1.Text.Trim().ToString();
        string constr = "server=(local);user id =sa;pwd=;database=myDate";
        SqlConnection con = new SqlConnection(constr);
        string sqlstr = "";
        if (DropDownList1.SelectedIndex == 0)
        {
            sqlstr = "select * from userInfo where userName like '%" + content + "%'";
        }
        else
        {
            sqlstr = "select * from userInfo where userNo='"+content+"'";
        }

        //Response.Write(sqlstr);
        SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
        DataSet ds = new DataSet();
        try
        {
            con.Open();
            da.Fill(ds, "user_info");
            GridView1.DataSource = ds.Tables["user_info"].DefaultView;
            GridView1.DataKeyNames = new string[] { "userNo" };
            GridView1.DataBind();

        }
        catch(Exception ex)
        {
            Response.Write(ex);
        }
        finally {
            con.Close();

        }
    }
}