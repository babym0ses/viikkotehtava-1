using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class f6641_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtNimi.Text == "")
        {
            MessageBox.Show("anna nimi");
        }

        else
        {

         
            Session["Name"] = txtNimi.Text;
            Response.Redirect("f6641_tehtava1.aspx");

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {


       

        if (txtNimi.Text == "")
        {
            MessageBox.Show("anna nimi");
        }

        else
        {

            string Name = txtNimi.Text;
            Response.Cookies["UserInfo"]["Name"] = Name;
            Response.Redirect("f6641_tehtava1.aspx");

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (txtNimi.Text == "")
        {
            MessageBox.Show("anna nimi");
        }

        else

        {
            Response.Redirect("~/f6641_tehtava1.aspx?Name=" + txtNimi.Text);

        }
    }
}