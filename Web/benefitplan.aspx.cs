﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
public partial class benefitplan : PageBases
{
    public string content = "";
    Bll.CustomerBll cb = new Bll.CustomerBll();
    Model.tab_customers modeCu = new Model.tab_customers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.CheckUser((Hashtable)Application["Online"]);
            init();
        }
    }
    void init()
    {
        Bll.newsBll nb = new Bll.newsBll();
        string s;
        if (Session["language"] != null && Session["language"].ToString() == "en-us")
        {
            s = "select title_eng as title, msg_eng as msg,link_eng as link,time  from tab_news where discription=N'福利计划" + Session["Company"] + "'";
        }
        else
        {
            s = "select *  from tab_news where discription=N'福利计划" + Session["Company"] + "'";
        }

        DataTable dt = nb.NewsSelect(s);
        this.Label1.Text = DateTime.Parse( dt.Rows[0]["time"].ToString()).ToShortDateString();
        this.HyperLink1.NavigateUrl = this.HyperLink2.NavigateUrl += dt.Rows[0]["link"].ToString();
        this.HyperLink1.Text = dt.Rows[0]["title"].ToString();
        content = dt.Rows[0]["msg"].ToString();

    }

}