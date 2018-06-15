<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="student_update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 500px;
            height: 443px;
        }
        .style2
        {
            width: 163px;
        }
        .style3
        {
            height: 63px;
        }
        .style4
        {
            width: 335px;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" cellpadding="0" cellspacing="0" class="style1" 
       
            
        
        
        style="border: 1px dotted #000000; background-color: #FFFFFF; margin-top: 50px; margin-right: auto; margin-left: auto;" 
        bgcolor="#999999">
        <tr>
            <td align="center" colspan="2" 
                
                style="font-size: 25px; border-style: none; font-weight: bold; letter-spacing: 10px;" 
                class="style3">
                用户更新</td>
        </tr>
        <tr>
            <td align="right" class="style2" 
                style="border-style: none; ">
                学号：</td>
            <td style="border-style: none; " class="style4">
                <asp:TextBox ID="txtNo" runat="server" ReadOnly="True" Width="200px" 
                    BackColor="#CCCCCC" ontextchanged="txtNo_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" 
                style="border-style: none; ">
                密码：</td>
            <td style="border-style: none; " class="style4">
                <asp:TextBox ID="txtPwd" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" 
                style="border-style: none; ">
                姓名：</td>
            <td style="border-style: none; " class="style4">
                <asp:TextBox ID="txtName" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" 
                style="border-style: none; ">
                年龄：</td>
            <td style="border-style: none; " class="style4">
                <asp:TextBox ID="txtAge" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" 
                style="border-style: none; ">
                性别：</td>
            <td style="border-style: none; " class="style4">
              <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                        GroupName="sexType" Text="女" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sexType" 
                        Text="男" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" 
                style="border-style: none; ">
                院系：</td>
            <td style="border-style: none; " class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" 
                    BackColor="#CCCCCC">
                <asp:ListItem>信息工程学院</asp:ListItem>
                        <asp:ListItem>外国语学院</asp:ListItem>
                        <asp:ListItem>数学学院</asp:ListItem>
                        <asp:ListItem>机械工程学院</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" 
                
                style="border: 0px none #FFFFFF; font-family: 微软雅黑; font-size: 16px; background-color: #FFFFFF; margin: 50px">
                <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Size="16pt" 
                    onclick="Button1_Click" Text="更新" />
                <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" Font-Size="16pt" 
                    Text="取消" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
