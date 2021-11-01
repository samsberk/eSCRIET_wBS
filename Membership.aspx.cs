using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Membership : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionDecryption ep = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void subregbtn_Click(object sender, EventArgs e)
    {
        if (malerbtn.Checked == false && femalerbtn.Checked == false)
        {
            Response.Write("<script>alert('Please select your Gender.')</script>");
        }
        else
        {
            if (agreechbox.Checked == true)
            {
                string cmd1, gen;
                if (malerbtn.Checked == true)
                    gen = "Male";
                else
                    gen = "Female";
                cmd1 = "select * from Membership where EmailID='" + emailtxt.Text + "'";
                DataTable dt = dm.SelectQuary(cmd1);
                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('You are already member of CVGClub.')</script>");
                    emailtxt.Text = "";                    
                }
                else
                {
                    cmd1 = "insert into Membership values('" + emailtxt.Text.ToString() + "','" + fnametxt.Text.ToUpper() + "','" + lnametxt.Text.ToUpper() + "','" + dobtxt.Text.ToString() + "','" + gen + "','" + branchdrpdwn.SelectedValue + "','" + year.SelectedValue + "','" + contacttxt.Text.ToString() + "','" + DateTime.Now.ToString() + "')";
                    bool x = dm.ExInsertUpdateorDelete(cmd1);
                    if (x == true)
                    {
                        Response.Write("<script>alert('Registration Successful')</script>");
                        emailtxt.Text = "";
                        fnametxt.Text = "";
                        lnametxt.Text = "";
                        dobtxt.Text = "";
                        gen = "";
                        branchdrpdwn.ClearSelection();
                        year.ClearSelection();
                        contacttxt.Text = "";
                        agreechbox.Checked = false;
                        year.SelectedValue = "";
                        malerbtn.Checked = false;
                        femalerbtn.Checked = false;
                    }
                    else
                        Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
                }
            }
        }
    }
}