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
    public partial class basket : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {

            int tire = int.Parse(Request.QueryString["TirePrice"]);
            int polishing = int.Parse(Request.QueryString["PolishingPrice"]);
            int oil = int.Parse(Request.QueryString["OilPrice"]);
            int lights = int.Parse(Request.QueryString["LightsPrice"]);
            double total = tire + polishing + oil + lights;
            double withVAT = total + (total * 0.15);

            lblTire.Text = tire.ToString();
            lblPolishing.Text = polishing.ToString();
            lblOil.Text = oil.ToString();
            lblLights.Text = lights.ToString();
            lblTotal.Text = total.ToString();
            lblTotalWithVAT.Text = withVAT.ToString();
        }
        
        
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string fullname = txtFullname.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string flatTire = lblTire.Text;
            string polishing = lblPolishing.Text;
            string oilChange = lblOil.Text;
            string lightsAlignment = lblLights.Text;
            string totalVAT = lblTotalWithVAT.Text;

            string insert = "INSERT INTO Service(Fullname, Email, Phone, FlatTire, Polishing, OilChange, LightsAlignment, TotalWithVAT) VALUES(@Fullname, @Email, @Phone, @FlatTire, @Polishing, @OilChange, @LightsAlignment, @TotalWithVAT)";

            SqlCommand cmd = new SqlCommand(insert, con);

            cmd.Parameters.AddWithValue("@Fullname", fullname);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Phone", phone);
            cmd.Parameters.AddWithValue("@FlatTire", flatTire);
            cmd.Parameters.AddWithValue("@Polishing", polishing);
            cmd.Parameters.AddWithValue("@OilChange", oilChange);
            cmd.Parameters.AddWithValue("@LightsAlignment", lightsAlignment);
            cmd.Parameters.AddWithValue("@TotalWithVAT", totalVAT);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            txtFullname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhone.Text = string.Empty;
            lblTire.Text = string.Empty;
            lblPolishing.Text = string.Empty;
            lblOil.Text = string.Empty;
            lblLights.Text = string.Empty;
            lblTotal.Text = string.Empty;
            lblTotalWithVAT.Text = string.Empty;

            ShowRepeater();
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtFullname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhone.Text = string.Empty;
            lblTire.Text = string.Empty;
            lblPolishing.Text = string.Empty;
            lblOil.Text = string.Empty;
            lblLights.Text = string.Empty;
            lblTotal.Text = string.Empty;
            lblTotalWithVAT.Text = string.Empty;

            Response.Redirect("autoparts.aspx?");

        }

        void ShowRepeater()
        {
            rptService.DataSource = GetService();
            rptService.DataBind();
        }

        private DataTable GetService()
        {
            DataTable dt = new DataTable();
            string select = "SELECT * FROM ( SELECT TOP 1 * FROM Service ORDER BY [ServiceID] DESC) last";
            SqlCommand cmd = new SqlCommand(select, con);

            con.Open();
            dt.Load(cmd.ExecuteReader());
            con.Close();

            return dt;
        }

        protected void btnRemoveTire_Click(object sender, EventArgs e)
        {
            lblTire.Text = "0";
        }

        protected void btnRemovePolishing_Click(object sender, EventArgs e)
        {
            lblPolishing.Text = "0";
        }

        protected void btnOilRemove_Click(object sender, EventArgs e)
        {
            lblOil.Text = "0";
        }

        protected void btnRemoveLight_Click(object sender, EventArgs e)
        {
            lblLights.Text = "0";
        }
    }
}