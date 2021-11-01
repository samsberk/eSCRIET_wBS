using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_MarksList_wsm : System.Web.UI.Page
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
            string p, a, d;
            cmd = "select * from WritingSkills";
            DataTable dt = dm.SelectQuary(cmd);
            for (x = 0, y = 1; x < dt.Rows.Count; x++, y++)
            {
                p = "";
                a = "";
                d = "";
                if ("" + dt.Rows[x][7] == "Nope")
                    p = "NA";
                if ("" + dt.Rows[x][8] == "Nope")
                    a = "NA";
                if ("" + dt.Rows[x][9] == "Nope")
                    d = "NA";
                aastu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td>" + dt.Rows[x][1] + "</td><td>" + dt.Rows[x][2] + " / " + dt.Rows[x][3] + "</td><td>" + dt.Rows[x][6] + "</td><td>" + p + "</td><td>" + a + "</td><td>" + d + "</td></tr>" });
            }
        }
        else
            Response.Redirect("AdminZone_Home");
        
    }
}