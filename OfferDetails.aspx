<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="OfferDetails.aspx.cs" Inherits="OfferDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:DetailsView runat="server" ID="OfferDetailsView" AutoGenerateRows="false">
        <Fields>
            <asp:BoundField
                DataField="Name"
                HeaderText="Nazwa" />
            <asp:BoundField
                DataField="Price"
                HeaderText="Cena" />
            <asp:BoundField
                DataField="Category"
                HeaderText="Kategoria" />
            <asp:BoundField
                DataField="Amount"
                HeaderText="Ilość" />
            <asp:BoundField
                DataField="Description"
                HeaderText="Opis" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
