using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OfferDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        List<Product> productList = new List<Product>();
        productList.Add(ProductRepository.Instance.FindById(id));
        OfferDetailsView.DataSource = productList;
        OfferDetailsView.DataBind();
    }
}