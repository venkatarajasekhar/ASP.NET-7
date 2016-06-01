<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="Imie" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Nazwisko" SortExpression="LastName" />
                <asp:BoundField DataField="Age" HeaderText="Wiek" SortExpression="Age" />
                <asp:BoundField DataField="UserName" HeaderText="Nazwa użytkownika" SortExpression="UserName" />
                <asp:CommandField HeaderText="Szczegóły" ShowHeader="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="217px">
            Imię:<asp:TextBox Text="<%# current.FirstName %>" ID="tbim" runat="server" columns="30"></asp:TextBox>
            <br />
            <br />
            Nazwisko:<asp:TextBox Text="<%# current.LastName %>" ID="tbnazw" runat="server" columns="30"></asp:TextBox>
            <br />
            <br />
            Wiek:
            <asp:TextBox ID="tbwiek" Text="<%# current.Age %>" runat="server" columns="30"></asp:TextBox>
            <br />
            <br />
            Nazwa:
            <asp:TextBox ID="tbnazwa" Text="<%# current.UserName %>" runat="server" columns="30"></asp:TextBox>
            <br />
            <asp:Button ID="Update" runat="server" Text="Zmień" OnClick="Update_Click" />
            <asp:Button ID="Add" runat="server" Text="Dodaj" OnClick="Add_Click" />
            <asp:Button ID="Delete" runat="server" Text="Usuń" OnClick="Delete_Click" />
            
        </asp:Panel>
    </form>
</body>
</html>
