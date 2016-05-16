<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="GetDiscount-summary.aspx.cs" Inherits="GetDiscountSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
   <p>Otrzymałeś zniżkę 10% na dowolne zakupy w sklepie.
       <br />
       Podsumowanie:
       <br />
       Imię: <asp:Label runat="server" ID="forenameLb"></asp:Label>
       <br />
       Nazwisko: <asp:Label runat="server" ID="surnameLb"></asp:Label>
       <br />
       Adres e-mail: <asp:Label runat="server" ID="mailLb"></asp:Label>
       <br />
       Telefon: <asp:Label runat="server" ID="phoneLb"></asp:Label>
       <br />
       Kod rabatowy: <asp:Label runat="server" ID="codeLb"></asp:Label>
       <br />
  </p>
</asp:Content>