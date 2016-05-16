using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu1_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void viewSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (isNewClientDdl.SelectedValue == "TAK")
        {
            MultiView2.SetActiveView(newClientView);
        }
        else if (isNewClientDdl.SelectedValue == "NIE")
        {
            MultiView2.SetActiveView(currentClientView);
        }
        else
        {
            MultiView2.ActiveViewIndex = -1;
        }
    }

    protected void OnClick(object sender, EventArgs e)
    { 
        if (Page.IsValid)
        {
            Server.Transfer("/Default.aspx");
        }
        else
        {
            validationLabel.Text = "Błędnie wypełniony formularz.";
            Server.Transfer("/About.aspx");
        }
    }
}