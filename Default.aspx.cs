using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DBManager dm = new DBManager();
	MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cmd;
        cmd = "update VisitCount set Visits=(Visits+1)";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "select * from VisitCount";
        DataTable dt = dm.SelectQuary(cmd);
        vcount.Text = "" + dt.Rows[0]["Visits"].ToString();
    }
    protected void tsub_Click(object sender,EventArgs e)
    {
		string cmd;
		if(tname.Text=="" || tmail.Text=="" || tquery.Text=="")
		{
			Response.Write("<script>alert('Should not blank any text box in Training Field.')</script>");
			tname.Text = "";
			tmail.Text = "";
			tquery.Text = "";
		}
		else
		{
			cmd = "Training Query Sender : " + tname.Text.ToString() + "<br/>Training Query Email : " + tmail.Text.ToString() + "<br/>Training Query :<br/><h4>" + tquery.Text.ToString() + "</h3><br/><br/><a href='mailto:" + tmail.Text.ToString() + "?subject=Reply from CVGClub&body=Hello " + tname.Text.ToString() + ",%0D%0AYour Query : " + tquery.Text.ToString() + "%0D%0AReply : '>Click here to instant Reply</a><br/><br/><br/><br/><br/><h4 style='text-align:right;font-size:30px;color:red;font-family:Calibri;'><i>Team CVGClub</i></h4>";
			if (mm.SendMail("queryatcvg@gmail.com","Training Query",cmd))
			{
				Response.Write("<script>alert('Submitted Successfully. We will reply back as soon as possible, if given E-mail ID is valid.')</script>");
				tname.Text = "";
				tmail.Text = "";
				tquery.Text = "";
			}
			else
			{
				Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
			}
		}
        
    }
	protected void ssub_Click(object sender,EventArgs e)
    {
		string cmd;
		if (sname.Text == "" || smail.Text == "" || squery.Text == "")
		{
			Response.Write("<script>alert('Should not blank any text box in Startup Field.')</script>");
			sname.Text = "";
			smail.Text = "";
			squery.Text = "";
		}
		else
		{
			cmd = "Startup Query Sender : " + sname.Text.ToString() + "<br/>Startup Query Email : " + smail.Text.ToString() + "<br/>Startup Query :<br/><h4>" + squery.Text.ToString() + "</h3><br/><br/><a href='mailto:" + smail.Text.ToString() + "?subject=Reply from CVGClub&body=Hello " + sname.Text.ToString() + ",%0D%0AYour Query : " + squery.Text.ToString() + "%0D%0AReply : '>Click here to instant Reply</a><br/><br/><br/><br/><br/><h4 style='text-align:right;font-size:30px;color:red;font-family:Calibri;'><i>Team CVGClub</i></h4>";
			if (mm.SendMail("queryatcvg@gmail.com", "Startup Query", cmd))
			{
				Response.Write("<script>alert('Submitted Successfully. We will reply back as soon as possible, if given E-mail ID is valid.')</script>");
				sname.Text = "";
				smail.Text = "";
				squery.Text = "";
			}
			else
			{
				Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
			}
		}
	}

}