<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inputscore.aspx.cs" Inherits="manager_inputscore" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    选择成绩录入的课程：<asp:DropDownList ID="DropDownList1" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Cname" 
        DataValueField="Cno" Height="30px" Width="100px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myDateConnectionString %>" 
        SelectCommand="SELECT * FROM [CourseInfo]"></asp:SqlDataSource>
        
    <br />
    <br />
        
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource2" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="userNo" HeaderText="学号" SortExpression="userNo" />
            <asp:BoundField DataField="userName" HeaderText="姓名" 
                SortExpression="userName" />
            <asp:BoundField DataField="Cno" HeaderText="课程号" SortExpression="Cno" />
            <asp:BoundField DataField="Ccredit" HeaderText="学分" SortExpression="Ccredit" />
            <asp:BoundField DataField="Cteacher" HeaderText="课程教师" 
                SortExpression="Cteacher" />
            <asp:TemplateField HeaderText="平时成绩" SortExpression="psscore">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("psscore") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtps" runat="server" Height="30px" 
                        Text='<%# Bind("psscore") %>' Width="100px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="期末成绩" SortExpression="xmscore">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("xmscore") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtxm" runat="server" Height="30px" 
                        Text='<%# Bind("xmscore") %>' Width="100px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="总评成绩" SortExpression="zpscore">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("zpscore") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtzp" runat="server" Enabled="False" Height="30px" 
                        Text='<%# Bind("zpscore") %>' Width="100px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" 
            Height="30px" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" Height="30px" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <br/><br/>
    <asp:Button ID="Button1" runat="server" Text="计算总评成绩" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="成绩提交" onclick="Button2_Click" />
    <br /><br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myDateConnectionString %>" 
        SelectCommand="SELECT * FROM [showInfo] WHERE ([Cno] = @Cno) ORDER BY [userNo]">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Cno" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
