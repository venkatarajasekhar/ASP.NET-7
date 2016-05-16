<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Offer.aspx.cs" Inherits="Offer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="false" CssClass="">

        <Columns>
            <asp:BoundField HeaderText="Nazwa" DataField="Name" />
            <asp:BoundField HeaderText="Cena" DataField="Price" />
            <asp:BoundField HeaderText="Kategoria" DataField="Category" />


            <asp:TemplateField HeaderText="Szczegóły">
                <ItemTemplate>

                    <asp:LinkButton ID="Detail" runat="server"
                        CommandArgument='<%#Eval("Id")%>' 
                        Text="Szczegóły"
                        OnClick="DetailButtonClicked" />

                </ItemTemplate>

            </asp:TemplateField>
        </Columns>

    </asp:GridView>
</asp:Content>
