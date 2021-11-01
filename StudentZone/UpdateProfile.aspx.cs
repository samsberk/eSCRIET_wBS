using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class StudentZone_UpdateProfile : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		cmd = "select * from SRegistration where EmailID='" + Session["emailid"] + "'";
		DataTable dtsr = dm.SelectQuary(cmd);
		if (dtsr.Rows.Count > 0)
		{
			Response.Redirect("Student_Home");
		}
		else
		{
			cmd = "select * from Registration where EmailID='" + Session["emailid"] + "'";
			DataTable dtr = dm.SelectQuary(cmd);
			if (dtr.Rows.Count > 0)
			{
				emtxt.Text = Session["emailid"].ToString();
				fntxt.Text = dtr.Rows[0][1].ToString();
				lntxt.Text = dtr.Rows[0][2].ToString();
				dobtxt.Text = dtr.Rows[0][3].ToString();
				if (dtr.Rows[0][4].ToString() == "Male")
					gentxt.SelectedIndex = 1;
				else
					gentxt.SelectedIndex = 2;
			}
			else
			{
				Response.Redirect("Login");
			}
		}
	}
	protected void subregbtn_Click(object sender, EventArgs e)
	{
		string c = "NOPE", d = "NOPE", b = "NOPE", y = "NOPE", s = "NOT VERIFIED", att="NOT MENTIONED";
		c = coltxt.SelectedValue.ToString();
		if (coltxt.SelectedValue == "OTHER")
			c = ocoltxt.Text.ToUpper().ToString();
		d = depttxt.SelectedValue.ToString();
		if (depttxt.SelectedValue == "B.TECH")
		{
			b = btechbrtxt.SelectedValue.ToString();
			y = btechyeartxt.SelectedValue.ToString();
		}
		else if (depttxt.SelectedValue == "MBA")
		{
			b = mbabrtxt.SelectedValue.ToString();
			y = myeartxt.SelectedValue.ToString();
		}
		else if (depttxt.SelectedValue == "MCA")
		{
			b = mcabrtxt.SelectedValue.ToString();
			y = myeartxt.SelectedValue.ToString();
		}
		else if (depttxt.SelectedValue == "OTHER")
		{
			b = obrtxt.Text.ToUpper().ToString();
			y = btechyeartxt.SelectedValue.ToString();
		}
		cmd = "select * from SRegistration where Department='" + d + "' and Branch='" + b + "' and Year='" + y + "' and RollNo='" + rolltxt.Text + "'";
		DataTable dtrol = dm.SelectQuary(cmd);
		if (dtrol.Rows.Count > 0)
		{
			Response.Write("<script>alert('Can not register with this Roll Number for this Department, Branch and Year.')</script>");
		}
		else
		{
			string filen = "NOTHING", enp = em.EncryptMyData(pastxt.Text);
			if (pic.HasFile)
			{
				filen = emtxt.Text.ToLower().ToString() + "_" + pic.FileName;
				pic.SaveAs(Server.MapPath("~/Images/UserPics/" + filen));
			}
			cmd = "insert into SRegistration values(N'" + emtxt.Text.ToLower().ToString() + "','" + rolltxt.Text + "',N'" + fntxt.Text.ToUpper().ToString() + "',N'" + lntxt.Text.ToUpper().ToString() + "','" + dobtxt.Text + "','" + gentxt.SelectedValue.ToString() + "','" + d + "',N'" + b + "','" + y + "',N'" + c + "',N'" + filen + "','" + conttxt.Text + "',N'" + enp + "','" + DateTime.Now.ToString() + "',0,'" + DateTime.Now.ToString() + "','" + s + "','" + att + "')";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				Response.Redirect("Student_Home");
			}
			else
			{
				Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
			}
		}
	}
}