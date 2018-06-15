<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dengru.aspx.cs" Inherits="dengru" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户登入</title>
    <style type="text/css">
        .style1
        {
            width: 492px;
            height: 156px;
            margin-left: 231px;
        }
        .style10
        {
            height: 57px;
        }
        .style11
        {
            width: 173px;
            height: 57px;
        }
        .style12
        {
            width: 173px;
            height: 56px;
        }
        .style13
        {
            height: 56px;
        }
        .style14
        {
            height: 55px;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1" 
            
            style="border-style: dotted; border-width: 1px; margin: 50px auto auto auto; font-family: 微软雅黑; font-size: 16px" 
            bgcolor="#CCCCCC">
            <tr>
                <td align="center" class="style10" colspan="2" 
                    style="font-size: 25px; letter-spacing: 10px; font-weight: bold;">
                    用户登录</td>
            </tr>
            <tr>
                <td align="right" class="style11">
                    学号：</td>
                <td class="style10">
                    <asp:TextBox ID="txtno" runat="server" BackColor="#80FFFF" Font-Bold="True" 
                        Font-Size="16pt" ontextchanged="TextBox1_TextChanged" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    密码：</td>
                <td class="style13">
                    <asp:TextBox ID="txtpwd" runat="server" BackColor="#80FFFF" Font-Bold="True" 
                        Font-Size="16pt" ontextchanged="TextBox2_TextChanged" TextMode="Password" 
                        Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style10" colspan="2">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="typeT" 
                        oncheckedchanged="RadioButton1_CheckedChanged" Text="学生" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="typeT" Text="教师" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style14" colspan="2">
                    <asp:Button ID="Button1" runat="server" BackColor="#C4FFFF" Font-Size="16pt" 
                        onclick="Button1_Click" Text="登录" />
                    <asp:Button ID="Button2" runat="server" BackColor="#C4FFFF" Font-Size="16pt" 
                        onclick="Button2_Click" Text="取消" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style13" colspan="2">
                    还没完成注册的同学，点击<a href="zuce.aspx">注册</a></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
