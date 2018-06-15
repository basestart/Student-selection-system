<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentinfo.aspx.cs" Inherits="manager_studentinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="text-align: center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="userNo" DataSourceID="SqlDataSource1" Height="160px" 
        HorizontalAlign="Center" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="margin-top: 45px" Width="506px" AllowPaging="True" PageSize="5" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="userNo" HeaderText="学号" ReadOnly="True" 
                SortExpression="userNo" />
            <asp:BoundField DataField="userPwd" HeaderText="密码" SortExpression="userPwd" />
            <asp:BoundField DataField="userName" HeaderText="姓名" 
                SortExpression="userName" />
            <asp:BoundField DataField="userSexType" HeaderText="性别" 
                SortExpression="userSexType" />
            <asp:BoundField DataField="userAge" HeaderText="年龄" SortExpression="userAge" />
            <asp:BoundField DataField="userYX" HeaderText="院系" SortExpression="userYX" />
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        CommandName="Delete" onclientclick="return confirm('确定删除这条记录吗')" Text="删除" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            学号
        </EmptyDataTemplate>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="首页" LastPageText="尾页" 
            Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myDateConnectionString %>" 
        DeleteCommand="DELETE FROM [userInfo] WHERE [userNo] = @userNo" 
        InsertCommand="INSERT INTO [userInfo] ([userNo], [userPwd], [userName], [userSexType], [userAge], [userYX]) VALUES (@userNo, @userPwd, @userName, @userSexType, @userAge, @userYX)" 
        SelectCommand="SELECT * FROM [userInfo] ORDER BY [userNo]" 
        UpdateCommand="UPDATE [userInfo] SET [userPwd] = @userPwd, [userName] = @userName, [userSexType] = @userSexType, [userAge] = @userAge, [userYX] = @userYX WHERE [userNo] = @userNo">
        <DeleteParameters>
            <asp:Parameter Name="userNo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userNo" Type="String" />
            <asp:Parameter Name="userPwd" Type="String" />
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="userSexType" Type="String" />
            <asp:Parameter Name="userAge" Type="Int32" />
            <asp:Parameter Name="userYX" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userPwd" Type="String" />
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="userSexType" Type="String" />
            <asp:Parameter Name="userAge" Type="Int32" />
            <asp:Parameter Name="userYX" Type="String" />
            <asp:Parameter Name="userNo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
