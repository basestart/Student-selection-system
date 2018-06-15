<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courseinfo.aspx.cs" Inherits="manager_courseinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="Cno" DataSourceID="SqlDataSource1" 
            HorizontalAlign="Center" PageSize="3" CellPadding="4" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="Cno" HeaderText="课程号" ReadOnly="True" 
                    SortExpression="Cno" />
                <asp:BoundField DataField="Cname" HeaderText="课程名" SortExpression="Cname" />
                <asp:BoundField DataField="Cteacher" HeaderText="课程教师" 
                    SortExpression="Cteacher" />
                <asp:BoundField DataField="Ccredit" HeaderText="课程学分" 
                    SortExpression="Ccredit" />
                <asp:CommandField ShowEditButton="True" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                            CommandName="Delete" 
                            onclientclick="return confirm(&quot;确定要删除这条记录吗?&quot;)" Text="删除" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                PreviousPageText="上一页" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:myDateConnectionString %>" 
            DeleteCommand="DELETE FROM [CourseInfo] WHERE [Cno] = @original_Cno AND [Cname] = @original_Cname AND (([Cteacher] = @original_Cteacher) OR ([Cteacher] IS NULL AND @original_Cteacher IS NULL)) AND (([Ccredit] = @original_Ccredit) OR ([Ccredit] IS NULL AND @original_Ccredit IS NULL))" 
            InsertCommand="INSERT INTO [CourseInfo] ([Cno], [Cname], [Cteacher], [Ccredit]) VALUES (@Cno, @Cname, @Cteacher, @Ccredit)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [CourseInfo] ORDER BY [Cno]" 
            UpdateCommand="UPDATE [CourseInfo] SET [Cname] = @Cname, [Cteacher] = @Cteacher, [Ccredit] = @Ccredit WHERE [Cno] = @original_Cno AND [Cname] = @original_Cname AND (([Cteacher] = @original_Cteacher) OR ([Cteacher] IS NULL AND @original_Cteacher IS NULL)) AND (([Ccredit] = @original_Ccredit) OR ([Ccredit] IS NULL AND @original_Ccredit IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Cno" Type="String" />
                <asp:Parameter Name="original_Cname" Type="String" />
                <asp:Parameter Name="original_Cteacher" Type="String" />
                <asp:Parameter Name="original_Ccredit" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Cno" Type="String" />
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="Cteacher" Type="String" />
                <asp:Parameter Name="Ccredit" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="Cteacher" Type="String" />
                <asp:Parameter Name="Ccredit" Type="Double" />
                <asp:Parameter Name="original_Cno" Type="String" />
                <asp:Parameter Name="original_Cname" Type="String" />
                <asp:Parameter Name="original_Cteacher" Type="String" />
                <asp:Parameter Name="original_Ccredit" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
