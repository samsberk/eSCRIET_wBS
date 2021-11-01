using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StudentZone_Profile : System.Web.UI.Page
{
    string cmd;
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + Session["emailid"] + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if(dt.Rows.Count>0)
        {
            fname.Text = "" + dt.Rows[0][1];
            lname.Text = "" + dt.Rows[0][2];
            dob.Text = "" + dt.Rows[0][3];
            gender.Text = "" + dt.Rows[0][4];
            branch.Text = "" + dt.Rows[0][5];
            year.Text = "" + dt.Rows[0][6];
            clgname.Text = "" + dt.Rows[0][12];
            contact.Text = "" + dt.Rows[0][7];
            email.Text = "" + dt.Rows[0][0];
        }
    }
}