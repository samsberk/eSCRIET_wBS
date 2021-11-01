using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_Default : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if(chboxagrlogin.Checked==true)
        {
            string scmd, pas;
            pas = em.EncryptMyData(pastxt.Text);
            scmd = "select * from Admin where AdminID='" + idlogintxt.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if(dt.Rows.Count>0)
            {
                scmd = "update Admin set LCount=(LCount+1), LastLogin='" + DateTime.Now.ToString() + "' where AdminID='" + idlogintxt.Text + "'";
                dm.ExInsertUpdateorDelete(scmd);
                Session["adminid"] = idlogintxt.Text;
                Response.Redirect("Admin_Home");
            }
            else
                Response.Write("<script>alert('Invalid id or password.')</script>");
        }
        else
        {
            Response.Write("<script>alert('Please check the box.')</script>");
        }
    }
}