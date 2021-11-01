using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class FPassword : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    GenCaptcha gc = new GenCaptcha();
    MyMail mm = new MyMail();
    EncryptionDecryption em = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        if (chboxfp.Checked == true)
        {
            string cmd, cap, pas;
            cmd = "select * from Registration where EmailID='" + emailidtxt.Text + "'";
            DataTable dt = dm.SelectQuary(cmd);
            if (dt.Rows.Count > 0)
            {
                if (contxt.Text == "" + dt.Rows[0][7] && dobtxt.Text == "" + dt.Rows[0][3])
                {
                    cap = gc.getcode();
                    pas = em.EncryptMyData(cap);
                    cmd = "update Registration set Password='" + pas + "' where EmailID='" + emailidtxt.Text + "'";
                    if(dm.ExInsertUpdateorDelete(cmd)==true)
                    {
                        cmd = "Your Password was changed successfully on <b>" + DateTime.Now.ToString() + "</b>.<br/>Your temporary password: <b>" + cap + "</b><br/> Please change your password when you login with this password for your security.<br/>Thank You.";
                        bool x = mm.SendMail(emailidtxt.Text.ToLower().ToString(), "Password", cmd);
                        if (x == true)
                        {
                            Response.Write("<script>alert('Temporary Password successfully sent to your Email ID.')</script>");
                            emailidtxt.Text = "";
                            contxt.Text = "";
                            dobtxt.Text = "";
                            chboxfp.Checked = false;
                        }
                        else
                            Response.Write("<script>alert('Could not send at this moment, Please try again later, Thank You.')</script>");
                    }
                    else
                        Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
                }
                else
                {
                    if (contxt.Text != "" + dt.Rows[0][7])
                        Response.Write("<script>alert('Incorrect Contact Number.')</script>");
                    else if (dobtxt.Text != "" + dt.Rows[0][3])
                        Response.Write("<script>alert('Incorrect Date of Birth.')</script>");
                }
            }
            else
                Response.Write("<script>alert('Email ID not registered.')</script>");
        }
        else
            Response.Write("<script>alert('Confirm the checkbox before submitting form.')</script>");
    }
}