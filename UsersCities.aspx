<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UsersCities.aspx.cs" Inherits="UsersCities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowFooter="True" OnRowCreated="GridView1_RowCreated" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id" Visible="false">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>

                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                        </ItemTemplate>

                        <FooterTemplate>

                            <asp:TextBox ID="NewFirstName" runat="server"></asp:TextBox>

                        </FooterTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="NewLastName" runat="server"></asp:TextBox>

                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age" SortExpression="Age">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                        </ItemTemplate>

                        <FooterTemplate>
                            <asp:TextBox ID="NewAge" runat="server"></asp:TextBox>

                        </FooterTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Username" SortExpression="Username">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="NewUsername" runat="server"></asp:TextBox>

                        </FooterTemplate>
                    </asp:TemplateField>
                
                    <asp:TemplateField HeaderText="City" SortExpression="City">
                        <EditItemTemplate>
                            <asp:Panel runat="server">
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%#Bind("city_id")%>' DataValueField="Id" DataTextField="Name" DataSourceID="SqlDataSource2">
                                </asp:DropDownList>
                            </asp:Panel>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>

                        <FooterTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataValueField="Id" DataTextField="Name" DataSourceID="SqlDataSource2" />

                        </FooterTemplate>


                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="City" Visible="false">
                        <ItemTemplate>
                            <asp:DropDownList runat="server" ID="MyDD" DataValueField="Id" DataTextField="Name" DataSourceID="SqlDataSource2" />
                        </ItemTemplate>

                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="Edit">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>

                        <FooterTemplate>

                            <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                        </FooterTemplate>

                    </asp:TemplateField>


                </Columns>

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="users_select_all" UpdateCommand="users_update" SelectCommandType="StoredProcedure" UpdateCommandType="StoredProcedure" InsertCommand="users_insert" InsertCommandType="StoredProcedure">
                <InsertParameters>

                    <asp:ControlParameter Name="firstname" ControlID="GridView1$NewFirstName" PropertyName="Text" DefaultValue="dfdf" />
                    <asp:ControlParameter Name="lastname" ControlID="GridView1$NewLastName" PropertyName="Text" DefaultValue="dfddf" />
                    <asp:ControlParameter Name="age" ControlID="GridView1$NewAge" PropertyName="Text" DefaultValue="11" />
                    <asp:ControlParameter Name="username" ControlID="GridView1$NewUsername" PropertyName="Text" DefaultValue="dfdf" />
                    <asp:ControlParameter Name="city_id" ControlID="GridView1$Newcity_id" PropertyName="Text" DefaultValue="0" />

                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="city_id" Type="Int32" />
                </UpdateParameters>


            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" InsertCommand="cities_insert" InsertCommandType="StoredProcedure" SelectCommand="cities_select_all" SelectCommandType="StoredProcedure" UpdateCommand="cities_update" UpdateCommandType="StoredProcedure">
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="shortname" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="shortname" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Name] FROM [Cities]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" ShowFooter="true" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" OnRowCommand="GridView2_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id" Visible="False">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>

                    <FooterTemplate>
                        <asp:TextBox ID="NewName" runat="server"></asp:TextBox>

                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShortName" SortExpression="ShortName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ShortName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ShortName") %>'></asp:Label>
                    </ItemTemplate>

                    <FooterTemplate>
                        <asp:TextBox ID="NewShortName" runat="server"></asp:TextBox>

                    </FooterTemplate>

                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    </ItemTemplate>

                    <FooterTemplate>

                        <asp:LinkButton ID="LinkButton6" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                    </FooterTemplate>


                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
