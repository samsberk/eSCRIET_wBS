using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using Ionic.Zip;

public partial class AdminZone_LatestEvents : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        string zippath = Server.MapPath("../MagazineFiles/Magazine_Article_File.zip");
        FileInfo zipfl = new FileInfo(zippath);
        zipfl.Delete();
        string pathname = Server.MapPath("../MagazineFiles/");
        string[] filename = Directory.GetFiles(pathname);
        using (ZipFile zip = new ZipFile())
        {
            zip.AddFiles(filename,"Articles");
            zip.Save(Server.MapPath("../MagazineFiles/Magazine_Article_File.zip"));
        }
    }

    protected void btndelrej_Click(object sender, EventArgs e)
    {
        string cmd;
        cmd = "select * from Magazine where EmailID='" + txtdelrej.Text + "'";
        DataTable delrej = dm.SelectQuary(cmd);
        if (delrej.Rows.Count > 0)
        {
            cmd = "delete from Magazine where EmailID='" + txtdelrej.Text + "'";
            if (dm.ExInsertUpdateorDelete(cmd))
            {
                string path = Server.MapPath("../MagazineFiles/" + delrej.Rows[0][5].ToString());
                FileInfo fl = new FileInfo(path);
                if (fl.Exists)
                {
                    fl.Delete();
                }
                Response.Write("<script>alert('Data Deleted successfully. Reload list to update.')</script>");
                txtdelrej.Text = "";
            }
            else
            {
                Response.Write("<script>alert('something went wrong.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Email ID.')</script>");
        }
    }
}