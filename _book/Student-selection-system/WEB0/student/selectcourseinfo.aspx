<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectcourseinfo.aspx.cs" Inherits="student_selectcourseinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Height="155px" Width="707px" 
            HorizontalAlign="Center" AllowPaging="True" CellPadding="4" PageSize="4" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="Cno" HeaderText="课程号" SortExpression="Cno" />
                <asp:BoundField DataField="Cname" HeaderText="课程名" SortExpression="Cname" />
                <asp:BoundField DataField="Ccredit" HeaderText="课程学分" 
                    SortExpression="Ccredit" />
                <asp:BoundField DataField="Cteacher" HeaderText="课程教师" 
                    SortExpression="Cteacher" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle Height="30px" BackColor="#990000" Font-Bold="True" 
                ForeColor="#FFFFCC" />
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                PreviousPageText="上一页" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle Height="30px" BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:myDateConnectionString %>" 
            SelectCommand="SELECT * FROM [showInfo] WHERE ([userNo] = @userNo) ORDER BY [Cno]">
            <SelectParameters>
                <asp:SessionParameter Name="userNo" SessionField="no" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
