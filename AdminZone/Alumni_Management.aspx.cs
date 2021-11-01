using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


public partial class AdminZone_Alumni_Management : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cmd, st = "";
        int x, y;
        cmd = "select * from Admin where AdminID='" + Session["adminid"] + "'";
        DataTable dta = dm.SelectQuary(cmd);
        if (dta.Rows.Count > 0)
        {
            cmd = "select * from Alumni";
            DataTable dast = dm.SelectQuary(cmd);
            if (dast.Rows.Count > 0)
            {
                totno.Text = dast.Rows.Count.ToString();
                for (x = 0, y = 1; x < dast.Rows.Count; x++, y++)
                {
                    if ("" + dast.Rows[x][12] != "Not Verified")
                        allstu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td style='color:green;font-weight:bold;'><a style='color:inherit;' href='Alumni_Details?EmailID="+ dast.Rows[x][0] + "'>" + dast.Rows[x][0] + "</a></td><td>" + dast.Rows[x][1] + "</td><td>" + dast.Rows[x][2] + "</td><td>" + dast.Rows[x][3] + "</td><td style='color:green;font-weight:bold;'>" + dast.Rows[x][12] + "</td></tr>" });
                    else
                        allstu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td style='color:orange;font-weight:bold;'><a style='color:inherit;' href='Alumni_Details?EmailID=" + dast.Rows[x][0] + "'>" + dast.Rows[x][0] + "</td><td>" + dast.Rows[x][1] + "</td><td>" + dast.Rows[x][2] + "</td><td>" + dast.Rows[x][3] + "</td><td style='color:Orange;font-weight:bold;'>" + dast.Rows[x][12] + "</td></tr>" });
                }
            }
            else
                allstu.Controls.Add(new Literal() { Text = "<tr><td colspan='6'><b>No Registration found</b></td></tr>" });
            st = "Verified";
            cmd = "select * from Alumni where Verification='" + st + "'";
            DataTable dvst = dm.SelectQuary(cmd);
            if (dvst.Rows.Count > 0)
            {
                for (x = 0, y = 1; x < dvst.Rows.Count; x++, y++)
                {
                    varstu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td><a style='color:inherit;' href='Alumni_Details?EmailID=" + dvst.Rows[x][0] + "'>" + dvst.Rows[x][0] + "</td><td>" + dvst.Rows[x][1] + "</td><td>" + dvst.Rows[x][2] + "</td><td>" + dvst.Rows[x][3] + "</td><td style='background:green;color:white;font-weight:bold;'>" + dvst.Rows[x][12] + "</td></tr>" });
                }
            }
            else
                varstu.Controls.Add(new Literal() { Text = "<tr><td colspan='6'><b>No Varified Registration found</b></td></tr>" });
            st = "Not Verified";
            cmd = "select * from Alumni where Verification='" + st + "'";
            DataTable dnvst = dm.SelectQuary(cmd);
            if (dnvst.Rows.Count > 0)
            {
                for (x = 0, y = 1; x < dnvst.Rows.Count; x++, y++)
                {
                    nvarstu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td><a style='color:inherit;' href='Alumni_Details?EmailID=" + dnvst.Rows[x][0] + "'>" + dnvst.Rows[x][0] + "</td><td>" + dnvst.Rows[x][1] + "</td><td>" + dnvst.Rows[x][2] + "</td><td>" + dnvst.Rows[x][3] + "</td><td style='background:orange;color:white;font-weight:bold;'>" + dnvst.Rows[x][12] + "</td></tr>" });
                }
            }
            else
                nvarstu.Controls.Add(new Literal() { Text = "<tr><td colspan='6'><b>No Un-Varified Registration found</b></td></tr>" });
            cmd = "select * from RejAlumni";
            DataTable drej = dm.SelectQuary(cmd);
            if (drej.Rows.Count > 0)
            {
                rejtot.Text = drej.Rows.Count.ToString();
                for (x = 0, y = 1; x < drej.Rows.Count; x++, y++)
                {
                    rejstu.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td><a style='color:inherit;' href='Alumni_Details?EmailID=" + drej.Rows[x][0] + "'>" + drej.Rows[x][0] + "</td><td>" + drej.Rows[x][1] + "</td><td>" + drej.Rows[x][2] + "</td><td>" + drej.Rows[x][3] + "</td><td style='background:red;color:white;font-weight:bold;'>" + drej.Rows[x][12] + "</td></tr>" });
                }
            }
            else
                rejstu.Controls.Add(new Literal() { Text = "<tr><td colspan='6'><b>No Rejected Registration found</b></td></tr>" });
        }
        else
            Response.Redirect("AdminZone_Home");
    }
    
    protected void btndelrej_Click(object sender, EventArgs e)
    {
        string cmd;
        cmd = "select * from RejAlumni where EmailID='" + txtdelrej.Text.ToLower().ToString() + "'";
        DataTable delrej = dm.SelectQuary(cmd);
        if (delrej.Rows.Count > 0)
        {
            cmd = "delete from RejAlumni where EmailID='" + txtdelrej.Text.ToLower().ToString() + "'";
            if (dm.ExInsertUpdateorDelete(cmd))
            {
                string path = Server.MapPath("~/Images/AlumniPics/" + delrej.Rows[0][8].ToString());
                FileInfo file = new FileInfo(path);
                if(file.Exists)
                {
                    file.Delete();
                }
                else
                    Response.Write("<script>alert('Picture does not exist.')</script>");
                Response.Write("<script>alert('Data Deleted successfully.')</script>");
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