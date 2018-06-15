<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectcourse.aspx.cs" Inherits="student_selectcourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="Cno" DataSourceID="SqlDataSource1" 
            Height="195px" HorizontalAlign="Center" PageSize="4" Width="583px" 
            CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
            BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="Cno" HeaderText="课程号" ReadOnly="True" 
                    SortExpression="Cno" />
                <asp:BoundField DataField="Cname" HeaderText="课程名" SortExpression="Cname" />
                <asp:BoundField DataField="Cteacher" HeaderText="课程教师" 
                    SortExpression="Cteacher" />
                <asp:BoundField DataField="Ccredit" HeaderText="课程学分" 
                    SortExpression="Ccredit" />
                <asp:TemplateField HeaderText="选课" ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="" 
                            onclick="Button1_Click1" Text="选课" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle HorizontalAlign="Center" BackColor="#FFFFCC" 
                ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" 
                Height="30px" />
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                PreviousPageText="上一页" />
            <PagerStyle HorizontalAlign="Center" BackColor="#FFFFCC" ForeColor="#330099" />
            <RowStyle BackColor="White" ForeColor="#330099" Height="30px" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:myDateConnectionString %>" 
            SelectCommand="SELECT * FROM [CourseInfo] ORDER BY [Cno]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
