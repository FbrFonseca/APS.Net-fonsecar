using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Fabricio_Fonseca_10591210
{
    public partial class autoparts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void openBasket_Click(object sender, EventArgs e)
        {
            int tirePrice = 0;
            int polishingPrice = 0;
            int oilPrice = 0;
            int lightsPrice = 0;

            if (cbxTire.Checked)
            {
                tirePrice = 40;
            }

            if (cbxPolishing.Checked)
            {
                polishingPrice = 120;
            }

            if (cbxOil.Checked)
            {
                oilPrice = 80;
            }           

            if (cbxLights.Checked)
            {
                lightsPrice = 65;
            }         

            Response.Redirect("basket.aspx?TirePrice=" + tirePrice+"&PolishingPrice="+ polishingPrice+"&OilPrice="+oilPrice+"&LightsPrice="+lightsPrice);
        }

    }
}