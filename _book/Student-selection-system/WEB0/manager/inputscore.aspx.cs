using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager_inputscore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow dr in GridView1.Rows)
        {
            int psscore = 0;
            string ps = ((TextBox)dr.Cells[5].FindControl("txtps")).Text;
            if (ps != "")
            {
                psscore = Convert.ToInt32(ps);

            }

            int xmscore = 0;
            string xm = ((TextBox)dr.Cells[6].FindControl("txtxm")).Text;
            if (xm != "")
            {
                xmscore = Convert.ToInt32(xm);

            }
            double zpScore = psscore * 0.5 + xmscore * 0.5;
            ((TextBox)dr.Cells[7].FindControl("txtzp")).Text = zpScore.ToString();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //成绩提交
        foreach (GridViewRow dr in GridView1.Rows)
        {
            string Sno = dr.Cells[0].Text;
            string Cno = dr.Cells[2].Text;
            string psscore = ((TextBox)dr.Cells[5].FindControl("txtps")).Text.ToString();
            string xmscore = ((TextBox)dr.Cells[6].FindControl("txtxm")).Text.ToString();
            string zpscore = ((TextBox)dr.Cells[7].FindControl("txtzp")).Text.ToString();

            string sqlstr = "update showInfo set psScore='" + psscore + "',xmScore='" + xmscore + "',zpScore='" + zpscore + "' where userNo='" + Sno + "' and Cno='" + Cno + "'";

            SqlDataSource2.UpdateCommand = sqlstr;
            SqlDataSource2.Update();

        }
        SqlDataSource2.DataBind();
        Response.Write("<script language=javascript>alert('成绩录入成功！')</script>");

    }
}