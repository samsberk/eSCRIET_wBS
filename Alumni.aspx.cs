using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Alumni : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cmd, verif = "Verified", path="", batch;
        int i, t=0;
        cmd = "select * from Alumni where Verification='" + verif + "'";
        DataTable d1 = dm.SelectQuary(cmd);
        if (d1.Rows.Count > 0)
        {
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2014-2018";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b1418.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t14.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2013-2017";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b1317.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t13.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2012-2016";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b1216.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t12.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2011-2015";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b1115.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t11.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2010-2014";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b1014.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t10.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2009-2013";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b0913.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t09.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2008-2012";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b0812.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t08.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2007-2011";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b0711.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t07.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2006-2010";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b0610.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t06.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2005-2009";
                if (d1.Rows[i][3].ToString() == batch)
                {
					path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b0509.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t05.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2004-2008";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b0408.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t04.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2003-2007";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b0307.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t03.Text = t.ToString();
            t = 0;
            for (i = 0; i < d1.Rows.Count; i++)
            {
                batch = "2002-2006";
                if (d1.Rows[i][3].ToString() == batch)
                {
                    path = "Images/AlumniPics/" + d1.Rows[i][8];
                    b0206.Controls.Add(new Literal() { Text = "<div class='col-sm-4'><br /><div class='row'><div class='col-xs-3'><img src=" + path + " style='width:100%;'/></div><div class='col-xs-9'><p style='font-size:14px;'><b>" + d1.Rows[i][1].ToString() + "</b><br/>" + d1.Rows[i][2].ToString() + "<br/>" + d1.Rows[i][4].ToString() + "<br/>" + d1.Rows[i][5].ToString() + "</p></div></div></div>" });
                    t++;
                }
            }
            t02.Text = t.ToString();
            t = 0;
        }
        else
        {
            
        }
    }
}