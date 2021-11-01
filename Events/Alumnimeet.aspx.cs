using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Events_Alumnimeet : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    GenCaptcha cap = new GenCaptcha();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void alumsub_Click(object sender, EventArgs e)
    {
        string b1, b2, evatt, crp1, veri = "Not Verified", cmd, hr = "Nope";
        if (hrcontact.Text != "")
            hr = hrcontact.Text.ToString();
        b1 = branch.SelectedValue.ToString();
        b2 = batch.SelectedValue.ToString();
        evatt = evattend.SelectedValue.ToString();
        crp1 = crpart.SelectedValue.ToString();
        cmd = "select * from Alumni where EmailID='" + emailid.Text.ToLower().ToString() + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('You are already registered.')</script>");
            agrtnc.Checked = false;
        }
        else
        {
            cmd = "insert into Alumni values('" + emailid.Text.ToLower().ToString() + "','" + name.Text.ToUpper().ToString() + "','" + b1 + "','" + b2 + "','" + desig.Text.ToUpper().ToString() + "','" + comname.Text.ToUpper().ToString() + "','" + contact.Text.ToString() + "','" + hr + "','" + emailid.Text.ToLower().ToString() + "_" + alumpic.FileName + "','" + evatt + "','" + crp1 + "','" + contribute.Text.ToString() + "','" + veri + "','" + DateTime.Now.ToString() + "')";
            if (dm.ExInsertUpdateorDelete(cmd) == true)
            {
                alumpic.SaveAs(Server.MapPath("~/Images/AlumniPics/" + emailid.Text.ToLower().ToString() + "_" + alumpic.FileName));
                //cmd = "Dear "+ name.Text.ToUpper().ToString() + "<br>Your registration for " + evatt + " is successfully submitted. Please wait until your registration is verified.<br>After Varification you will recieve an Email.<br><br><br>Thank You.";
                //if (mm.SendMail(emailid.Text.ToLower().ToString(), "Registration Successful", cmd))
                    Response.Write("<script>alert('Registration Successful')</script>");
                //else
                    //Response.Write("<script>alert('Registration Successful but e-mail could not sent due to some problems.')</script>");
                emailid.Text = "";
                name.Text = "";
                branch.ClearSelection();
                batch.ClearSelection();
                desig.Text = "";
                comname.Text = "";
                contact.Text = "";
                hrcontact.Text = "";
                evattend.ClearSelection();
                crpart.ClearSelection();
                contribute.Text = "";
                agrtnc.Checked = false;
            }
            else
            {
                Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                agrtnc.Checked = false;
            }
        }
    }
}