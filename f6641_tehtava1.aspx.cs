using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6641_tehtava1 : System.Web.UI.Page
{

    private const float markka = 5.9F;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["Name"] != null)

        {
            lblName.Text = Request.QueryString["Name"];
        }


        if (Session["Name"] != null)
        {
            lblName.Text = (string)(Session["Name"]);
        }

        if (Request.Cookies["UserInfo"] != null)
        {
          
            lblName.Text = Request.Cookies["UserInfo"]["Name"];
             
        }




    }

    protected void txtCalculate_Click(object sender, EventArgs e)
    {

        try
        {
            lblResult.Text = string.Format("{0:0.00} €", float.Parse(txtGivenMoney.Text) * markka);
        }

        catch (Exception error)
        {
            lblResult.Text = error.Message;
        }
    }
}