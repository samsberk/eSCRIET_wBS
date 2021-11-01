using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;

public partial class AdminZone_AdminMaster : System.Web.UI.MasterPage
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cmd;
        cmd = "select * from Admin where AdminID='" + Session["adminid"] + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if (dt.Rows.Count > 0)
        {
            dtlbl.Text = "" + dt.Rows[0][5];
            iplbl.Text = Dns.GetHostByName(Dns.GetHostName()).AddressList[0].ToString();
            aid.Text = "" + dt.Rows[0][0];
        }
        else
            Response.Redirect("AdminZone_Home");
    }
}
