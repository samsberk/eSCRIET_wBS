using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_MarksList_Poetm : System.Web.UI.Page
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
            string sw = "", fp = "";
            cmd = "select * from Poetry";
            DataTable dt = dm.SelectQuary(cmd);
            for (x = 0, y = 1; x < dt.Rows.Count; x++, y++)
            {
                sw = "";
                fp = "";
                if ("" + dt.Rows[x][7] == "Nope")
                    sw = "NA";
                if ("" + dt.Rows[x][8] == "Nope")
                    fp = "NA";
                aastu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td>" + dt.Rows[x][1] + "</td><td>" + dt.Rows[x][2] + " / " + dt.Rows[x][3] + "</td><td>" + dt.Rows[x][6] + "</td><td>" + sw + "</td><td>" + fp + "</td></tr>" });
            }
        }
        else
            Response.Redirect("AdminZone_Home");
        
    }
}