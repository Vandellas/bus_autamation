using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bus_autamation
{
    public partial class BiletGörüntüle : System.Web.UI.Page
    {
        static int SeferId;
        protected void Page_Load(object sender, EventArgs e)
        {

            KoltukBilgisi();
            SeferBilgileri();
        }
        public void SeferBilgileri()
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);

            SqlCommand sqlCmd = new SqlCommand("select Kalkış,Varış,FirmaLogo,SeferSaati,Tarih,Fiyat from SeferTbl where SeferId="+SeferId, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();

                while (reader.Read())
                {
                    Label8.Text = reader["Kalkış"].ToString() + "==>" + reader["Varış"].ToString();
                    Image5.ImageUrl = reader["FirmaLogo"].ToString();
                    Label11.Text = reader["Fiyat"].ToString();
                    Label9.Text = reader["Tarih"].ToString() + "<p>" + reader["SeferSaati"].ToString();
                }
                connection.Close();
                //Baglanti saglandi...
            }
            catch //(Exception)
            {

                connection.Close();
                //Baglanti kurulamadi...
            }
        }
        public void KoltukBilgisi()
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select Koltuk,SeferId from BiletBilgileri where Kode=" + Session["BiletKodu"], connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();

                while (reader.Read())
                {
                    SeferId = Convert.ToInt32(reader["SeferId"].ToString());
                    Label10.Text = reader["Koltuk"].ToString();
                }
                connection.Close();
                //Baglanti saglandi...
            }
            catch //(Exception)
            {

                connection.Close();
                //Baglanti kurulamadi...
            }
        }
    }
}