using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_GNaek : System.Web.UI.Page
{
	string cmd;
	int i, j;
	DBManager dm = new DBManager();

	protected void Page_Load(object sender, EventArgs e)
	{
		cmd = "select * from gnaek";
		DataTable dtgn = dm.SelectQuary(cmd);
		for (i = 0, j = 1; i < dtgn.Rows.Count; i++, j++)
		{
			cmd = "select * from SRegistration where EmailID='" + dtgn.Rows[i]["EmailID"].ToString() + "'";
			DataTable dtsr = dm.SelectQuary(cmd);
			if (dtsr.Rows.Count > 0)
				gnaekph.Controls.Add(new Literal { Text = "<tr><td>" + j + "</td><td>" + dtsr.Rows[0]["FName"].ToString() + " " + dtsr.Rows[0]["LName"].ToString() + "</td><td>" + dtsr.Rows[0]["Department"].ToString() + " <b>/</b> " + dtsr.Rows[0]["Branch"].ToString() + " <b>/</b> " + dtsr.Rows[0]["Year"].ToString() + "</td><td>" + dtgn.Rows[i][1].ToString() + "</td><td>" + dtgn.Rows[i][2].ToString() + "</td><td>" + dtgn.Rows[i][3].ToString() + "</td><td>" + dtgn.Rows[i][4].ToString() + "</td><td>" + dtgn.Rows[i][5].ToString() + "</td></tr>" });
			else
			{
				cmd = "select * from Registration where EmailID='" + dtgn.Rows[i][0].ToString() + "'";
				DataTable dtr = dm.SelectQuary(cmd);
				gnaekph.Controls.Add(new Literal { Text = "<tr><td>" + j + "</td><td>" + dtr.Rows[0]["FName"].ToString() + " " + dtr.Rows[0]["LName"].ToString() + "<br/><i>NOT UPDATED</i></td><td>" + dtr.Rows[0]["BranchOrStream"].ToString() + " <b>/</b> " + dtr.Rows[0]["Year"].ToString() + "</td><td>" + dtgn.Rows[i][1].ToString() + "</td><td>" + dtgn.Rows[i][2].ToString() + "</td><td>" + dtgn.Rows[i][3].ToString() + "</td><td>" + dtgn.Rows[i][4].ToString() + "</td><td>" + dtgn.Rows[i][5].ToString() + "</td></tr>" });
			}
		}
	}
}