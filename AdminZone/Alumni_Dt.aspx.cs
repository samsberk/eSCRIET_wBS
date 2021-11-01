using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

public partial class AdminZone_Alumni_Dt : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cmd;
        cmd = "select * from Admin where AdminID='" + Session["adminid"] + "'";
        DataTable dta = dm.SelectQuary(cmd);
        if (dta.Rows.Count > 0)
        {
            if (Request.QueryString == null)
                Response.Redirect("Alumni_Management");
            string em = Request.QueryString["EmailID"].ToString();
            agrtnc.Checked = false;
            cmd = "select * from Alumni where EmailID='" + em + "'";
            DataTable dt = dm.SelectQuary(cmd);
            if (dt.Rows.Count > 0)
            {
                alumem.Text = dt.Rows[0][0].ToString();
                email.Text = "" + dt.Rows[0][0];
                name.Text = "" + dt.Rows[0][1];
                branch.Text = "" + dt.Rows[0][2];
                batch.Text = "" + dt.Rows[0][3];
                desig.Text = "" + dt.Rows[0][4];
                comname.Text = "" + dt.Rows[0][5];
                contact.Text = "" + dt.Rows[0][6];
                hrcontact.Text = "" + dt.Rows[0][7];
                evatt.Text = "" + dt.Rows[0][9];
                crp.Text = "" + dt.Rows[0][10];
                contri.Text = "" + dt.Rows[0][11];
                verificat.Text = "" + dt.Rows[0][12];
                if ("" + dt.Rows[0][12] == "Verified")
                {
                    verificat.Style.Add("color", "green");
                    notif.Controls.Add(new Literal() { Text = "<div class='alert alert-success fade in'>This email <strong>" + dt.Rows[0][0].ToString() + "</strong> is <kbd>Verified</kbd>. Please go to <a href='Alumni_Management' class='alert-link'>Alumni Management</a> and check it out in <kbd>Verification_Panel/Verified</kbd> Section.</div>" });
                }
                else
                {
                    verificat.Style.Add("color", "orange");
                    notif.Controls.Add(new Literal() { Text = "<div class='alert alert-warning fade in'>This email <strong>" + dt.Rows[0][0].ToString() + "</strong> is not varified, please check the <kbd>Confirm</kbd> checkbox in RHS and perform next step for varification.</div>" });
                }
                regdate.Text = "" + dt.Rows[0][13];
                alumpro.ImageUrl = "~/Images/AlumniPics/" + "" + dt.Rows[0][8];
            }
            else
            {
                cmd = "select * from RejAlumni where EmailID='" + em + "'";
                DataTable dret = dm.SelectQuary(cmd);
                if (dret.Rows.Count > 0)
                {
                    alumem.Text = dret.Rows[0][0].ToString();
                    email.Text = "" + dret.Rows[0][0];
                    name.Text = "" + dret.Rows[0][1];
                    branch.Text = "" + dret.Rows[0][2];
                    batch.Text = "" + dret.Rows[0][3];
                    desig.Text = "" + dret.Rows[0][4];
                    comname.Text = "" + dret.Rows[0][5];
                    contact.Text = "" + dret.Rows[0][6];
                    hrcontact.Text = "" + dret.Rows[0][7];
                    evatt.Text = "" + dret.Rows[0][9];
                    crp.Text = "" + dret.Rows[0][10];
                    contri.Text = "" + dret.Rows[0][11];
                    verificat.Text = "" + dret.Rows[0][12];
                    verificat.Style.Add("color", "red");
                    notif.Controls.Add(new Literal() { Text = "<div class='alert alert-danger fade in'>This email <strong>" + dret.Rows[0][0].ToString() + "</strong> is <kbd>Rejected</kbd> and the reason behind rejection is <strong>" + dret.Rows[0][13].ToString() + "</strong>. Please go to <a href='Alumni_Management' class='alert-link'>Alumni Management</a> and check it out in <kbd>Verification_Panel/Rejected</kbd> section.</div>" });
                    regdate.Text = "" + dret.Rows[0][14];
                    alumpro.ImageUrl = "~/Images/AlumniPics/" + "" + dret.Rows[0][8];
                }
                else
                {
                    Response.Redirect("Alumni_Management");
                }
            }
        }
        else
        {
            Response.Redirect("Alumni_Management");
        }
    }

    protected void veralum_Click(object sender, EventArgs e)
    {
        string cmd, st = "Verified";
        string em = Request.QueryString["EmailID"].ToString();
        cmd = "select * from Alumni where EmailID='" + em + "'";
        DataTable ddlreg = dm.SelectQuary(cmd);
        if (ddlreg.Rows.Count > 0)
        {
            cmd = "update Alumni set Verification='" + st + "' where EmailID='" + em + "'";
            if (dm.ExInsertUpdateorDelete(cmd))
            {
                //cmd = "Dear " + ddlreg.Rows[0][1].ToString() + "<br><br>Your registration for " + ddlreg.Rows[0][9].ToString() + " in SCRIET has been <b>Verified</b>. The 2<sup>nd</sup> Alumni Meet & Certificate Distribution 2018 in SCRIET is held on 15 September 2018. Please attend this event.<br><br><br>Thank You.";
                //mm.SendMail(ddlreg.Rows[0][0].ToString(), "Registration Verified", cmd);
                Response.Redirect("Alumni_Details?EmailID=" + em);
            }
        }
        else
        {
            cmd = "select * from RejAlumni where EmailID='" + em + "'";
            DataTable dreg = dm.SelectQuary(cmd);
            if (dreg.Rows.Count > 0)
            {
                cmd="insert into Alumni values('"+dreg.Rows[0][0].ToString()+ "','" + dreg.Rows[0][1].ToString() + "','" + dreg.Rows[0][2].ToString() + "','" + dreg.Rows[0][3].ToString() + "','" + dreg.Rows[0][4].ToString() + "','" + dreg.Rows[0][5].ToString() + "','" + dreg.Rows[0][6].ToString() + "','" + dreg.Rows[0][7].ToString() + "','" + dreg.Rows[0][8].ToString() + "','" + dreg.Rows[0][9].ToString() + "','" + dreg.Rows[0][10].ToString() + "','" + dreg.Rows[0][11].ToString() + "','" + st + "','" + DateTime.Now.ToString() + "')";
                if(dm.ExInsertUpdateorDelete(cmd))
                {
                    //cmd = "Dear " + dreg.Rows[0][1].ToString() + "<br><br>Your registration for " + dreg.Rows[0][9].ToString() + " in SCRIET has been <b>Verified</b> after rejection.The 2<sup>nd</sup> Alumni Meet & Certificate Distribution 2018 in SCRIET is held on 15 September 2018. Please attend this event.<br><br><br>Thank You.";
                    //mm.SendMail(dreg.Rows[0][0].ToString(), "Registration Verified", cmd);
                    cmd = "delete from RejAlumni where EmailID='" + em + "'";
                    if(dm.ExInsertUpdateorDelete(cmd))
                    {
                        Response.Redirect("Alumni_Details?EmailID=" + em);
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong.')</script>");
                        agrtnc.Checked = false;
                    }
                }
                else
                    Response.Write("<script>alert('Could not Verify this registration right now, please try again later.')</script>");
            }
            else

                Response.Write("<script>alert('Security issue, please try again in proper way.')</script>");
        }
    }

    protected void delalum_Click(object sender, EventArgs e)
    {
        string cmd, st = "Rejected";
        string em = Request.QueryString["EmailID"].ToString();
        cmd = "select * from RejAlumni where EmailID='" + em + "'";
        DataTable chkdt = dm.SelectQuary(cmd);
        if (chkdt.Rows.Count > 0)
        {
            alertnotif.Controls.Add(new Literal() { Text = "<div class='alert alert-danger'>This Email Id is already Rejected. Thank You</div>" });
            txtmenres.Text = "";
            agrtnc.Checked = false;
        }
        else
        {
            if (txtmenres.Text == "")
            {
                alertnotif.Controls.Add(new Literal() { Text = "<div class='alert alert-danger'>Textbox should contain some <strong>reason</strong>, Enter Something before deletion.</div>" });
                agrtnc.Checked = false;
            }
            else
            {
                cmd = "select * from Alumni where EmailID='" + em + "'";
                DataTable ddlreg = dm.SelectQuary(cmd);
                if (ddlreg.Rows.Count > 0)
                {
                    cmd = "insert into RejAlumni values('" + ddlreg.Rows[0][0].ToString() + "','" + ddlreg.Rows[0][1].ToString() + "','" + ddlreg.Rows[0][2].ToString() + "','" + ddlreg.Rows[0][3].ToString() + "','" + ddlreg.Rows[0][4].ToString() + "','" + ddlreg.Rows[0][5].ToString() + "','" + ddlreg.Rows[0][6].ToString() + "','" + ddlreg.Rows[0][7].ToString() + "','" + ddlreg.Rows[0][8].ToString() + "','" + ddlreg.Rows[0][9].ToString() + "','" + ddlreg.Rows[0][10].ToString() + "','" + ddlreg.Rows[0][11].ToString() + "','" + st + "','" + txtmenres.Text.ToString() + "','" + DateTime.Now.ToString() + "')";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        //cmd = "Dear " + ddlreg.Rows[0][1].ToString() + "<br><br>Your registration for " + ddlreg.Rows[0][9].ToString() + " in SCRIET has been <b>Rejected</b> due to <i>" + txtmenres.Text.ToString() + "</i> reason. If you are interested in this event then contact immediatly to SCRIET administration for verify this registration.<br><br><br>Thank You.";
                        //mm.SendMail(ddlreg.Rows[0][0].ToString(), "Registration Rejected", cmd);
                        cmd = "delete from Alumni where EmailID='" + em + "'";
                        if (dm.ExInsertUpdateorDelete(cmd))
                        {
                            Response.Redirect("Alumni_Details?EmailID=" + em);
                        }
                        else
                            Response.Write("<script>alert('Something went wrong.')</script>");
                    }
                    else
                        Response.Write("<script>alert('Could not reject this registration right now, please try again later.')</script>");
                }
                else
                    Response.Write("<script>alert('Security issue, please try again in proper way.')</script>");
            }
        }
    }
}