using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mainframe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        userName.Text = Session["no"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //退出系统
        Session.Abandon();
        Response.Redirect("..\\dengru.aspx");
    }
}