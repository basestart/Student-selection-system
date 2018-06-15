using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class student_selectcourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string sno = Session["no"].ToString();
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
        GridViewRow drv = ((GridViewRow)(GridView1.Rows[row]));
        string Cno = drv.Cells[0].Text;
        string constr = "server=(local);user id = sa ;pwd=; database=mydate";
        SqlConnection con = new SqlConnection(constr);
        string sqlstr = "insert into SC(userNo,Cno) values('"+sno+"','"+Cno+"')";
        SqlCommand com = new SqlCommand(sqlstr, con);
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('选课成功！')</script>");

        }
        catch (Exception ex)
        {
           // Response.Write(ex);
            Response.Write("<script language=javascript>alert('此课程已经选择，不能再选！')</script>");

        }
        finally
        {
            con.Close();
            
        }

    }
}