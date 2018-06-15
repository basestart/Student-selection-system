using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class zuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int len = txtpwd.Text.Length;
        if (len >= 6)
        {
            args.IsValid = true;

        }
        else
            args.IsValid = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = txtno.Text;
        string pwd = txtpwd.Text;
        string name = txtname.Text;
        string sex = "女";
        if (RadioButton2.Checked)
            sex = "男";
        int age = Convert.ToInt32(txtage.Text);
        string dept = DropDownList1.SelectedItem.Text;
        //Response.Write(id+" "+pwd +" "+name+" "+sex+" "+age+" "+dept);
        string constr = "server=(local);user id=sa;pwd=;database=myDate;";
        SqlConnection con = new SqlConnection(constr);
        string sqlstr = "insert into userInfo (userNo,userPwd,userName,userSexType,userAge,userYx) values ('"+id+"','"+pwd+"','"+name+"','"+sex+"',"+age+",'"+dept+"')";
        SqlCommand com = new SqlCommand(sqlstr,con);
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('用户注册成功！')</script>");

        }
        catch (Exception ex)
        {
            Response.Write(ex);

        }
        finally
        {
            con.Close();
            clear();
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void clear()
    {
        txtno.Text = " ";
        txtpwd.Text = " ";
        txtpwd1.Text = " ";
        txtage.Text = " ";
        txtname.Text = " ";
        
    }
}