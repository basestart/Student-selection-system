<%@ Page Language="C#" AutoEventWireup="true" CodeFile="opennewcouse.aspx.cs" Inherits="manager_opennewcouse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>开设新课</title>
    <style type="text/css">
        .style1
        {
            width: 422px;
            height: 274px;
        }
        .style12
        {
            height: 58px;
        }
        .style13
        {
            width: 358px;
            height: 58px;
        }
        .style14
        {
            width: 450px;
            height: 58px;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1" 
            
            
            
            style="border-style: dotted; border-width: 1px; margin: 50px auto 50px auto; background-color: #FFFFFF;">
            <tr>
                <td align="center" class="style12" colspan="2" 
                    style="font-family: 微软雅黑; font-size: 25px; letter-spacing: 10px;">
                    开设新课</td>
            </tr>
            <tr>
                <td align="right" class="style13" style="font-family: 微软雅黑; font-size: 16px">
                    课程号：</td>
                <td class="style14" style="font-family: 微软雅黑; font-size: 16px">
                    <asp:TextBox ID="coursenumber" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style13" style="font-family: 微软雅黑; font-size: 16px">
                    课程名：</td>
                <td class="style14" style="font-family: 微软雅黑; font-size: 16px">
                    <asp:TextBox ID="coursename" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style13" style="font-family: 微软雅黑; font-size: 16px">
                    课程教师：</td>
                <td class="style14" style="font-family: 微软雅黑; font-size: 16px">
                    <asp:TextBox ID="courseteacher" runat="server" Width="200px" 
                        BackColor="#CCCCCC"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style13" style="font-family: 微软雅黑; font-size: 16px">
                    课程学分：</td>
                <td class="style14" style="font-family: 微软雅黑; font-size: 16px">
                    <asp:TextBox ID="coursecredit" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style12" colspan="2" 
                    style="font-family: 微软雅黑; font-size: 16px">
                    <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Size="16pt" 
                        Text="确定" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" Font-Size="16pt" 
                        Text="取消" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
