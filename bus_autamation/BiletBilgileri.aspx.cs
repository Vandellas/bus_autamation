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
    public partial class BiletBilgileri : System.Web.UI.Page
    {
        static int UserId;
        protected void Page_Load(object sender, EventArgs e)
        {
  
            try 
	      {
                Session["UserId"].ToString();
                UserId = Convert.ToInt32(Session["UserId"]);
	      }
	     catch (Exception)
	     {
		     UserId = 0;
		
	     }
           
       
           
            Label2.Visible = false;
            seferbilgileri(Convert.ToInt16(Session["SeferId"]), Session["KoltukNumarası"].ToString());
            müsteriBilgileri();
        }
        public void seferbilgileri(int id,string koltuknumarası)
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select*from SeferTbl where SeferId="+id, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {
                    Image5.ImageUrl = reader["FirmaLogo"].ToString();
                    Label7.Text = reader["Kalkış"].ToString() + "==>" + reader["Varış"].ToString();
                    Label3.Text = reader["Tarih"].ToString();
                    Label6.Text = reader["SeferSaati"].ToString();
                    Label5.Text = reader["Fiyat"].ToString()+"TL";
                    Label4.Text = koltuknumarası;

                }
                reader.Close();
                connection.Close();
                //Baglanti saglandi...
            }
            catch //(Exception)
            {

                connection.Close();
                //Baglanti kurulamadi...
            }
        }
        public void müsteriBilgileri()
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select*from UserTbl where UserId=" + UserId, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {
                  TextBox1.Text =reader["Ad"].ToString()+" "+reader["Soyad"].ToString();
                  TextBox2.Text =reader["Email"].ToString();
                  TextBox3.Text=reader["Telefonnumarası"].ToString();

                }
                reader.Close();
                connection.Close();
                //Baglanti saglandi...
            }
            catch //(Exception)
            {

                connection.Close();
                //Baglanti kurulamadi...
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("INSERT INTO BiletBilgileri (UserId,AdSoyad,Email,CepTelefonu,SeferId,Koltuk,Kode,Cinsiyet) VALUES (@UserId,@AdSoyad,@Email,@CepTelefonu,@SeferId,@Koltuk,@Kode,@Cinsiyet)", connection);
            sqlCmd.Parameters.Add("@UserId", System.Data.SqlDbType.Int, 5);
            sqlCmd.Parameters["@UserId"].Value =UserId;
            sqlCmd.Parameters.Add("@AdSoyad", System.Data.SqlDbType.NVarChar, 50);
            sqlCmd.Parameters["@AdSoyad"].Value = TextBox1.Text;
            sqlCmd.Parameters.Add("@Email", System.Data.SqlDbType.NVarChar, 50);
            sqlCmd.Parameters["@Email"].Value = TextBox2.Text;
            sqlCmd.Parameters.Add("@CepTelefonu", System.Data.SqlDbType.NVarChar, 50);
            sqlCmd.Parameters["@CepTelefonu"].Value = TextBox3.Text;
            sqlCmd.Parameters.Add("@SeferId", System.Data.SqlDbType.NVarChar, 50);
            sqlCmd.Parameters["@SeferId"].Value = Session["SeferId"].ToString();
            sqlCmd.Parameters.Add("@Koltuk", System.Data.SqlDbType.NVarChar, 50);
            sqlCmd.Parameters["@Koltuk"].Value = Session["KoltukNumarası"].ToString();
            sqlCmd.Parameters.Add("@Kode", System.Data.SqlDbType.NVarChar, 50);
            Random rnd = new Random();
            string Kode = rnd.Next(1350, 50000).ToString();
            sqlCmd.Parameters["@Kode"].Value = Kode;
            sqlCmd.Parameters.Add("@Cinsiyet", System.Data.SqlDbType.NVarChar, 50);
            sqlCmd.Parameters["@Cinsiyet"].Value = Session["Cinsiyet"].ToString();
            try
            {
                Response.Write("<script>alert('Bilet Bilgilerinizi Kontrol Etmeniz için Kodunuz="+Kode+"')</script>");
                //Bağlantımı açıyorum.
                connection.Open();
                //Burada ExcuteNonQuery kullanıyorum, çünkü bana geriye herhangi bir veri listesi geri dönmeyecek.
                sqlCmd.ExecuteNonQuery();
                //Komut çalışıp sonlandıktan sonra tekrar aynı sayfaya yönleneceğim.
               // Response.Write("<script>alert('Biletiniz Başarılı Şekilde Aldınız!!')</script>"); ;

            }
            catch
            {
                Label8.Text = "Sefer Kaydedilemedi";
                //hata olursa label kontrolümde mesaj yazılacak.

            }
            finally
            {
                //Bağlantımı kapatıyorum.
                connection.Close();
            }
        }
    }
}