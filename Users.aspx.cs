using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    UsersDB db;
    protected UserDetails current;
    protected void Page_Load(object sender, EventArgs e)
    {
        db = new UsersDB();
        GridView1.DataSource = db.users_select_all();
        GridView1.DataBind();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var row = GridView1.SelectedRow;
        var val = row.Cells[0].Text;
        current = db.users_select_by_id(int.Parse(val));
        Panel1.DataBind();
    }

    protected void Add_Click(object sender, EventArgs e)
    {
        db.users_insert(tbim.Text, tbnazw.Text, int.Parse(tbwiek.Text), tbnazwa.Text);
        Response.Redirect("Users.aspx", false);

    }

    protected void Update_Click(object sender, EventArgs e)
    {
        var row = GridView1.SelectedRow;
        var val = row.Cells[0].Text;
        db.users_update(int.Parse(val), tbim.Text, tbnazw.Text, int.Parse(tbwiek.Text), tbnazwa.Text);
        Response.Redirect("Users.aspx", false);
    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        var row = GridView1.SelectedRow;
        var val = row.Cells[0].Text;
        db.users_delete(int.Parse(val));
        Response.Redirect("Users.aspx", false);
    }
}