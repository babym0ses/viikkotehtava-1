using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6641_valuuttamuunnin : System.Web.UI.Page
{
    private const float BitCoinRate= 94.71F;

    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnConvert_Click(object sender, EventArgs e)
    {
        //muunnetaan coinit euroiksi

        lblCurrency.Text = string.Format("{0:0.0000} euroa", float.Parse(txtCash.Text) * BitCoinRate);

        //näytetään laskutoimitukset listboxissa

        lstOne.Items.Add(txtCash.Text + "-->" + lblCurrency.Text);
        lstTwo.Items.Add(txtCash.Text + "-->" + lblCurrency.Text);
       
    }
}