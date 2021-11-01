using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_Updatedreg : System.Web.UI.Page
{
	string cmd;
	int i, j;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	protected void Page_Load(object sender, EventArgs e)
	{
		cmd = "select * from SRegistration";
		DataTable dt = dm.SelectQuary(cmd);
		if (dt.Rows.Count > 0)
		{
			for (i = 0, j = 1; i < dt.Rows.Count; i++, j++)
			{
				listph.Controls.Add(new Literal { Text = "<tr><td>"+j+"</td><td>"+dt.Rows[i][2].ToString()+" "+dt.Rows[i][3].ToString()+"</td><td>"+ dt.Rows[i][6].ToString() + "</td><td>"+ dt.Rows[i][7].ToString() + "</td><td>"+ dt.Rows[i][8].ToString() + "</td><td>"+ dt.Rows[i][9].ToString() + "</td></tr>" });
			}
		}
	}
}