using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Events : System.Web.UI.Page
{
    string scmd, sscmd, icmd, pas, fn;
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Participation has been closed.')</script>");
    }

    protected void regoskills_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");
        /*if (chboskills.Checked == true)
        {
            if (spchoschbox.Checked == false && trnctoschbox.Checked == false && mdadoschbox.Checked == false)
            {
                Response.Write("<script>alert('Please Check the event box which you want to choose.')</script>");
            }
            else
            {
                string spch = "Nope", trnct = "Nope", mdad="Nope";
                if (spchoschbox.Checked == true)
                    spch = "Participated";
                if (trnctoschbox.Checked == true)
                    trnct = "Participated";
                if (mdadoschbox.Checked == true)
                    mdad = "Paricipated";                
                pas = em.EncryptMyData(ptoskills.Text);
                scmd = "select * from Registration where EmailID='" + etoskills.Text.ToString().ToLower() + "' and Password='" + pas + "'";
                DataTable dt = dm.SelectQuary(scmd);
                if (dt.Rows.Count > 0)
                {
                    sscmd = "select * from OratorySkills where EmailID='" + etoskills.Text + "'";
                    DataTable dc = dm.SelectQuary(sscmd);
                    if (dc.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                    }
                    else
                    {
                        fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                        icmd = "insert into OratorySkills values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "','" + spch + "','" + trnct + "','" + mdad + "')";
                        if (dm.ExInsertUpdateorDelete(icmd) == true)
                            Response.Write("<script>alert('You have successfully applied for Odyssey, Thank You.')</script>");
                        else
                            Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                        etoskills.Text = "";
                        ptoskills.Text = "";
                        chboskills.Checked = false;
                        spchoschbox.Checked = false;
                        trnctoschbox.Checked = false;
                        mdadoschbox.Checked = false;
                    }

                }
                else
                {
                    Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regquiz_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");
        /*if (chbquiz.Checked == true)
        {
            pas = em.EncryptMyData(ptquiz.Text);
            scmd = "select * from Registration where EmailID='" + etquiz.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from Quiz where EmailID='" + etquiz.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into Quiz values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for Enquizitia, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etquiz.Text = "";
                    ptquiz.Text = "";
                    chbquiz.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regpgraphy_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");
        /*if (chbpgraphy.Checked == true)
        {
            pas = em.EncryptMyData(ptpgraphy.Text);
            scmd = "select * from Registration where EmailID='" + etpgraphy.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from Photography where EmailID='" + etpgraphy.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into Photography values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for ZoomIn, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etpgraphy.Text = "";
                    ptpgraphy.Text = "";
                    chbpgraphy.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regppt_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");
        /*if (chbppt.Checked == true)
        {
            pas = em.EncryptMyData(ptppt.Text);
            scmd = "select * from Registration where EmailID='" + etppt.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from PPT where EmailID='" + etppt.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into PPT values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for Modek Battlefield, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etppt.Text = "";
                    ptppt.Text = "";
                    chbppt.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regmmaking_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");
        /*if (chbmmaking.Checked == true)
        {
            pas = em.EncryptMyData(ptmmaking.Text);
            scmd = "select * from Registration where EmailID='" + etmmaking.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from ModelMaking where EmailID='" + etmmaking.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into ModelMaking values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for Model Making, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etmmaking.Text = "";
                    ptmmaking.Text = "";
                    chbmmaking.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void reglang_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        if (chblang.Checked == true)
        {
            pas = em.EncryptMyData(ptlang.Text);
            scmd = "select * from Registration where EmailID='" + etlang.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from NFS where EmailID='" + etlang.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into NFS values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for NFS Most Wanted, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etlang.Text = "";
                    ptlang.Text = "";
                    chblang.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regcslang_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        if(chbcslang.Checked==true)
        {
            if (ecapt.Text == "" || eptwt.Text == "" || eptht.Text == "" || epfrt.Text == "" || epfvt.Text == "")
                Response.Write("<script>alert('You must enter all the player's Email ID, which is registered. Fill the all 5 Player's Email ID.')</script>");
            else if (ecapt.Text == eptwt.Text || ecapt.Text == eptht.Text || ecapt.Text == epfrt.Text || ecapt.Text == epfvt.Text || eptwt.Text == eptht.Text || eptwt.Text == epfrt.Text || eptht.Text == epfvt.Text || eptht.Text == epfrt.Text || eptht.Text == epfvt.Text || epfrt.Text == epfvt.Text)
                Response.Write("<script>alert('Every Player must be indivisual. You cann't add one player two times.')</script>");
            else
            {
                pas = em.EncryptMyData(pcscapt.Text);
                scmd = "select * from Registration where EmailID='" + ecapt.Text + "'";
                DataTable dtcap = dm.SelectQuary(scmd);
                if (dtcap.Rows.Count > 0)
                {
                    scmd = "select * from Registration where EmailID='" + eptwt.Text + "'";
                    DataTable dtptw = dm.SelectQuary(scmd);
                    if (dtptw.Rows.Count > 0)
                    {
                        scmd = "select * from Registration where EmailID='" + eptht.Text + "'";
                        DataTable dtpth = dm.SelectQuary(scmd);
                        if (dtpth.Rows.Count > 0)
                        {
                            scmd = "select * from Registration where EmailID='" + epfrt.Text + "'";
                            DataTable dtpfr = dm.SelectQuary(scmd);
                            if (dtpfr.Rows.Count > 0)
                            {
                                scmd = "select * from Registration where EmailID='" + epfvt.Text + "'";
                                DataTable dtpfv = dm.SelectQuary(scmd);
                                if (dtpfv.Rows.Count > 0)
                                {
                                    scmd = "select * from Registration where EmailID='" + ecapt.Text + "' and Password='" + pas + "'";
                                    DataTable dtcs = dm.SelectQuary(scmd);
                                    if (dtcs.Rows.Count > 0)
                                    {
                                        scmd = "select * from CounterStrike where EmailID='" + ecapt.Text + "' OR EmailID='" + eptwt.Text + "' OR EmailID='" + eptht.Text + "' OR EmailID='" + epfrt.Text + "' OR EmailID='" + epfvt.Text + "'";
                                        DataTable dtscs = dm.SelectQuary(scmd);
                                        if (dtscs.Rows.Count > 0)
                                            Response.Write("<script>alert('Any player of this team is/are already participated in any other team, discard him. One player must be participate in only one team.')</script>");
                                        else
                                        {
                                            fn = "" + dtcap.Rows[0][1] + " " + dtcap.Rows[0][2];
                                            sscmd = "Player 1 (Captain)";
                                            icmd = "insert into CounterStrike values('" + dtcap.Rows[0][0] + "','" + fn + "','" + dtcap.Rows[0][5] + "','" + dtcap.Rows[0][6] + "','" + dtcap.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dtcap.Rows[0][12] + "','" + sscmd + "')";
                                            bool a = dm.ExInsertUpdateorDelete(icmd);
                                            sscmd = "Player 2";
                                            fn = "" + dtptw.Rows[0][1] + " " + dtptw.Rows[0][2];
                                            icmd = "insert into CounterStrike values('" + dtptw.Rows[0][0] + "','" + fn + "','" + dtptw.Rows[0][5] + "','" + dtptw.Rows[0][6] + "','" + dtptw.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dtptw.Rows[0][12] + "','" + sscmd + "')";
                                            bool b = dm.ExInsertUpdateorDelete(icmd);
                                            sscmd = "Player 3";
                                            fn = "" + dtpth.Rows[0][1] + " " + dtpth.Rows[0][2];
                                            icmd = "insert into CounterStrike values('" + dtpth.Rows[0][0] + "','" + fn + "','" + dtpth.Rows[0][5] + "','" + dtpth.Rows[0][6] + "','" + dtpth.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dtpth.Rows[0][12] + "','" + sscmd + "')";
                                            bool c = dm.ExInsertUpdateorDelete(icmd);
                                            sscmd = "Player 4";
                                            fn = "" + dtpfr.Rows[0][1] + " " + dtpfr.Rows[0][2];
                                            icmd = "insert into CounterStrike values('" + dtpfr.Rows[0][0] + "','" + fn + "','" + dtpfr.Rows[0][5] + "','" + dtpfr.Rows[0][6] + "','" + dtpfr.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dtpfr.Rows[0][12] + "','" + sscmd + "')";
                                            bool d = dm.ExInsertUpdateorDelete(icmd);
                                            sscmd = "Player 5";
                                            fn = "" + dtpfv.Rows[0][1] + " " + dtpfv.Rows[0][2];
                                            icmd = "insert into CounterStrike values('" + dtpfv.Rows[0][0] + "','" + fn + "','" + dtpfv.Rows[0][5] + "','" + dtpfv.Rows[0][6] + "','" + dtpfv.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dtpfv.Rows[0][12] + "','" + sscmd + "')";
                                            bool eb = dm.ExInsertUpdateorDelete(icmd);
                                            if (a == true && b == true && c == true && d == true && eb == true)
                                                Response.Write("<script>alert('Your team is successfully applied for Counter Strike.')</script>");
                                            else
                                                Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                                            ecapt.Text = "";
                                            eptwt.Text = "";
                                            eptht.Text = "";
                                            epfrt.Text = "";
                                            epfvt.Text = "";
                                            chbcslang.Checked = false;
                                        }
                                    }
                                    else
                                        Response.Write("<script>alert('Incorrect Password, Enter captain's Password. First Player is Captain.')</script>");
                                }
                                else
                                    Response.Write("<script>alert('Fifth Player's Email ID is not registered.')</script>");
                            }
                            else
                                Response.Write("<script>alert('Fourth Player's Email ID is not registered.')</script>");
                        }
                        else
                            Response.Write("<script>alert('Third Player's Email ID is not registered.')</script>");
                    }
                    else
                        Response.Write("<script>alert('Second Player's Email ID is not registered.')</script>");
                }
                else
                    Response.Write("<script>alert('(Captain) First Player's Email ID is not registered.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regthunt_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        if (chbthunt.Checked == true)
        {
            pas = em.EncryptMyData(ptthunt.Text);
            scmd = "select * from Registration where EmailID='" + etthunt.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from TreasureHunt where EmailID='" + etthunt.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into TreasureHunt values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for Treasure Hunt, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etthunt.Text = "";
                    ptthunt.Text = "";
                    chbthunt.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regdvid_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        if (chbdvid.Checked == true)
        {
            pas = em.EncryptMyData(ptdvid.Text);
            scmd = "select * from Registration where EmailID='" + etdvid.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from DocumentaryVideos where EmailID='" + etdvid.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into DocumentaryVideos values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for Cineasta, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etdvid.Text = "";
                    ptdvid.Text = "";
                    chbdvid.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regch_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        if (chbch.Checked == true)
        {
            pas = em.EncryptMyData(ptch.Text);
            scmd = "select * from Registration where EmailID='" + etch.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from CodeHunt where EmailID='" + etch.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into CodeHunt values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for Code Hunt, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etch.Text = "";
                    ptch.Text = "";
                    chbch.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }

    protected void regarta_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        string sk = "Nope", bof = "Nope", fp = "Nope", rang = "Nope";
        if (chsketch.Checked == false && chboof.Checked == false && chface.Checked == false & chrangoli.Checked == false)
        {
            Response.Write("<script>alert('Please Check the event box which you want to choose.')</script>");
        }
        else
        {
            if (chbarta.Checked == true)
            {
                if (chsketch.Checked == true)
                    sk = "Participated";
                if (chboof.Checked == true)
                    bof = "Participated";
                if (chface.Checked == true)
                    fp = "Participated";
                if (chrangoli.Checked == true)
                    rang = "Participated";
                pas = em.EncryptMyData(ptarta.Text);
                scmd = "select * from Registration where EmailID='" + etarta.Text + "' and Password='" + pas + "'";
                DataTable dt = dm.SelectQuary(scmd);
                if (dt.Rows.Count > 0)
                {
                    sscmd = "select * from ArtAttack where EmailID='" + etarta.Text + "'";
                    DataTable dc = dm.SelectQuary(sscmd);
                    if (dc.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                    }
                    else
                    {
                        fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                        icmd = "insert into ArtAttack values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "','" + sk + "','" + bof + "','" + fp + "','" + rang + "')";
                        if (dm.ExInsertUpdateorDelete(icmd) == true)
                            Response.Write("<script>alert('You have successfully applied for this event, Thank You.')</script>");
                        else
                            Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                        etarta.Text = "";
                        ptarta.Text = "";
                        chbarta.Checked = false;
                    }

                }
                else
                {
                    Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
            }
        }*/
    }

    protected void regpoet_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        string sw = "Nope", fp = "Nope";
        if (chsw.Checked == false && chfp.Checked == false)
        {
            Response.Write("<script>alert('Please Check the event box which you want to choose.')</script>");
        }
        else
        {
            if (chbpoet.Checked == true)
            {
                if (chsw.Checked == true)
                    sw = "Participated";
                if (chfp.Checked == true)
                    fp = "Participated";
                pas = em.EncryptMyData(ptpoet.Text);
                scmd = "select * from Registration where EmailID='" + etpoet.Text + "' and Password='" + pas + "'";
                DataTable dt = dm.SelectQuary(scmd);
                if (dt.Rows.Count > 0)
                {
                    sscmd = "select * from Poetry where EmailID='" + etpoet.Text + "'";
                    DataTable dc = dm.SelectQuary(sscmd);
                    if (dc.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                    }
                    else
                    {
                        fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                        icmd = "insert into Poetry values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "','" + sw + "','" + fp + "')";
                        if (dm.ExInsertUpdateorDelete(icmd) == true)
                            Response.Write("<script>alert('You have successfully applied for Sukhanvar, Thank You.')</script>");
                        else
                            Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                        etpoet.Text = "";
                        ptpoet.Text = "";
                        chbpoet.Checked = false;
                    }

                }
                else
                {
                    Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
            }
        }*/
    }

    protected void regwskills_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        string p = "Nope", a = "Nope", d = "Nope";
        if (poetch.Checked == false && artich.Checked == false && dramach.Checked == false)
        {
            Response.Write("<script>alert('Please Check the event box which you want to choose.')</script>");
        }
        else
        {
            if (chwskills.Checked == true)
            {
                if (poetch.Checked == true)
                    p = "Participated";
                if (artich.Checked == true)
                    a = "Participated";
                if (dramach.Checked == true)
                    a = "Participated";
                pas = em.EncryptMyData(ptwskills.Text);
                scmd = "select * from Registration where EmailID='" + etwskills.Text + "' and Password='" + pas + "'";
                DataTable dt = dm.SelectQuary(scmd);
                if (dt.Rows.Count > 0)
                {
                    sscmd = "select * from WritingSkills where EmailID='" + etwskills.Text + "'";
                    DataTable dc = dm.SelectQuary(sscmd);
                    if (dc.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                    }
                    else
                    {
                        fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                        icmd = "insert into WritingSkills values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "','" + p + "','" + a + "','" + d + "')";
                        if (dm.ExInsertUpdateorDelete(icmd) == true)
                            Response.Write("<script>alert('You have successfully applied for Writing Skills, Thank You.')</script>");
                        else
                            Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                        etwskills.Text = "";
                        ptwskills.Text = "";
                        chwskills.Checked = false;
                    }

                }
                else
                {
                    Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
            }
        }*/
    }

    protected void regminim_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Couldn't not apply, because Participation has been closed.')</script>");/*
        if (chbminim.Checked == true)
        {
            pas = em.EncryptMyData(ptminim.Text);
            scmd = "select * from Registration where EmailID='" + etminim.Text + "' and Password='" + pas + "'";
            DataTable dt = dm.SelectQuary(scmd);
            if (dt.Rows.Count > 0)
            {
                sscmd = "select * from Minimilitia where EmailID='" + etminim.Text + "'";
                DataTable dc = dm.SelectQuary(sscmd);
                if (dc.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Already applied for this event, Thank You.')</script>");
                }
                else
                {
                    fn = "" + dt.Rows[0][1] + " " + dt.Rows[0][2];
                    icmd = "insert into Minimilitia values('" + dt.Rows[0][0] + "','" + fn + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][6] + "','" + dt.Rows[0][7] + "','" + DateTime.Now.ToString() + "','" + dt.Rows[0][12] + "')";
                    if (dm.ExInsertUpdateorDelete(icmd) == true)
                        Response.Write("<script>alert('You have successfully applied for Minimilitia, Thank You.')</script>");
                    else
                        Response.Write("<script>alert('something went wrong, Please try again.')</script>");
                    etminim.Text = "";
                    ptminim.Text = "";
                    chbminim.Checked = false;
                }

            }
            else
            {
                Response.Write("<script>alert('Either Email_ID not registered, or incorrect password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Read the Rules and then check the box before apply.')</script>");
        }*/
    }
}