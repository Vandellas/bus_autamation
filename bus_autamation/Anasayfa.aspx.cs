using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Collections;
using System.IO;


namespace bus_autamation
{
    
    public partial class Anasayfa : System.Web.UI.Page
    {

        ArrayList array = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (TextBox2.Text == "")
                TextBox2.Text=DateTime.Now.ToShortDateString();
            Addimage();

             foreach(object eleman in array)
             {
                 ImageButton image = new ImageButton();
                 FileInfo fileınfo = new FileInfo(eleman.ToString());
                 image.ImageUrl = eleman.ToString();
                 image.Width = Unit.Pixel(100);
                 image.Height = Unit.Pixel(50);
                 image.BorderStyle = BorderStyle.Solid;
                 image.BackColor = System.Drawing.Color.Black;
                 image.Style.Add("padding", "5px");
                 Panel3.Controls.Add(image);
             }

        }
        public void Addimage()
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select FirmaLogo from FirmaTbl", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    array.Add(reader["FirmaLogo"].ToString());


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
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == false)
                Calendar1.Visible = true;
            else if (Calendar1.Visible == true)
                Calendar1.Visible = false;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == false)
                Calendar1.Visible = true;
            else if (Calendar1.Visible == true)
                Calendar1.Visible = false;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["Nerden"] = DropDownList3.SelectedIndex;
            Session["Nereye"] = DropDownList4.SelectedIndex;
            Session["Tarih"] = TextBox2.Text;
           Response.Redirect("BiletAlma.aspx");
        }

        protected void Calendar1_SelectionChanged2(object sender, EventArgs e)
        {
            if (tarihSeçme() == false)
            {

                TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
                Calendar1.Visible = false;
            }
            else
            {
                Response.Write("<script>alert('Lütfen ileri bir tarihi kontrol ediniz.!!')</script>");
            }
        }
        public bool tarihSeçme()
        {
            int yılcal = Calendar1.SelectedDate.Year * 365;
            int aycal = Calendar1.SelectedDate.Month*30;
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
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (KodKontrol() == true)
            {
                Session["BiletKodu"] = TextBox3.Text;
                Response.Redirect("BiletGörüntüle.aspx");
                
            }

            else
            {
                Response.Write("<script>alert('Lütfen Kodunuzu Kontrol Ediniz!!')</script>");
            }
        }
        public bool KodKontrol()
        {
            bool control=false;
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select Kode from BiletBilgileri", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    if (TextBox3.Text == reader["Kode"].ToString())
                        control = true;



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
            return control;
        }
        

    }
}