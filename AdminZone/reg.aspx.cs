using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_reg : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cmd;
        cmd = "select * from Admin where AdminID='" + Session["adminid"] + "'";
        DataTable dta = dm.SelectQuary(cmd);
        if (dta.Rows.Count > 0)
        {

        }
        else
            Response.Redirect("AdminZone_Home");
    }
}