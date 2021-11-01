using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_MarksList_osm : System.Web.UI.Page
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
            string s, t, d;
            cmd = "select * from OratorySkills";
            DataTable dt = dm.SelectQuary(cmd);
            for (x = 0, y = 1; x < dt.Rows.Count; x++, y++)
            {
                s = "";
                t = "";
                d = "";
                if ("" + dt.Rows[0][7] == "Nope")
                    s = "NA";
                if ("" + dt.Rows[0][8] == "Nope")
                    t = "NA";
                if ("" + dt.Rows[0][9] == "Nope")
                    d = "NA";
                aastu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td>" + dt.Rows[x][1] + "</td><td>" + dt.Rows[x][2] + " / " + dt.Rows[x][3] + "</td><td>" + dt.Rows[x][6] + "</td><td>" + s + "</td><td>" + t + "</td><td>" + d + "</td></tr>" });
            }
        }
        else
            Response.Redirect("AdminZone_Home");
        
    }
}