<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="mainframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>欢迎进入学生选课管理系统</title>
    
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
    <div id="header">学生选课管理系统</div>
    <div id ="welcome">欢迎<asp:Label ID="userName" runat="server"></asp:Label>
        学生<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="退出系统" />
        </div>
    <div id ="content">
      <div id="nev"> <iframe height ="600" src ="index.html" name ="manu" style ="width:201px"></iframe></div>
    <div id="nev_content"><iframe height ="600" src ="welcome.aspx" name ="main" style ="width:800px"></iframe></div>
    </div>
    <div id = "footer">版权信息</div>
    </div>
    </form>
</body>
</html>
