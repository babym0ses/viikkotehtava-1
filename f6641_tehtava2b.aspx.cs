﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class f6641_tehtava2b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pageContent.Style.Add("background-color", WebConfigurationManager.AppSettings["backgroundColor"].ToString());

    }
}