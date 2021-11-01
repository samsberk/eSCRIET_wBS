using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StudentZone_Password : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void subpassbtn_Click(object sender, EventArgs e)
    {
        if(agrchbox.Checked==true)
        {
            string opas, npas, scmd, ucmd;
            opas = em.EncryptMyData(opasstxt.Text);
            npas = em.EncryptMyData(npasstxt.Text);
            scmd = "select * from SRegistration where EmailID='" + Session["emailid"] + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (opas == ("" + dt.Rows[0][8]))
            {
                if (npasstxt.Text == repasstxt.Text)
                {
                    ucmd = "update SRegistration set Password='" + npas + "' where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(ucmd);
                    Response.Write("<script>alert('Password Succesfully Changed.')</script>");
                    scmd = "Password Updated";
                    ucmd = "Dear " + dt.Rows[0][1] + "<br/>Your password was changed successfully at " + DateTime.Now.ToString() + " if, you do this then ignore this mail. Otherwise secure your account, or contact.";
                    mm.SendMail(("" + dt.Rows[0][0]), scmd, ucmd);
                    opasstxt.Text = "";
                    npasstxt.Text = "";
                    repasstxt.Text = "";
                    agrchbox.Checked = false;
                    chpaslbl.Text = "";
                }
                else
                    chpaslbl.Text = "Password doesn't match.";
            }
            else
                Response.Write("<script>alert('Old password is not correct.')</script>");
        }
        else
        {
            Response.Write("<script>alert('Plese check the box if you are confirm for change  your password.')</script>");
        }
    }
}