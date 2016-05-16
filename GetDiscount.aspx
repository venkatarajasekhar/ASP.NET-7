<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="GetDiscount.aspx.cs" Inherits="Menu1_1" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="text-align-left">
        <asp:Label runat="server" ID="validationLabel"></asp:Label>

        <asp:MultiView ID="multiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="mainView" runat="server">
                Imię:
        <asp:TextBox ID="forenameTb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="forenameRequiredValidator"
                    ControlToValidate="forenameTb" ErrorMessage="Podaj imię." />
                <br />
                Nazwisko:
        <asp:TextBox ID="surnameTb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="surenameRequiredValidator"
                    ControlToValidate="surnameTb" ErrorMessage="Podaj nazwisko." />
                <br />
                Email:
        <asp:TextBox ID="emailTb" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="emailValidator"
                    runat="server" ErrorMessage="Nieprawidłowy adres e-mail."
                    ControlToValidate="emailTb"
                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic"/>
                <asp:RequiredFieldValidator runat="server" ID="emailRequiredFieldValidator"
                    ControlToValidate="emailTb" ErrorMessage="Podaj adres e-mail." Display="Dynamic" />
                <br />
                Telefon:
        <asp:TextBox ID="phoneTb" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="phoneValidator"
                    ErrorMessage="Numer telefonu powinien zawierać 9 cyfr bez zera na początku."
                    ValidationExpression="^[1-9][0-9]{8}$" ControlToValidate="phoneTb" Display="Dynamic">
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator runat="server" ID="phoneRequiredFieldValidator"
                    ControlToValidate="emailTb" ErrorMessage="Podaj telefon." Display="Dynamic"/>
                <br />
                Nowy klient:
                <asp:DropDownList ID="isNewClientDdl" runat="server" OnSelectedIndexChanged="viewSelect_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>TAK</asp:ListItem>
                    <asp:ListItem>NIE</asp:ListItem>
                </asp:DropDownList>
                <br />
            </asp:View>
        </asp:MultiView>

        <asp:MultiView ID="MultiView2" runat="server">

            <asp:View ID="currentClientView" runat="server">
                Kategoria towarów, które Cię najbardziej interesują:
                <asp:DropDownList ID="commoditiesDdl1" runat="server">
                    <asp:ListItem>Warzywa i owoce</asp:ListItem>
                    <asp:ListItem>Soki</asp:ListItem>
                    <asp:ListItem>Przyprawy</asp:ListItem>
                    <asp:ListItem>Herbaty i kawy</asp:ListItem>
                    <asp:ListItem>Pieczywo</asp:ListItem>
                    <asp:ListItem>Inne</asp:ListItem>
                </asp:DropDownList>
                <br />

                Kiedy ostatnio robiłeś zakupy: 
                <asp:TextBox ID="lastShoppingDateTb" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server"
                    ControlToValidate="lastShoppingDateTb"
                    ErrorMessage="Date format should be dd-mm-yyyy"
                    ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$">
                </asp:RegularExpressionValidator>
                <br />
                Ile średnio wydajesz na zakupach:
                <asp:TextBox ID="costTb" runat="server"></asp:TextBox>
                <br />

                Jak oceniasz obsługę:
                <asp:DropDownList ID="gradeDdl" runat="server">
                    <asp:ListItem>Bardzo dobra</asp:ListItem>
                    <asp:ListItem>Dobra</asp:ListItem>
                    <asp:ListItem>Słaba</asp:ListItem>
                    <asp:ListItem>Bardzo słaba</asp:ListItem>
                </asp:DropDownList>
                <br />
                                <asp:Button runat="server" CssClass="btn btn-success" Text="Zatwierdź" OnClick="OnClick" />

                <br />
            </asp:View>

            <asp:View ID="newClientView" runat="server">
                Kategoria towarów, które Cię najbardziej interesują:
                <asp:DropDownList ID="commoditiesDdl2" runat="server">
                    <asp:ListItem>Warzywa i owoce</asp:ListItem>
                    <asp:ListItem>Soki</asp:ListItem>
                    <asp:ListItem>Przyprawy</asp:ListItem>
                    <asp:ListItem>Herbaty i kawy</asp:ListItem>
                    <asp:ListItem>Pieczywo</asp:ListItem>
                    <asp:ListItem>Inne</asp:ListItem>
                </asp:DropDownList>
                <br />

                Jak daleko mieszkasz od sklepu Kubuś:
                <asp:TextBox runat="server"></asp:TextBox>
                <br />

                Jak daleko mieszkasz od sklepu w którym najczęściej robiłeś zakupy ?
                <asp:TextBox runat="server"></asp:TextBox>
                <br />

                Ile średnio wydajesz na zakupach ?
                <asp:TextBox runat="server"></asp:TextBox>
                <br />

                <asp:Button runat="server" CssClass="btn btn-success" Text="Zatwierdź" OnClick="OnClick" />
                <br />

            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
