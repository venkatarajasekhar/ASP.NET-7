﻿using System;
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
        GridView1.DataSource = repo.GetProducts().products;
        GridView1.DataBind();
    }
}