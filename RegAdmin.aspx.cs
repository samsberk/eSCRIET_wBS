using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class RegAdmin : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ambtm_Click(object sender, EventArgs e)
    {
        if (acon.Checked == true)
        {
            string cmd, pas;
            pas = em.EncryptMyData(apas.Text);
            cmd = "insert into Admin values('" + aid.Text + "','" + aname.Text + "','" + pas + "','" + DateTime.Now.ToString() + "',0,'" + DateTime.Now.ToString() + "')";
            if (dm.ExInsertUpdateorDelete(cmd) == true)
                Response.Write("<script>alert('Successfully Generated')</script>");
            else
                Response.Write("<script>alert('Something went wrong.')</script>");
            aid.Text = "";
            aname.Text = "";
            apas.Text = "";
            acon.Checked = false;
        }
        else
            Response.Write("<script>alert('Check the box before generate admin id.')</script>");
    }
    protected void vissub_Click(object sender, EventArgs e)
    {
        string cmd;
        cmd = "insert into VisitCount values('" + vis.Text + "')";
        dm.ExInsertUpdateorDelete(cmd);
        vis.Text = "";
        Response.Write("<script>alert('Successfull')</script>");
    }
}