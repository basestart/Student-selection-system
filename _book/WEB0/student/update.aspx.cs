using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class student_update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string no = Session["no"].ToString();
            string constr = "server=(local);user id=sa;pwd=;database=myDate";
            SqlConnection con = new SqlConnection(constr);
            string sqlstr = "select * from userInfo where userNo='" + no + "'";
            SqlCommand com = new SqlCommand(sqlstr, con);
            try
            {
                con.Open();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    txtNo.Text = no;
                    txtPwd.Text = dr["userPwd"].ToString();
                    txtName.Text = dr["userName"].ToString();
                    txtAge.Text = dr["userAge"].ToString();
                    String sex = dr["userSexType"].ToString();
                    if (sex == "女")
                        RadioButton1.Checked = true;
                    else
                        RadioButton2.Checked = true;
                    string dept = dr["userYX"].ToString();
                    DropDownList1.SelectedItem.Text = dept;

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
            finally
            {
                con.Close();


            }
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = txtNo.Text;
        string pwd = txtPwd.Text;
        string name = txtName.Text;
        string sex = "女";
        if (RadioButton2.Checked)
            sex = "男";
        int age = Convert.ToInt32(txtAge.Text);
        string dept = DropDownList1.SelectedItem.Text;
        //Response.Write(id+" "+pwd +" "+name+" "+sex+" "+age+" "+dept);
        string constr = "server=(local);user id=sa;pwd=;database=myDate;";
        SqlConnection con = new SqlConnection(constr);
        string sqlstr = "update userInfo set userPwd='" + pwd + "',userName='" + name + "',userSexType='" + sex + "',userAge=" + age + ",userYX='" + dept + "' where userNo='" + id + "'";
        SqlCommand com = new SqlCommand(sqlstr, con);
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('用户信息更新成功！')</script>");

        }
        catch (Exception ex)
        {
            Response.Write(ex);

        }
        finally
        {
            con.Close();

        }
    }
    protected void txtNo_TextChanged(object sender, EventArgs e)
    {

    }
}