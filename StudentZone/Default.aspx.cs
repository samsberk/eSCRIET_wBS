using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

public partial class StudentZone_Default : System.Web.UI.Page
{
    string cmd, fn, tem;
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + Session["emailid"] + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if (dt.Rows.Count > 0)
        {
            u1lbl.Text = "" + dt.Rows[0][1];
            uemaillbl.Text = "" + dt.Rows[0][0];
            uiplbl.Text = Dns.GetHostByName(Dns.GetHostName()).AddressList[0].ToString();
            lastloginlbl.Text = "" + dt.Rows[0][11];
            cmd = "select * from Magazine where EmailID='" + Session["emailid"] + "'";
            DataTable dmag = dm.SelectQuary(cmd);
            if (dmag.Rows.Count > 0)
            {
                magfile.Style.Add("display", "none");
                magbox.Controls.Add(new Literal { Text = "<div class='alert alert-info' id='alert-already'>You have <b>successfully submitted</b> your article. You can not able to upload again. If your article file corrupted, duplicate or unnecessary then contact to development team or send your feedback.</div><br /><a href=../MagazineFiles/" + dmag.Rows[0][5].ToString() + " target='_blank' class='btn btn-success'>View your submitted article file</a>" });
            }
        }
        else
        {
            Response.Redirect("Login");
        }

        cmd = "select * from OratorySkills where EmailID='" + Session["emailid"] + "'";
        DataTable dosk = dm.SelectQuary(cmd);
        if (dosk.Rows.Count > 0)
        {
            if (("" + dosk.Rows[0][7] == "Participated") && ("" + dosk.Rows[0][8] == "Nope") && ("" + dosk.Rows[0][9] == "Nope"))
                oslbl.Text = "Odyssey (Speech), ";
            else if (("" + dosk.Rows[0][7] == "Nope") && ("" + dosk.Rows[0][8] == "Participated") && ("" + dosk.Rows[0][9] == "Nope"))
                oslbl.Text = "Odyssey (Turncoat), ";
            else if (("" + dosk.Rows[0][7] == "Nope") && ("" + dosk.Rows[0][8] == "Nope") && ("" + dosk.Rows[0][9] == "Participated"))
                oslbl.Text = "Odyssey (Debate), ";
            else if (("" + dosk.Rows[0][7] == "Participated") && ("" + dosk.Rows[0][8] == "Participated") && ("" + dosk.Rows[0][9] == "Nope"))
                oslbl.Text = "Odyssey (Speech, Turncoat), ";
            else if (("" + dosk.Rows[0][7] == "Nope") && ("" + dosk.Rows[0][8] == "Participated") && ("" + dosk.Rows[0][9] == "Participated"))
                oslbl.Text = "Odyssey (Turncoat, Debate), ";
            else if (("" + dosk.Rows[0][7] == "Participated") && ("" + dosk.Rows[0][8] == "Nope") && ("" + dosk.Rows[0][9] == "Participated"))
                oslbl.Text = "Odyssey (Speech, Debate), ";
            else if (("" + dosk.Rows[0][7] == "Participated") && ("" + dosk.Rows[0][8] == "Participated") && ("" + dosk.Rows[0][9] == "Participated"))
                oslbl.Text = "Odyssey (ALL), ";
            else
                oslbl.Text = "";
        }
        cmd = "select * from Quiz where EmailID='" + Session["emailid"] + "'";
        DataTable dq = dm.SelectQuary(cmd);
        if (dq.Rows.Count > 0)
        {
            qlbl.Text = "Enquizitia, ";
        }
        cmd = "select * from Photography where EmailID='" + Session["emailid"] + "'";
        DataTable dpg = dm.SelectQuary(cmd);
        if (dpg.Rows.Count > 0)
        {
            pglbl.Text = "ZoomIn, ";
        }
        cmd = "select * from PPT where EmailID='" + Session["emailid"] + "'";
        DataTable dppt = dm.SelectQuary(cmd);
        if (dppt.Rows.Count > 0)
        {
            pptlbl.Text = "PPT Competition, ";
        }
        cmd = "select * from ModelMaking where EmailID='" + Session["emailid"] + "'";
        DataTable dmm = dm.SelectQuary(cmd);
        if (dmm.Rows.Count > 0)
        {
            mmlbl.Text = "Modek Battlefield, ";
        }
        cmd = "select * from NFS where EmailID='" + Session["emailid"] + "'";
        DataTable dnfs = dm.SelectQuary(cmd);
        if (dnfs.Rows.Count > 0)
        {
            nfslbl.Text = "Lantastic (NFS), ";
        }

