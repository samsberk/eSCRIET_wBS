using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_AdminHome : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        string scmd, t="Participated";
        scmd = "select * from Registration";
        DataTable dt = dm.SelectQuary(scmd);
        regno.Text = "" + dt.Rows.Count;
        scmd = "select * from OratorySkills";
        DataTable dos = dm.SelectQuary(scmd);
        osno.Text = "" + dos.Rows.Count;
        scmd = "select * from OratorySkills where Speech='" + t + "'";
        DataTable dspchos = dm.SelectQuary(scmd);
        spchosno.Text = "" + dspchos.Rows.Count;
        scmd = "select * from OratorySkills where Turncoat='" + t + "'";
        DataTable dtrnctos = dm.SelectQuary(scmd);
        trnctosno.Text = "" + dtrnctos.Rows.Count;
        scmd = "select * from OratorySkills where Debate='" + t + "'";
        DataTable dmdados = dm.SelectQuary(scmd);
        mdadosno.Text = "" + dmdados.Rows.Count;
        scmd = "select * from Quiz";
        DataTable dq = dm.SelectQuary(scmd);
        qno.Text = "" + dq.Rows.Count;
        scmd = "select * from Photography";
        DataTable dpg = dm.SelectQuary(scmd);
        pgrno.Text = "" + dpg.Rows.Count;
        scmd = "select * from PPT";
        DataTable dppt = dm.SelectQuary(scmd);
        pptno.Text = "" + dppt.Rows.Count;
        scmd = "select * from ModelMaking";
        DataTable dmm = dm.SelectQuary(scmd);
        mmno.Text = "" + dmm.Rows.Count;
        scmd = "select * from NFS";
        DataTable dnfs = dm.SelectQuary(scmd);
        lannfsno.Text = "" + dnfs.Rows.Count;
        scmd = "select * from CounterStrike";
        DataTable dcslan = dm.SelectQuary(scmd);
        lancsno.Text = "" + dcslan.Rows.Count;
        scmd = "select * from TreasureHunt";
        DataTable dth = dm.SelectQuary(scmd);
        thno.Text = "" + dth.Rows.Count;
        scmd = "select * from DocumentaryVideos";
        DataTable ddv = dm.SelectQuary(scmd);
        dvno.Text = "" + ddv.Rows.Count;
        scmd = "select * from CodeHunt";
        DataTable dch = dm.SelectQuary(scmd);
        chno.Text = "" + dch.Rows.Count;
        scmd = "select * from ArtAttack";
        DataTable daa = dm.SelectQuary(scmd);
        aano.Text = "" + daa.Rows.Count;
        scmd = "select * from ArtAttack where Sketching='" + t + "'";
        DataTable daask = dm.SelectQuary(scmd);
        skaano.Text = "" + daask.Rows.Count;
        scmd = "select * from ArtAttack where BestooWest='" + t + "'";
        DataTable daabw = dm.SelectQuary(scmd);
        bwaano.Text = "" + daabw.Rows.Count;
        scmd = "select * from ArtAttack where FacePainting='" + t + "'";
        DataTable daafp = dm.SelectQuary(scmd);
        fpaano.Text = "" + daafp.Rows.Count;
        scmd = "select * from ArtAttack where Rangoli='" + t + "'";
        DataTable daar = dm.SelectQuary(scmd);
        rngaano.Text = "" + daar.Rows.Count;
        scmd = "select * from Poetry";
        DataTable dp = dm.SelectQuary(scmd);
        pno.Text = "" + dp.Rows.Count;
        scmd = "select * from Poetry where SelfWritten='" + t + "'";
        DataTable dpsw = dm.SelectQuary(scmd);
        pswno.Text = "" + dpsw.Rows.Count;
        scmd = "select * from Poetry where FamousPoet='" + t + "'";
        DataTable dpfp = dm.SelectQuary(scmd);
        psfpno.Text = "" + dpfp.Rows.Count;
        scmd = "select * from WritingSkills";
        DataTable dws = dm.SelectQuary(scmd);
        wsno.Text = "" + dws.Rows.Count;
        scmd = "select * from WritingSkills where Poetry='" + t + "'";
        DataTable dwsp = dm.SelectQuary(scmd);
        wspno.Text = "" + dwsp.Rows.Count;
        scmd = "select * from WritingSkills where Article='" + t + "'";
        DataTable dwspa = dm.SelectQuary(scmd);
        wsano.Text = "" + dwspa.Rows.Count;
        scmd = "select * from WritingSkills where Drama='" + t + "'";
        DataTable dwspd = dm.SelectQuary(scmd);
        wsdno.Text = "" + dwspd.Rows.Count;
        scmd = "select * from Minimilitia";
        DataTable dmin = dm.SelectQuary(scmd);
        mino.Text = "" + dmin.Rows.Count;
    }

    protected void addwnbtn_Click(object sender, EventArgs e)
    {
        if (conwntxt.Text == "")
            Response.Write("<script>alert('Enter Content First.')</script>");
        else
        {
            string cmd;
            cmd = "select * from Admin where AdminID='" + Session["adminid"] + "'";
            DataTable ds = dm.SelectQuary(cmd);
            cmd = "insert into WNew(Whatsnew,Admin) values('" + conwntxt.Text.ToString() + "','" + ds.Rows[0][1] + "')";
            dm.ExInsertUpdateorDelete(cmd);
            Response.Redirect("Admin_Home");
        }
    }

    protected void btnsendmail_Click(object sender, EventArgs e)
    {
        if (tomail.Text == "" || submail.Text == "" || msgmail.Text == "")
        {
            Response.Write("<script>alert('Fill the text first')</script>");
        }
        else
        {
            bool x = mm.SendMail(tomail.Text, submail.Text, msgmail.Text);
            if (x == true)
            {
                Response.Write("<script>alert('Successfully sent.')</script>");
                tomail.Text = "";
                submail.Text = "";
                msgmail.Text = "";
            }
            else
                Response.Write("<script>alert('Could not sent.')</script>");
        }
    }

    protected void delregbtn_Click(object sender, EventArgs e)
    {
        string cmd;
        cmd = "delete from SRegistration where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Registration where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from OratorySkills where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Quiz where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Photography where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from PPT where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from ModelMaking where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from NFS where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from CounterStrike where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from TreasureHunt where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from DocumentaryVideos where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from CodeHunt where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from ArtAttack where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Poetry where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from WritingSkills where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Minimilitia where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Feedback where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Query where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
		cmd = "delete from FeedbackCnI where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
		cmd = "delete from FeedbackTnC where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);

        Response.Redirect("Admin_Home");
    }
}