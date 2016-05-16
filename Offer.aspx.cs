using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Offer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProductRepository repo = ProductRepository.Instance;
        GridView1.DataSource = repo.GetProducts().content;
        GridView1.DataBind();
    }

    protected void DetailButtonClicked(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)(sender);
        string idValue = btn.CommandArgument;
        Response.Redirect("OfferDetails.aspx?id=" + idValue);
    }
}