        //*******************
        //Lan gaming section
        //********************

        cmd = "select * from TreasureHunt where EmailID='" + Session["emailid"] + "'";
        DataTable dth = dm.SelectQuary(cmd);
        if (dth.Rows.Count > 0)
        {
            thlbl.Text = "Treasure Hunt, ";
        }
        cmd = "select * from DocumentaryVideos where EmailID='" + Session["emailid"] + "'";
        DataTable ddv = dm.SelectQuary(cmd);
        if (ddv.Rows.Count > 0)
        {
            dvlbl.Text = "Cineasta, ";
        }
        cmd = "select * from CodeHunt where EmailID='" + Session["emailid"] + "'";
        DataTable dch = dm.SelectQuary(cmd);
        if (dch.Rows.Count > 0)
        {
            chlbl.Text = "Code Hunt, ";
        }
        cmd = "select * from ArtAttack where EmailID='" + Session["emailid"] + "'";
        DataTable daa = dm.SelectQuary(cmd);
        if (daa.Rows.Count > 0)
        {
            if ("" + daa.Rows[0][7] == "Participated" && "" + daa.Rows[0][8] == "Nope" && "" + daa.Rows[0][9] == "Nope" && "" + daa.Rows[0][10] == "Nope")
                aalbl.Text = "Art Attack (Sketching), ";
            else if ("" + daa.Rows[0][7] == "Nope" && "" + daa.Rows[0][8] == "Participated" && "" + daa.Rows[0][9] == "Nope" && "" + daa.Rows[0][10] == "Nope")
                aalbl.Text = "Art Attack (Best out of Waste), ";
            else if ("" + daa.Rows[0][7] == "Nope" && "" + daa.Rows[0][8] == "Nope" && "" + daa.Rows[0][9] == "Participated" && "" + daa.Rows[0][10] == "Nope")
                aalbl.Text = "Art Attack (Face Painting), ";
            else if ("" + daa.Rows[0][7] == "Nope" && "" + daa.Rows[0][8] == "Nope" && "" + daa.Rows[0][9] == "Nope" && "" + daa.Rows[0][10] == "Participated")
                aalbl.Text = "Art Attack (Rangoli), ";
            else if ("" + daa.Rows[0][7] == "Participated" && "" + daa.Rows[0][8] == "Participated" && "" + daa.Rows[0][9] == "Nope" && "" + daa.Rows[0][10] == "Nope")
                aalbl.Text = "Art Attack (Sketching, Best out of Waste), ";
            else if ("" + daa.Rows[0][7] == "Participated" && "" + daa.Rows[0][8] == "Nope" && "" + daa.Rows[0][9] == "Participated" && "" + daa.Rows[0][10] == "Nope")
                aalbl.Text = "Art Attack (Sketching, Face Painting), ";
            else if ("" + daa.Rows[0][7] == "Participated" && "" + daa.Rows[0][8] == "Nope" && "" + daa.Rows[0][9] == "Nope" && "" + daa.Rows[0][10] == "Participated")
                aalbl.Text = "Art Attack (Sketching, Rangoli), ";
            else if ("" + daa.Rows[0][7] == "Nope" && "" + daa.Rows[0][8] == "Participated" && "" + daa.Rows[0][9] == "Participated" && "" + daa.Rows[0][10] == "Nope")
                aalbl.Text = "Art Attack (Best out of Waste, Face Painting), ";
            else if ("" + daa.Rows[0][7] == "Nope" && "" + daa.Rows[0][8] == "Participated" && "" + daa.Rows[0][9] == "Nope" && "" + daa.Rows[0][10] == "Participated")
                aalbl.Text = "Art Attack (Best out of Waste, Rangoli), ";
            else if ("" + daa.Rows[0][7] == "Nope" && "" + daa.Rows[0][8] == "Nope" && "" + daa.Rows[0][9] == "Participated" && "" + daa.Rows[0][10] == "Participated")
                aalbl.Text = "Art Attack (Face Painting, Rangoli), ";
            else if ("" + daa.Rows[0][7] == "Participated" && "" + daa.Rows[0][8] == "Participated" && "" + daa.Rows[0][9] == "Participated" && "" + daa.Rows[0][10] == "Participated")
                aalbl.Text = "Art Attack (ALL), ";
            else
                oslbl.Text = "";
        }
        cmd = "select * from Poetry where EmailID='" + Session["emailid"] + "'";
        DataTable dpo = dm.SelectQuary(cmd);
        if (dpo.Rows.Count > 0)
        {
            if ("" + dpo.Rows[0][7] == "Participated" && "" + dpo.Rows[0][8] == "Nope")
                plbl.Text = "Sukhanvar (Self Written), ";
            else if ("" + dpo.Rows[0][7] == "Nope" && "" + dpo.Rows[0][8] == "Participated")
                plbl.Text = "Sukhanvar (Famous Poet's), ";
            else if ("" + dpo.Rows[0][7] == "Participated" && "" + dpo.Rows[0][8] == "Participated")
                plbl.Text = "Sukhanvar (ALL), ";
            else
                plbl.Text = "";
        }
        cmd = "select * from WritingSkills where EmailID='" + Session["emailid"] + "'";
        DataTable dws = dm.SelectQuary(cmd);
        if (dws.Rows.Count > 0)
        {
            if ("" + dws.Rows[0][7] == "Participated" && "" + dws.Rows[0][8] == "Nope" && "" + dws.Rows[0][9] == "Nope")
                wslbl.Text = "Lekha (Poetry), ";
            else if ("" + dws.Rows[0][7] == "Nope" && "" + dws.Rows[0][8] == "Participated" && "" + dws.Rows[0][9] == "Nope")
                wslbl.Text = "Lekha (Article), ";
            else if ("" + dws.Rows[0][7] == "Nope" && "" + dws.Rows[0][8] == "Nope" && "" + dws.Rows[0][9] == "Participated")
                wslbl.Text = "Lekha (Drama), ";
            else if ("" + dws.Rows[0][7] == "Participated" && "" + dws.Rows[0][8] == "Participated" && "" + dws.Rows[0][9] == "Nope")
                wslbl.Text = "Lekha (Poetry, Article), ";
            else if ("" + dws.Rows[0][7] == "Nope" && "" + dws.Rows[0][8] == "Participated" && "" + dws.Rows[0][9] == "Participated")
                wslbl.Text = "Lekha (Article, Drama), ";
            else if ("" + dws.Rows[0][7] == "Participated" && "" + dws.Rows[0][8] == "Nope" && "" + dws.Rows[0][9] == "Participated")
                wslbl.Text = "Lekha (Poetry, Drama), ";
            else if ("" + dws.Rows[0][7] == "Participated" && "" + dws.Rows[0][8] == "Participated" && "" + dws.Rows[0][9] == "Participated")
                wslbl.Text = "Lekha (ALL), ";
            else
                wslbl.Text = "";
        }
        cmd = "select * from minimilitia where EmailID='" + Session["emailid"] + "'";
        DataTable dmi = dm.SelectQuary(cmd);
        if (dmi.Rows.Count > 0)
        {
            mlbl.Text = "Minimilitia.";
        }
        if (oslbl.Text == "" && qlbl.Text == "" && pglbl.Text == "" && pptlbl.Text == "" && mmlbl.Text == "" && nfslbl.Text == "" && thlbl.Text == "" && dvlbl.Text == "" && chlbl.Text == "" && rrlbl.Text == "" && aalbl.Text == "" && plbl.Text == "" && wslbl.Text == "" && mlbl.Text == "")
        {
            emptylbl.Text = "&emsp;&emsp;You have not Applied for any event. Select any event in \"Apply for Event\" section and click on \"Apply\" button to apply for that event.";
        }
        if (oslbl.Text != "" && qlbl.Text != "" && pglbl.Text != "" && pptlbl.Text != "" && mmlbl.Text != "" && nfslbl.Text != "" && thlbl.Text != "" && dvlbl.Text != "" && chlbl.Text != "" && rrlbl.Text != "" && aalbl.Text != "" && plbl.Text != "" && wslbl.Text != "" && mlbl.Text != "")
        {
            fullbl.Text = "You are Applied for ALL events.";
        }
    }
    //--------------------------------------------------------------------registration for events-------------------------------------------------------------------
    //**************************************************************************************************************************************************************

    protected void subregevbtn_Click(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + Session["emailid"] + "'";
        DataTable ds = dm.SelectQuary(cmd);
        fn = "" + ds.Rows[0][1] + " " + ds.Rows[0][2];
        if (regevdrpdwn.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select any event for apply.')</script>");
        }
        else
        {
            if (regevdrpdwn.SelectedValue == "Odyssey (ALL)")
            {
                cmd = "select * from OratorySkills where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Odyssey.')</script>");
                }
                else
                {
                    tem = "Participated";
                    cmd = "insert into OratorySkills values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "','" + tem + "','" + tem + "','" + tem + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Enquizitia")
            {
                cmd = "select * from Quiz where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Enquizitia.')</script>");
                }
                else
                {
                    cmd = "insert into Quiz values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "ZoomIn")
            {
                cmd = "select * from Photography where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in ZoomIn.')</script>");
                }
                else
                {
                    cmd = "insert into Photography values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "PPT Competition")
            {
                cmd = "select * from PPT where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in PPT Competition.')</script>");
                }
                else
                {
                    cmd = "insert into PPT values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Modek Battlefield")
            {
                cmd = "select * from ModelMaking where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Modek Battlefield.')</script>");
                }
                else
                {
                    cmd = "insert into ModelMaking values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Lantastic (NFS)")
            {
                cmd = "select * from NFS where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in NFS Most Wanted.')</script>");
                }
                else
                {
                    cmd = "insert into NFS values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Treasure Hunt")
            {
                cmd = "select * from TreasureHunt where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Treasure Hunt.')</script>");
                }
                else
                {
                    cmd = "insert into TreasureHunt values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Cineasta")
            {
                cmd = "select * from DocumentaryVideos where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Cineasta.')</script>");
                }
                else
                {
                    cmd = "insert into DocumentaryVideos values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Code Hunt")
            {
                cmd = "select * from CodeHunt where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Code Hunt.')</script>");
                }
                else
                {
                    cmd = "insert into CodeHunt values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Art Attack (ALL)")
            {
                cmd = "select * from ArtAttack where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Art Attack.')</script>");
                }
                else
                {
                    tem = "Participated";
                    cmd = "insert into ArtAttack values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "','" + tem + "','" + tem + "','" + tem + "','" + tem + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Sukhanvar (ALL)")
            {
                cmd = "select * from Poetry where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Sukhanvar.')</script>");
                }
                else
                {
                    tem = "Participated";
                    cmd = "insert into Poetry values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "','" + tem + "','" + tem + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Lekha (ALL)")
            {
                cmd = "select * from WritingSkills where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Lekha.')</script>");
                }
                else
                {
                    tem = "Participated";
                    cmd = "insert into WritingSkills values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "','" + tem + "','" + tem + "','" + tem + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
            else if (regevdrpdwn.SelectedValue == "Minimilitia")
            {
                cmd = "select * from Minimilitia where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already Registered in Minimilitia.')</script>");
                }
                else
                {
                    cmd = "insert into Minimilitia values('" + ds.Rows[0][0] + "','" + fn + "','" + ds.Rows[0][5] + "','" + ds.Rows[0][6] + "','" + ds.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
            }
        }
    }


    //**********************************************************************De registration************************************************************
    //*************************************************************************************************************************************************



    protected void subderegevbtn_Click(object sender, EventArgs e)
    {
        if (deregevdrpdwn.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select any event for cancel Your Application for that event.')</script>");
        }
        else
        {
            if (deregevdrpdwn.SelectedValue == "Odyssey (ALL)")
            {
                cmd = "select * from OratorySkills where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from OratorySkills where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Odyssey.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Enquizitia")
            {
                cmd = "select * from Quiz where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Quiz where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Enquizitia.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "ZoomIn")
            {
                cmd = "select * from Photography where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Photography where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for ZoomIn.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "PPT Competition")
            {
                cmd = "select * from PPT where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from PPT where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for PPT Competition.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Modek Battlefield")
            {
                cmd = "select * from ModelMaking where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from ModelMaking where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Modek Battlefield.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Lantastic (NFS)")
            {
                cmd = "select * from NFS where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from NFS where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for NFS Most Wanted.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Treasure Hunt")
            {
                cmd = "select * from TreasureHunt where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from TreasureHunt where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Treasure Hunt.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Cineasta")
            {
                cmd = "select * from DocumentaryVideos where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from DocumentaryVideos where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Cineasta.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Code Hunt")
            {
                cmd = "select * from CodeHunt where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from CodeHunt where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Code Hunt.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Art Attack (ALL)")
            {
                cmd = "select * from ArtAttack where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from ArtAttack where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Art Attack.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Sukhanvar (ALL)")
            {
                cmd = "select * from Poetry where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Poetry where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Sukhanvar.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Lekha (ALL)")
            {
                cmd = "select * from WritingSkills where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from WritingSkills where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Lekha.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Minimilitia")
            {
                cmd = "select * from Minimilitia where EmailID='" + Session["emailid"] + "'";
                DataTable dst = dm.SelectQuary(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Minimilitia where EmailID='" + Session["emailid"] + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Minimilitia.')</script>");
                }
            }
        }
    }

    protected void subquerybtn_Click(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + Session["emailid"] + "'";
        DataTable ds = dm.SelectQuary(cmd);
        fn = "" + ds.Rows[0][1] + " " + ds.Rows[0][2];
        if (querytxt.Text == "")
            Response.Write("<script>alert('Please Enter your Query.')</script>");
        else
        {
            cmd = "insert into Query(Name,EmailID,Query,QDate,ClgName) values('" + fn + "','" + ds.Rows[0][0] + "','" + querytxt.Text.ToString() + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
            if (dm.ExInsertUpdateorDelete(cmd) == true)
            {
                Response.Write("<script>alert('Send Successfully')</script>");
                querytxt.Text = "";
            }
            else
                Response.Write("<script>alert('Something went wrong, please try again. Thank You.')</script>");
        }
    }

    protected void subfdbkbtn_Click(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + Session["emailid"] + "'";
        DataTable ds = dm.SelectQuary(cmd);
        fn = "" + ds.Rows[0][1] + " " + ds.Rows[0][2];
        if (fdbktxt.Text == "")
            Response.Write("<script>alert('Please Enter your Feedback.')</script>");
        else
        {
            cmd = "insert into Feedback(Name,EmailID,Feedback,FDate,ClgName) values('" + fn + "','" + ds.Rows[0][0] + "','" + fdbktxt.Text.ToString() + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
            if (dm.ExInsertUpdateorDelete(cmd) == true)
            {
                Response.Write("<script>alert('Send Successfully')</script>");
                fdbktxt.Text = "";
            }
            else
                Response.Write("<script>alert('Something went wrong, please try again. Thank You.')</script>");
        }
    }

    protected void btnmagfile_Click(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + Session["emailid"] + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if(dt.Rows.Count>0)
        {
            string name = dt.Rows[0][1].ToString() + " " + dt.Rows[0][2].ToString();
            cmd = "insert into Magazine values('" + dt.Rows[0][0].ToString() + "','" + name + "','" + dt.Rows[0][5].ToString() + "','" + dt.Rows[0][6].ToString() + "','" + dt.Rows[0][7].ToString() + "','" + dt.Rows[0][0].ToString() + "_" + magfile.FileName + "','" + DateTime.Now.ToString() + "')";
            if(dm.ExInsertUpdateorDelete(cmd))
            {
                magfile.SaveAs(Server.MapPath("../MagazineFiles/" + dt.Rows[0][0].ToString() + "_" + magfile.FileName));
                Response.Redirect("Student_Home");
            }
            else
            {
                Response.Write("<script>alert('Something went wrong, please try again. Thank You.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Unauthorized access.')</script>");
        }
        
    }

	protected void subgnaek_Click(object sender, EventArgs e)
	{
		cmd = "select * from gnaek where EmailID='" + Session["emailid"] + "'";
		DataTable dtgn = dm.SelectQuary(cmd);
		if(dtgn.Rows.Count>0)
		{
			Response.Write("<script>alert('You are Already Participated.')</script>");
		}
		else
		{
			cmd = "insert into gnaek values('" + Session["emailid"].ToString() + "','" + poettxt.SelectedValue.ToString() + "','" + singtxt.SelectedValue.ToString() + "','" + dancetxt.SelectedValue.ToString() + "','" + insttxt.SelectedValue.ToString() + "','" + dramatxt.SelectedValue.ToString() + "')";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				Response.Write("<script>alert('Participation Successfully Submitted.')</script>");
				agrchkbx.Checked = false;
				poettxt.ClearSelection();
				singtxt.ClearSelection();
				dancetxt.ClearSelection();
				insttxt.ClearSelection();
				dramatxt.ClearSelection();
			}
			else
			{
				Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
				agrchkbx.Checked = false;
				poettxt.ClearSelection();
				singtxt.ClearSelection();
				dancetxt.ClearSelection();
				insttxt.ClearSelection();
				dramatxt.ClearSelection();
			}
		}
	}
}