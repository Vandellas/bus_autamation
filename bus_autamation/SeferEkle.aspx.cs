using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bus_autamation
{
    public partial class SeferEkle : System.Web.UI.Page
    {
        static String picurl;
        static int timecontrol=0;
        ArrayList array = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                
                string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(cnnStr);
                SqlCommand sqlCmd = new SqlCommand("select FirmaId,FirmaName from FirmaTbl", connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = sqlCmd.ExecuteReader();
                    FirmaDrop.DataSource = reader;
                    FirmaDrop.DataValueField = "FirmaId";
                    FirmaDrop.DataTextField = "FirmaName";
                    FirmaDrop.DataBind();
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
            dropdownlist2add();
            Addimage();
        }
        public void Addimage()
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select FirmaLogo from FirmaTbl where FirmaId='"+FirmaDrop.SelectedValue+"'", connection);
           
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    picurl=reader["FirmaLogo"].ToString();


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
        public void dropdownlist2add()
        {

                string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(cnnStr);
                SqlCommand sqlCmd = new SqlCommand("select OtobüsId,OtobüsName from OtobüsÖzelikleriTbl Where FirmaId='" + FirmaDrop.SelectedValue + "'", connection);
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                if (reader != null)
                {
                    try
                    {

                        OtobüsDrop.DataSource = reader;
                        OtobüsDrop.DataValueField = "OtobüsId";
                        OtobüsDrop.DataTextField = "OtobüsName";
                        OtobüsDrop.DataBind();
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
                else
                {
                    OtobüsDrop.Items.Clear();
                }
            
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

            
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Page.IsValid==false||Page.IsValid==true)
            {

                if (Calendar1.Visible == false)
                    Calendar1.Visible = true;
                else if (Calendar1.Visible == true)
                    Calendar1.Visible = false;
            }
        }
        public bool tarihSeçme()
        {
            int yılcal = Calendar1.SelectedDate.Year * 365;
            int aycal = Calendar1.SelectedDate.Month * 30;
            int güncal = Calendar1.SelectedDate.Day;
            int toplamgüncal = yılcal - aycal - güncal;
            int Yıl = DateTime.Now.Year * 365;
            int Ay = DateTime.Now.Month * 30;
            int Gün = DateTime.Now.Day;
            int toplamgün = Yıl - Ay - Gün;
            if (toplamgüncal - toplamgün > 0)
                return true;
            else
                return false;
        }
        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            if (tarihSeçme() == false)
            {
                TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
                Calendar1.Visible = false;
            }
            else
            {
                Response.Write("<script>alert('Lütfen ileri bir tarihe sefer ekleyiniz!!!')</script>");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(cnnStr);
                SqlCommand sqlCmd = new SqlCommand("INSERT INTO SeferTbl (FirmaId,OtobüsId,Kalkış,Varış,SeferSaati,VarışSaati,Uzaklık,Tarih,Fiyat,FirmaLogo) VALUES (@FirmaId,@OtobüsId,@Kalkış,@Varış,@SeferSaati,@VarışSaati,@Uzaklık,@Tarih,@Fiyat,@FirmaLogo)", connection);
                sqlCmd.Parameters.Add("@FirmaId", System.Data.SqlDbType.Int, 5);
                sqlCmd.Parameters["@FirmaId"].Value = FirmaDrop.SelectedValue;
                sqlCmd.Parameters.Add("@OtobüsId", System.Data.SqlDbType.Int, 5);
                sqlCmd.Parameters["@OtobüsId"].Value = OtobüsDrop.SelectedValue;
                sqlCmd.Parameters.Add("@Kalkış", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@Kalkış"].Value = NeredenDrop.SelectedItem.ToString();
                sqlCmd.Parameters.Add("@Varış", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@Varış"].Value = NereyeDrop.SelectedItem.ToString();
                sqlCmd.Parameters.Add("@SeferSaati", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@SeferSaati"].Value = DropDownList10.SelectedItem.ToString() + ":" + DropDownList13.SelectedItem.ToString();
                sqlCmd.Parameters.Add("@VarışSaati", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@VarışSaati"].Value = DropDownList11.SelectedItem.ToString() + ":" + DropDownList12.SelectedItem.ToString();
                sqlCmd.Parameters.Add("@Uzaklık", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@Uzaklık"].Value = TextBox2.Text;
                sqlCmd.Parameters.Add("@Tarih", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@Tarih"].Value = TextBox1.Text;
                sqlCmd.Parameters.Add("@Fiyat", System.Data.SqlDbType.Int, 50);
                sqlCmd.Parameters["@Fiyat"].Value = TextBox3.Text;
                sqlCmd.Parameters.Add("@FirmaLogo", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@FirmaLogo"].Value = picurl;
                Label1.Visible = true;
                try
                {

                    //Bağlantımı açıyorum.
                    connection.Open();
                    //Burada ExcuteNonQuery kullanıyorum, çünkü bana geriye herhangi bir veri listesi geri dönmeyecek.
                    sqlCmd.ExecuteNonQuery();
                    //Komut çalışıp sonlandıktan sonra tekrar aynı sayfaya yönleneceğim.
                    Label1.Text = "Sefer Başrılı şekilde kaydedildi";

                }
                catch
                {
                    Label1.Text = "Sefer Kaydedilemedi";
                    //hata olursa label kontrolümde mesaj yazılacak.

                }
                finally
                {
                    //Bağlantımı kapatıyorum.
                    connection.Close();
                }
            }
        }

        protected void FirmaDrop_SelectedIndexChanged(object sender, EventArgs e)
        {
            dropdownlist2add();
            Addimage();
           
          
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SeferEkle.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddBus.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddFirm.aspx");
        }

        protected void DropDownList12_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate == DateTime.Now.Date)
            {

                if (Convert.ToInt32((DropDownList10.SelectedItem.ToString())) >= DateTime.Now.TimeOfDay.Hours)
                {
                    Button1.Enabled = true;
                    timecontrol = 1;
                }
                else
                {
                    Response.Write("<script>alert('seferiniz bu saate gerçekleştirilemez')</script>");
                    Button1.Enabled = false;
                }
            }
            
        }

        protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (timecontrol == 1)
            {
                if (Convert.ToInt32((DropDownList13.SelectedItem.ToString())) >= DateTime.Now.TimeOfDay.Minutes)
                {
                    Button1.Enabled = true;
                }
                else
                {
                    Response.Write("<script>alert('seferiniz bu saate gerçekleştirilemez')</script>");
                    Button1.Enabled = false;
                }
            }
        }

        protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }


    }
}