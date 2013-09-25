using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class f6641_tehtava2 : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
        pageContent.Style.Add("background-color", WebConfigurationManager.AppSettings["backgroundColor"].ToString());
    }

    public void calculateCash()
    {

        if (int.Parse(txtAge.Text) < 18)
            txtAge.Text = "18";

        if (int.Parse(txtAge.Text) > 63)
            txtAge.Text = "63";

        lblCalcCash.Text = ((double.Parse(txtSalary.Text) * 0.5) - (63 - double.Parse(txtAge.Text) * 5.5)).ToString();



    }


    protected void btnSubtAge_Click(object sender, EventArgs e)
    {
        txtAge.Text = (int.Parse(txtAge.Text) - 1).ToString();
        calculateCash();

    }
    protected void btnAddAge_Click(object sender, EventArgs e)
    {

        txtAge.Text = (int.Parse(txtAge.Text) + 1).ToString();
        calculateCash();

    }
    protected void btnSubtSalary_Click(object sender, EventArgs e)
    {
        txtSalary.Text = (int.Parse(txtSalary.Text) - 100).ToString();
        calculateCash();

    }
    protected void btnAddSalary_Click(object sender, EventArgs e)
    {
        txtSalary.Text = (int.Parse(txtSalary.Text) + 100).ToString();
        calculateCash();

    }
    protected void btnCalc_Click(object sender, EventArgs e)
    {
        calculateCash();
    }
    protected void btnMore_Click(object sender, EventArgs e)
    {
        Response.Redirect("f6641_tehtava2b.aspx");

    }
}