using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GetDiscountSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        forenameLb.Text = Session["forename"].ToString();
        surnameLb.Text = Session["surname"].ToString();
        mailLb.Text = Session["mail"].ToString();
        phoneLb.Text = Session["phone"].ToString();
        codeLb.Text = new Random(10).Next(1000, 100000).ToString();
    }
}