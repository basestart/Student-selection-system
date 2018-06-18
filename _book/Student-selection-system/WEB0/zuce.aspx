<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zuce.aspx.cs" Inherits="zuce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户级注册</title>
    <style type="text/css">
        .style1
        {
            width: 663px;
            height: 367px;
            margin-left: 139px;
        }
        .style2
        {            height: 72px;
        }
        .style3
        {
            height: 41px;
            width: 447px;
        }
        .style4
        {
            height: 41px;
            width: 203px;
        }
        .style5
        {
            width: 203px;
        }
        .style6
        {
            width: 447px;
        }
        .style7
        {
            width: 203px;
            height: 35px;
        }
        .style8
        {
            width: 447px;
            height: 35px;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1" 
            
            
            style="border-style: dotted; border-width: 1px; background-color: #FFFFFF; margin-top: 50px; margin-right: auto; margin-left: auto;" 
            bgcolor="#CCCCCC">
            <tr>
                <td align="center" colspan="2" 
                    
                    style="font-family: 微软雅黑; font-size: 25px; font-weight: bold; letter-spacing: 10px;">
                    用户注册</td>
            </tr>
            <tr>
                <td align="right" class="style4" style="font-family: 微软雅黑; font-size: 16px">
                    学&nbsp;&nbsp;&nbsp;&nbsp; 号：&nbsp; 
                </td>
                <td align="left" class="style3" style="font-family: 微软雅黑; font-size: 16px">
                    <asp:TextBox ID="txtno" runat="server" BackColor="White" 
                        ontextchanged="TextBox1_TextChanged1" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtno" Display="Dynamic" ErrorMessage="学号不允许为空" 
                        Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5" style="font-family: 微软雅黑; font-size: 16px">
                    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码：</td>
                <td align="left" style="font-family: 微软雅黑; font-size: 16px" class="style6">
                    <asp:TextBox ID="txtpwd" runat="server" BackColor="White" TextMode="Password" 
                        Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="密码不允许为空" 
                        Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="密码长度不小于6位" 
                        Font-Size="13px" ForeColor="Red" 
                        onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5" style="font-family: 微软雅黑; font-size: 16px">
                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名：</td>
                <td align="left" style="font-family: 微软雅黑; font-size: 16px" class="style6">
                    <asp:TextBox ID="txtname" runat="server" BackColor="White" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtname" Display="Dynamic" ErrorMessage="姓名不允许为空" 
                        Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style7" style="font-family: 微软雅黑; font-size: 16px">
                    确认密码：</td>
                <td align="left" style="font-family: 微软雅黑; font-size: 16px" class="style8">
                    <asp:TextBox ID="txtpwd1" runat="server" BackColor="White" Width="200px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpwd" ControlToValidate="txtpwd1" Display="Dynamic" 
                        ErrorMessage="两次输入密码不匹配" Font-Size="13px" ForeColor="Red"></asp:CompareValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtpwd1" Display="Dynamic" ErrorMessage="密码不允许为空" 
                        Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5" style="font-family: 微软雅黑; font-size: 16px">
                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别：</td>
                <td align="left" style="font-family: 微软雅黑; font-size: 16px" class="style6">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                        GroupName="sexType" Text="女" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sexType" 
                        Text="男" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style5" style="font-family: 微软雅黑; font-size: 16px">
                    年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 龄：</td>
                <td align="left" style="font-family: 微软雅黑; font-size: 16px" class="style6">
                    <asp:TextBox ID="txtage" runat="server" BackColor="White" Width="200px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtage" Display="Dynamic" ErrorMessage="年龄为0-120之间" 
                        Font-Size="13px" ForeColor="Red" MaximumValue="120" MinimumValue="0" 
                        Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5" style="font-family: 微软雅黑; font-size: 16px">
                    院&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 系：</td>
                <td align="left" style="font-family: 微软雅黑; font-size: 16px" class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                        <asp:ListItem>信息工程学院</asp:ListItem>
                        <asp:ListItem>外国语学院</asp:ListItem>
                        <asp:ListItem>数学学院</asp:ListItem>
                        <asp:ListItem>机械工程学院</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2" 
                    style="font-family: 微软雅黑; font-size: 16px">
                    <asp:Button ID="Button1" runat="server" BackColor="#B9FFFF" Font-Size="16pt" 
                        Text="确定" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="#B9FFFF" Font-Size="16pt" 
                        Text="取消" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
