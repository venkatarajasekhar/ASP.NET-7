<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Contact.aspx.cs" Inherits="Menu1_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-xs-5">
        Adres sklepu:
       <address>
           <strong>Zdrowy sklep Sp Z.o.o..</strong><br>
           Ulica 12<br>
           Bialystok<br>
           <abbr title="Phone">P:</abbr>
           (123) 456-7890
       </address>
        <br />
        <address>
            <strong>Wlasciciel sklepu</strong><br>
            <a href="mailto:#">wlasciciel@example.com</a>
        </address>
    </div>

    <div class="col-xs-5">

        <p>
            Godziny otwarcia:
            <br />
            Poniedziałek - piątek: 6:00 - 22:00
            <br />
            Sobota, Niedziela: 7:00 - 21:00
            <br />
        </p>
    </div>

</asp:Content>



