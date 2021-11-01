using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_Login : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["emailid"] != null)
            Response.Redirect("Student_Home");
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
		Response.Write("<script>alert('In maintenance')</script>");
		//if (chboxagrlogin.Checked == true)
  //      {
  //          string cmd1, pas;
  //          pas = em.EncryptMyData(userpasstxt.Text);
		//	cmd1 = "select * from SRegistration where EmailID='" + emailidtxt.Text.ToLower().ToString() + "' and Password='" + pas + "'";
		//	DataTable dst = dm.SelectQuary(cmd1);
		//	if (dst.Rows.Count > 0)
		//	{
		//		string cmd2 = "update SRegistration set LCount=(LCount+1), LastLogin='" + DateTime.Now.ToString() + "' where EmailID='" + emailidtxt.Text.ToLower().ToString() + "'";
		//		if (dm.ExInsertUpdateorDelete(cmd2) == true)
		//		{
		//			Session["emailid"] = emailidtxt.Text.ToLower().ToString();
		//			Response.Redirect("Student_Home");
		//		}
		//		else
		//			Response.Write("<script>alert('Could not Login, Please try again.')</script>");
		//	}
		//	else
		//	{
		//		cmd1 = "select * from Registration where EmailID='" + emailidtxt.Text + "' and Password='" + pas + "'";
		//		DataTable dt = dm.SelectQuary(cmd1);
		//		if (dt.Rows.Count > 0)
		//		{
		//			string cmd2 = "update Registration set LCount=(LCount+1), LastLogin='" + DateTime.Now.ToString() + "' where EmailID='" + emailidtxt.Text + "'";
		//			if (dm.ExInsertUpdateorDelete(cmd2) == true)
		//			{
		//				Session["emailid"] = emailidtxt.Text.ToLower().ToString();
		//				Response.Redirect("Update_Student_Profile");
		//			}
		//			else
		//				Response.Write("<script>alert('Could not Login, Please try again.')</script>");
		//		}
		//		else
		//		{
		//			Response.Write("<script>alert('Invalid User Email ID or Password.')</script>");
		//		}
		//	}
  //      }
  //      else
  //          Response.Write("<script>alert('Please check the box for agree.')</script>");
    }
}