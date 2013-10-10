using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class f6641_ValiPalaute : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text = DateTime.Now.Day + "." + DateTime.Now.Month + "." + DateTime.Now.Year;
    }


    protected void btnSend_Click(object sender, EventArgs e)
    {

        XDocument doc = XDocument.Load(ConfigurationManager.AppSettings["palautexml"]);

        doc.Root.Add(new XElement("palaute",
            new XElement("pvm", txtDate.Text),
            new XElement("tekija", txtName.Text),
            new XElement("opittu", txtLearned.Text),
            new XElement("haluanoppia", txtWannalearn.Text),
            new XElement("hyvaa", txtGood.Text),
            new XElement("parannettavaa", txtImprove.Text),
            new XElement("muuta", txtOther.Text)
            )
            );

            doc.Save(ConfigurationManager.AppSettings["palautexml"]);


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = XmlDataSource1;
        GridView1.DataBind();


    }
}
