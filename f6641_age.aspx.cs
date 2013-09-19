using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6641_age : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblToday.Text = "Tänään on: " + DateTime.Now;
        
        
    }
    protected void Change(object sender, EventArgs e)
    {
        lblChosen.Text = "Valittu päivä: " + Calendar1.SelectedDate.Day + "." + Calendar1.SelectedDate.Month + "." + Calendar1.SelectedDate.Year;
        lblMath.Text = "Valitun päivän ja tämän päivän erotus: " + (Calendar1.SelectedDate.DayOfYear - Calendar1.TodaysDate.DayOfYear).ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Calendar1.VisibleDate = Calendar1.VisibleDate.AddYears(1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}