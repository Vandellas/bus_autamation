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
    public partial class ProfilGörüntüle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Biletleriniz();
            BilgileriCekme();
            SeferBilgileri();
            KoltukBilgisi();
            BiletKontrol();
        }
        public void  BiletKontrol()
        {
            if (BiletDrop.Items.Count == 0)
            {
                Image4.Visible = false;
                Panel1.Visible = false;
            }
            else
            {
                Image4.Visible = true;
                Panel1.Visible = true;
            }

        }
        public void BilgileriCekme()
        {
            if (GirişTxtKontrol()==0)
            {
                string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(cnnStr);
                SqlCommand sqlCmd = new SqlCommand("select*from UserTbl where UserId=" + Session["UserId"], connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = sqlCmd.ExecuteReader();
                    while (reader.Read())
                    {
                        TextBox4.Text = reader["Email"].ToString();
                        TextBox5.Text = reader["Password"].ToString();
                        TextBox1.Text = reader["Ad"].ToString();
                        TextBox2.Text = reader["Soyad"].ToString();
                        TextBox7.Text = reader["Telefonnumarası"].ToString();
                        DropDownList1.Text = reader["Cinsiyet"].ToString();
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
      
        }
        public void KoltukBilgisi()
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select Koltuk from BiletBilgileri where BiletId="+BiletDrop.SelectedValue, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();

                while (reader.Read())
                {
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
        public void Biletleriniz()
        {
            if (!IsPostBack)
            {

                string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(cnnStr);
                SqlCommand sqlCmd = new SqlCommand("select Kode,BiletId from BiletBilgileri where UserId=" + Session["UserId"], connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = sqlCmd.ExecuteReader();
                    BiletDrop.DataSource = reader;
                    BiletDrop.DataValueField = "BiletId";
                    BiletDrop.DataTextField = "Kode";
                    BiletDrop.DataBind();
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
         
        }
        public void SeferBilgileri()
        {

            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            
            SqlCommand sqlCmd = new SqlCommand("select Kalkış,Varış,FirmaLogo,SeferSaati,Tarih,Fiyat from SeferTbl where SeferId in(select SeferId from BiletBilgileri where BiletId="+BiletDrop.SelectedValue+")", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();

                while (reader.Read())
                {
                    Label8.Text = reader["Kalkış"].ToString() + "==>" + reader["Varış"].ToString();
                    Image5.ImageUrl = reader["FirmaLogo"].ToString();
                    Label11.Text = reader["Fiyat"].ToString();
                    Label9.Text = reader["Tarih"].ToString() +"<p>"+ reader["SeferSaati"].ToString();
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
        public int GirişTxtKontrol()
        {
            if (TextBox1.Text == "" && TextBox2.Text == "" && TextBox4.Text == "" && TextBox5.Text == "" && TextBox7.Text == "")
                return 0;
            else
                return 1;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(cnnStr);
                SqlCommand sqlCmd = new SqlCommand("UPDATE UserTbl SET Email='" + TextBox4.Text + "',Password='" + TextBox5.Text + "',Cinsiyet='" + DropDownList1.SelectedItem.ToString() + "',Telefonnumarası='" + TextBox7.Text + "',Ad='" + TextBox1.Text + "',Soyad='" + TextBox2.Text + "'where UserId=" + Session["UserId"], connection);

                try
                {
                    //Bağlantımı açıyorum.
                    connection.Open();
                    //Burada ExcuteNonQuery kullanıyorum, çünkü bana geriye herhangi bir veri listesi geri dönmeyecek.
                    sqlCmd.ExecuteNonQuery();
                    //Komut çalışıp sonlandıktan sonra tekrar aynı sayfaya yönleneceğim.
                    Response.Write("<script>alert('Kaydınız başarılı şekilde gücellendi.')</script>");
                }
                catch
                {
                    //hata olursa label kontrolümde mesaj yazılacak.
                    Response.Write("<script>alert('Lütfen bilgilerinizi kontrol ediniz kaydınız güncellenemedi.')</script>");

                }
                finally
                {
                    //Bağlantımı kapatıyorum.
                    connection.Close();
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
                TextBox4.Enabled = true;
                TextBox5.Enabled = true;
                TextBox6.Enabled = true;
                TextBox7.Enabled = true;
                Button1.Visible = true;
                Label1.Visible = true;
                TextBox6.Visible = true;
                DropDownList1.Enabled = true;
                TextBox5.TextMode = TextBoxMode.Password;
                Label2.Text = "Profil Güncelle";
            }
            else
            {
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox4.Enabled = false;
                TextBox5.Enabled = false;
                TextBox6.Enabled = false;
                TextBox7.Enabled = false;
                Button1.Visible = false;
                Label1.Visible = false;
                TextBox6.Visible = false;
                Button1.Visible = false;
                Label1.Visible = false;
                TextBox6.Visible = false;
                DropDownList1.Enabled = false;
                TextBox5.TextMode = TextBoxMode.SingleLine;
                Label2.Text = "Profil Bilgileri";
            }
        }

        protected void FirmaDrop_SelectedIndexChanged(object sender, EventArgs e)
        {
            SeferBilgileri();
            KoltukBilgisi();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }
    }
}