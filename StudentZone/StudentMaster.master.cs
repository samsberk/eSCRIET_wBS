using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StudentZone_StudentMaster : System.Web.UI.MasterPage
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        string scmd = "select * from Registration where EmailID='" + Session["emailid"] + "'";
        DataTable dt = dm.SelectQuary(scmd);
        if (dt.Rows.Count > 0)
        {
            u2lbl.Text = "" + dt.Rows[0][1];
        }
        else
        {
            Response.Redirect("Login");
            Response.Write("<script>alert('Session Time out, Please Login Again (Security Purpose).')</script>");
        }
    }
}
