using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_MarksList_aam : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cmd;
        cmd = "select * from Admin where AdminID='" + Session["adminid"] + "'";
        DataTable dta = dm.SelectQuary(cmd);
        if (dta.Rows.Count > 0)
        {
            int x, y;
            string s, b, f, r;
            cmd = "select * from ArtAttack";
            DataTable dt = dm.SelectQuary(cmd);
            for (x = 0, y = 1; x < dt.Rows.Count; x++, y++)
            {
                s = "";
                b = "";
                f = "";
                r = "";
                if ("" + dt.Rows[0][7] == "Nope")
                    s = "NA";
                if ("" + dt.Rows[0][8] == "Nope")
                    b = "NA";
                if ("" + dt.Rows[0][9] == "Nope")
                    f = "NA";
                if ("" + dt.Rows[0][10] == "Nope")
                    r = "NA";
                aastu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td>" + dt.Rows[x][1] + "</td><td>" + dt.Rows[x][2] + " / " + dt.Rows[x][3] + "</td><td>" + dt.Rows[x][6] + "</td><td>" + s + "</td><td>" + b + "</td><td>" + f + "</td><td>" + r + "</td></tr>" });
            }
        }
        else
            Response.Redirect("AdminZone_Home");
    }
}