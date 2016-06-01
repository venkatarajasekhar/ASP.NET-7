using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UsersCities : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Insert")
        {
            var footerRow = GridView1.FooterRow;
            var NewFirstName = (TextBox)footerRow.FindControl("NewFirstName");
            var NewLastName = (TextBox)footerRow.FindControl("NewLastName");
            var NewAge = (TextBox)footerRow.FindControl("NewAge");
            var NewUsername = (TextBox)footerRow.FindControl("NewUsername");
            var DropDownList2 = (DropDownList)footerRow.FindControl("DropDownList2");

            SqlDataSource1.InsertParameters.Clear();
            SqlDataSource1.InsertParameters.Add("firstname", NewFirstName.Text);
            SqlDataSource1.InsertParameters.Add("lastname", NewLastName.Text);
            SqlDataSource1.InsertParameters.Add("age", System.Data.DbType.Int32, NewAge.Text);
            SqlDataSource1.InsertParameters.Add("username", NewUsername.Text);
            SqlDataSource1.InsertParameters.Add("city_id", System.Data.DbType.Int32, DropDownList2.SelectedValue.ToString());
            SqlDataSource1.Insert();
        }
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Insert")
        {
            var footerRow = GridView2.FooterRow;
            var NewName = (TextBox)footerRow.FindControl("NewName");
            var NewShortName = (TextBox)footerRow.FindControl("NewShortName");


            SqlDataSource3.InsertParameters.Clear();
            SqlDataSource3.InsertParameters.Add("name", NewName.Text);
            SqlDataSource3.InsertParameters.Add("shortname", NewShortName.Text);
            SqlDataSource3.Insert();
        }

    }
}