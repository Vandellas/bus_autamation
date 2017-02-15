using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bus_autamation
{
    public partial class BiletAlma : System.Web.UI.Page
    {
        static String arrayOtobüsKoltuk;
        ArrayList arrayOtobüsId = new ArrayList();
        ArrayList arrayAraçTipi = new ArrayList();
        ArrayList arrayTv = new ArrayList();
        ArrayList arrayLigTv = new ArrayList();
        ArrayList arrayUsb = new ArrayList();
        ArrayList arrayWireless = new ArrayList();
        ArrayList arrayPriz = new ArrayList();
        ArrayList arrayFirma = new ArrayList();
        ArrayList arraySaat = new ArrayList();
        ArrayList arrayFiyat = new ArrayList();
        ArrayList arraySeferId = new ArrayList();
        ArrayList arraybutton = new ArrayList();
        static int otobüsid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "01" && DropDownList2.SelectedValue == "01")
            {

            
            }
            if (Button1.Text.CompareTo("")==0)
            {

                DropDownList1.SelectedIndex = Convert.ToInt16(Session["Nerden"]);
                DropDownList2.SelectedIndex = Convert.ToInt16(Session["Nereye"]);
                Button1.Text = Session["Tarih"].ToString();
                Calendar1.SelectedDate = DateTime.Parse(Session["Tarih"].ToString());
            }
            Image5.Visible = false;
            CheckBox3.Visible = false;
            CheckBox4.Visible = false;
            
            if (Seferler() == 0) 
            {
                firmaekle();
                koltuklar(otobüsid);
                KoltukKontrol();
                
            }
            else
            {
               // Response.Write("<script>alert('Sefer Bulunamadı!!')</script>");
            }
        }
        public void firmaekle()
        {
            int i = 0;
            Panel4.Controls.Add(new LiteralControl("<br>"));
            Panel5.Controls.Add(new LiteralControl("<br>"));
            Panel7.Controls.Add(new LiteralControl("<br>"));

            foreach (object eleman in arrayFirma)
            {


                ImageButton image = new ImageButton();
                FileInfo fileınfo = new FileInfo(eleman.ToString());
                image.ImageUrl = eleman.ToString();
                image.Width = Unit.Pixel(100);
                image.Height = Unit.Pixel(50);
                image.Style.Add("padding", "5px");
                Panel3.Controls.Add(image);
                Label labelsaat = new Label();
                labelsaat.Font.Bold = true;
                labelsaat.Width = Unit.Pixel(200);
                labelsaat.Height = Unit.Pixel(65);
                labelsaat.Text = arraySaat[i].ToString();
                Panel4.Controls.Add(labelsaat);
                Label labelfiyat = new Label();
                labelfiyat.Font.Bold = true;
                labelfiyat.Width = Unit.Pixel(200);
                labelfiyat.Height = Unit.Pixel(65);
                labelfiyat.Text = arrayFiyat[i].ToString()+"TL";
                Panel5.Controls.Add(labelfiyat);
                ImageButton Secimage = new ImageButton();
                Secimage.ImageUrl = "~/picture/sec1.png";
                Secimage.Width = Unit.Pixel(50);
                Secimage.Height = Unit.Pixel(30);
                Secimage.SkinID = i.ToString();
                Secimage.Style.Add("padding", "15px");
                Secimage.Click += Secimage_Click;
                Panel6.Controls.Add(Secimage);
                Label labelOtobüsTipi = new Label();
                labelOtobüsTipi.Font.Bold = true;
                labelOtobüsTipi.Width = Unit.Pixel(30);
                labelOtobüsTipi.Height = Unit.Pixel(65);
                labelOtobüsTipi.Text = arrayAraçTipi[i].ToString();
                Panel7.Controls.Add(labelOtobüsTipi);
                Label LigTv = new Label();
                LigTv.Font.Bold = true;
                LigTv.Width = Unit.Pixel(30);
                LigTv.Height = Unit.Pixel(65);
                if (arrayLigTv[i].ToString() == "1")
                   
                    LigTv.Text = "L";
                else
                    LigTv.Text = "-";
                Panel7.Controls.Add(LigTv);
                Label Tv = new Label();
                Tv.Font.Bold = true;
                Tv.Width = Unit.Pixel(30);
                Tv.Height = Unit.Pixel(65);

                if (arrayTv[i].ToString() == "1")
                    Tv.Text = "T";
                else
                    Tv.Text = "-";
                Panel7.Controls.Add(Tv);
                Label Usb = new Label();
                Usb.Font.Bold = true;
                Usb.Width = Unit.Pixel(30);
                Usb.Height = Unit.Pixel(65);
               
                if (arrayUsb[i].ToString() == "1")
                    Usb.Text = "U";
                else
                    Usb.Text = "-";
                Panel7.Controls.Add(Usb);
                Label Wireless = new Label();
                Wireless.Font.Bold = true;
                Wireless.Width = Unit.Pixel(30);
                Wireless.Height = Unit.Pixel(65);
               
                if (arrayWireless[i].ToString() == "1")

                    Wireless.Text = "W";
                else
                    Wireless.Text = "-";
                Panel7.Controls.Add(Wireless);
                Label Priz = new Label();
                Priz.Font.Bold = true;
                Priz.Width = Unit.Pixel(30);
                Priz.Height = Unit.Pixel(65);
              
                if (arrayPriz[i].ToString() == "1")
                    Priz.Text = "P";
                else
                    Priz.Text ="-" ;
                Panel7.Controls.Add(Priz);
                i++;
            }

          

        }

        void Secimage_Click(object sender, ImageClickEventArgs e)
        {
             otobüsid=Convert.ToInt16(((ImageButton)sender).SkinID);
            
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select*from OtobüsÖzelikleriTbl where OtobüsId='" + arrayOtobüsId[otobüsid].ToString() + "'", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    arrayOtobüsKoltuk=reader["OtobüsKoltukSayısı"].ToString();

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
        
            Panel8.Controls.Clear();
            koltuklar(otobüsid);
           
           Response.Redirect(Page.Request.Url.ToString(), true);
           
            
        }
       
        public void KoltukKontrol()
        {
          
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select*from BiletBilgileri where SeferId='" + arraySeferId[otobüsid].ToString() + "'", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {
                    
                   int id = Convert.ToInt16(reader["Koltuk"].ToString());
                      ((Button)arraybutton[id - 1]).Enabled = false;
                      if (reader["Cinsiyet"].ToString().CompareTo("Bay") == 0)
                      {
                          ((Button)arraybutton[id - 1]).BackColor = System.Drawing.Color.Blue;
                      }
                      else
                          ((Button)arraybutton[id - 1]).BackColor = System.Drawing.Color.Pink;

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
        public void koltuklar(int skindid)
        {


                if (arrayAraçTipi[skindid].ToString().CompareTo("2+2") == 1)
                    ikiartıikiOtobüs();
                else
                    ikiartıbirOtobüs();
                

        }

        public void ikiartıikiOtobüs()
        {
            Session["KoltukTipi"] = "2";
            int j = 1;

                for (int i = 0; i < Convert.ToInt16(arrayOtobüsKoltuk); i++)
                {
                  
                    Button koltuk = new Button();
                    koltuk.Width = Unit.Pixel(50);
                    Image5.Visible = true;
                    CheckBox3.Visible = true;
                    CheckBox4.Visible = true;
                    koltuk.Click += new EventHandler(koltuk_Click);
                    koltuk.BackColor = System.Drawing.Color.Gray;
                    koltuk.Height = Unit.Pixel(30);
                    koltuk.SkinID = arraySeferId[otobüsid].ToString();
                    koltuk.Text = (i + 1).ToString();
                    if (i == j)
                    {
                        koltuk.Style["margin-right"] = "40px;";
                        j = j + 4;
                    }
                    arraybutton.Add(koltuk);
                    Panel8.Controls.Add(((Button)arraybutton[i]));
                   
                }
            
      
        }

        static ArrayList tıklananButtonlar = new ArrayList();
        void koltuk_Click(object sender, EventArgs e)
        {
         if (CheckBox3.Checked == true || CheckBox4.Checked == true)
            {
            if (Session["KoltukTipi"].ToString().CompareTo("1") == 0)
            {
                int id = Convert.ToInt32(((Button)sender).Text);
                if (id % 3 == 0)
                {
                    if (((Button)arraybutton[id - 2]).BackColor == System.Drawing.Color.Blue)
                    {
                        if (CheckBox3.Checked == true)
                        {
                            Button2.Visible = false;
                            Response.Write("<script>alert('Lütfen  Bayan Yanı Koltuk Seciniz!!')</script>");
                        }
                        else 
                        {
                            Button2.Visible = true;
                            ((Button)sender).BackColor = System.Drawing.Color.Azure;
                        }
                    }
                    else if (((Button)arraybutton[id - 2]).BackColor == System.Drawing.Color.Pink)
                    {
                        if (CheckBox3.Checked == true)
                        {
                            Button2.Visible = true;
                            ((Button)sender).BackColor = System.Drawing.Color.Azure;
                           
                        }
                        else
                        {
                            Button2.Visible = false;
                            Response.Write("<script>alert('Lütfen  Bay Yanı Koltuk Seciniz!!')</script>");
                        }
                    }
                    else
                    {
                        Button2.Visible = true;
                        ((Button)sender).BackColor = System.Drawing.Color.Azure;
                    }
                }
                else if (id % 3 == 2)
                {
                    if (((Button)arraybutton[id]).BackColor == System.Drawing.Color.Blue)
                    {
                        if (CheckBox3.Checked == true)
                        {
                            Button2.Visible = false;
                            Response.Write("<script>alert('Lütfen  Bayan Yanı Koltuk Seciniz!!')</script>");
                        }
                        else
                        {
                            Button2.Visible = true;
                            ((Button)sender).BackColor = System.Drawing.Color.Azure;
                        }
                    }
                    else if (((Button)arraybutton[id]).BackColor == System.Drawing.Color.Pink)
                    {
                        if (CheckBox3.Checked == true)
                        {
                            Button2.Visible = true;
                            ((Button)sender).BackColor = System.Drawing.Color.Azure;

                        }
                        else
                        {
                            Button2.Visible = false;
                            Response.Write("<script>alert('Lütfen  Bay Yanı Koltuk Seciniz!!')</script>");
                        }
                    }
                    else
                    {
                        Button2.Visible = true;
                        ((Button)sender).BackColor = System.Drawing.Color.Azure;
                    }
                }
                else
                {
                    Button2.Visible = true;
                    ((Button)sender).BackColor = System.Drawing.Color.Azure;
                }
            }
            else
            {
                int id = Convert.ToInt32(((Button)sender).Text);
                if (id % 2 == 0)
                {
                    if (((Button)arraybutton[id - 2]).BackColor == System.Drawing.Color.Blue)
                    {
                        if (CheckBox3.Checked == true)
                        {
                            Button2.Visible = false;
                            Response.Write("<script>alert('Lütfen  Bayan Yanı Koltuk Seciniz!!')</script>");
                        }
                        else
                        {
                            Button2.Visible = true;
                            ((Button)sender).BackColor = System.Drawing.Color.Azure;
                        }
                    }
                    else if (((Button)arraybutton[id - 2]).BackColor == System.Drawing.Color.Pink)
                    {
                        if (CheckBox3.Checked == true)
                        {
                            Button2.Visible = true;
                            ((Button)sender).BackColor = System.Drawing.Color.Azure;

                        }
                        else
                        {
                            Button2.Visible = false;
                            Response.Write("<script>alert('Lütfen  Bay Yanı Koltuk Seciniz!!')</script>");
                        }
                    }
                    else
                    {
                        Button2.Visible = true;
                        ((Button)sender).BackColor = System.Drawing.Color.Azure;
                    }
                }
                else if (id % 2 != 0)
                {
                    if (((Button)arraybutton[id]).BackColor == System.Drawing.Color.Blue)
                    {
                        if (CheckBox3.Checked == true)
                        {
                            Button2.Visible = false;
                            Response.Write("<script>alert('Lütfen  Bayan Yanı Koltuk Seciniz!!')</script>");
                        }
                        else
                        {
                            Button2.Visible = true;
                            ((Button)sender).BackColor = System.Drawing.Color.Azure;
                        }
                    }
                    else if (((Button)arraybutton[id]).BackColor == System.Drawing.Color.Pink)
                    {
                        if (CheckBox3.Checked == true)
                        {
                            Button2.Visible = true;
                            ((Button)sender).BackColor = System.Drawing.Color.Azure;

                        }
                        else
                        {
                            Button2.Visible = false;
                            Response.Write("<script>alert('Lütfen  Bay Yanı Koltuk Seciniz!!')</script>");
                        }
                    }
                    else
                    {
                        Button2.Visible = true;
                        ((Button)sender).BackColor = System.Drawing.Color.Azure;
                    }
                }
                else
                {
                    Button2.Visible = true;
                    ((Button)sender).BackColor = System.Drawing.Color.Azure;
                }
            }
           
               
                if (CheckBox3.Checked == true)
                    Session["Cinsiyet"] = CheckBox3.Text;
                else
                    Session["Cinsiyet"] = CheckBox4.Text;
                Session["SeferId"] = ((Button)sender).SkinID;
                Session["KoltukNumarası"] = ((Button)sender).Text;
                tıklananButtonlar.Add(sender);
                for (int i = 0; i < tıklananButtonlar.Count - 1; i++)
                {
                    int id = Convert.ToInt16(((Button)tıklananButtonlar[i]).Text);
                    ((Button)arraybutton[id - 1]).BackColor = System.Drawing.Color.Gray;
                }
                if (tıklananButtonlar.Count > 2)
                    tıklananButtonlar.RemoveAt(0);
            }

            else
            {
                Response.Write("<script>alert('Lütfen Cinsiyetinizi Seçiniz!!')</script>");
               
            }
          
        }
        public void YanayanaOturma()
        {
            
        }
        public void ikiartıbirOtobüs()
        {

            Session["KoltukTipi"] = "1";
            int j = 0;
            for (int i = 0; i < Convert.ToInt16(arrayOtobüsKoltuk); i++)
            {
                Button koltuk = new Button();
            
                koltuk.Width = Unit.Pixel(50);
                koltuk.Height = Unit.Pixel(30);
                Image5.Visible = true;
                CheckBox3.Visible = true;
                CheckBox4.Visible = true;
                koltuk.BackColor = System.Drawing.Color.Gray;
                koltuk.Click += new EventHandler(koltuk_Click);
                koltuk.SkinID = arraySeferId[otobüsid].ToString();
                koltuk.Text = (i + 1).ToString();
                if (i == j)
                {
                    koltuk.Style["margin-right"] = "80px;";
                    j = j + 3;
                }

                arraybutton.Add(koltuk);
                Panel8.Controls.Add(((Button)arraybutton[i]));
                   
            }
        }
        public int Seferler()
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select*from SeferTbl where Kalkış='" + DropDownList1.SelectedItem.ToString() + "'and Varış='" + DropDownList2.SelectedItem.ToString() + "'and Tarih='" + Calendar1.SelectedDate.ToShortDateString() + "'ORDER BY Fiyat ASC", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    arraySaat.Add(reader["SeferSaati"].ToString());
                    arrayFiyat.Add(reader["Fiyat"].ToString());
                    arrayFirma.Add(reader["FirmaLogo"].ToString());
                    arrayOtobüsId.Add(reader["OtobüsId"].ToString());
                    arraySeferId.Add(reader["SeferId"].ToString());
                    AddAraçÖzelikleri(Convert.ToInt16(reader["OtobüsId"]));

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
            if (arraySaat.Count != 0)
                return 0;
            else
                return 1;
        }
        public void AddAraçÖzelikleri(int OtobüsId)
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select*from OtobüsÖzelikleriTbl where OtobüsId='" + OtobüsId+"'", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    arrayAraçTipi.Add(reader["OtobüsTipi"].ToString());
                    arrayPriz.Add(reader["Priz"].ToString());
                    arrayUsb.Add(reader["Usb"].ToString());
                    arrayTv.Add(reader["Tv"].ToString());
                    arrayLigTv.Add(reader["LigTv"]).ToString();
                    arrayWireless.Add(reader["Wireless"].ToString());

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
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Calendar1.Visible == true)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;

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
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (tarihSeçme() == false)
            {
                Button1.Text = Calendar1.SelectedDate.ToShortDateString();
                Calendar1.Visible = false;
            }
            else
            Response.Write("<script>alert('Lütfen ileri bir tarihi kontrol ediniz.!!')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BiletBilgileri.aspx");
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox3.Checked == true)
                CheckBox4.Checked = false;
            else
                CheckBox4.Checked = true;
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox4.Checked == true)
                CheckBox3.Checked = false;
            else
                CheckBox3.Checked = true;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == false)
                Calendar1.Visible = true;
            else if (Calendar1.Visible == true)
                Calendar1.Visible = false;
      
        }




    }
}