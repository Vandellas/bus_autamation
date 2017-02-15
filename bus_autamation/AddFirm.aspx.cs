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
    public partial class AddFirm : System.Web.UI.Page
    {
       static String LogoUrl;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == false || Page.IsValid == true)
            {
                if (FileUpload1.HasFile)
                {
                    String filextenssion = System.IO.Path.GetExtension(FileUpload1.FileName);
                    if (filextenssion.ToLower() == ".png" || filextenssion.ToLower() == ".jpg")
                    {
                        String Filename = FileUpload1.FileName;
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("Data/" + FileUpload1.FileName));
                        LogoUrl = "Data/" + FileUpload1.FileName;
                        ImageButton1.ImageUrl = LogoUrl;
                        Label4.Text = "";
                    }
                    else
                    {
                        Label4.Text = "Lütfen jpg veya png türü dosya yükleme yapınız";
                        ImageButton1.ImageUrl = "~/picture/images.jpg";

                    }


                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FirmControl() == true)
            {
                if (Page.IsValid == true)
                {
                    string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(cnnStr);
                    SqlCommand sqlCmd = new SqlCommand("INSERT INTO FirmaTbl (FirmaName,FirmaLogo,FirmaTelNo,FirmaMerkezAdresi,FirmaWebSite) VALUES (@FirmaName,@FirmaLogo,@FirmaTelNo,@FirmaMerkezAdresi,@FirmaWebSite)", connection);
                    sqlCmd.Parameters.Add("@FirmaName", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@FirmaName"].Value = TextBox2.Text;
                    sqlCmd.Parameters.Add("@FirmaLogo", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@FirmaLogo"].Value = LogoUrl;
                    sqlCmd.Parameters.Add("@FirmaTelNo", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@FirmaTelNo"].Value = TextBox1.Text;
                    sqlCmd.Parameters.Add("@FirmaMerkezAdresi", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@FirmaMerkezAdresi"].Value = TextBox4.Text;
                    sqlCmd.Parameters.Add("@FirmaWebSite", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@FirmaWebSite"].Value = TextBox3.Text;

                    try
                    {
                        //Bağlantımı açıyorum.
                        connection.Open();
                        //Burada ExcuteNonQuery kullanıyorum, çünkü bana geriye herhangi bir veri listesi geri dönmeyecek.
                        sqlCmd.ExecuteNonQuery();
                        //Komut çalışıp sonlandıktan sonra tekrar aynı sayfaya yönleneceğim.
                        Response.Write("<script>alert('Firma Başrılı şekilde kaydedildi!!')</script>");

                    }
                    catch
                    {
                        Response.Write("<script>alert('Firma kaydedilemedi!!')</script>");
                        //hata olursa label kontrolümde mesaj yazılacak.

                    }
                    finally
                    {
                        //Bağlantımı kapatıyorum.
                        connection.Close();
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Bu Firma adı kullanılmaktadır!!')</script>");
            }
        }
        public bool FirmControl()
        {
            bool control = true;
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select FirmaName from FirmaTbl", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    if (TextBox2.Text.CompareTo(reader["FirmaName"].ToString()) == 0)
                        control = false
;


                }
                reader.Close();
                connection.Close();
                //Baglanti saglandi...
                return control;
            }
            catch //(Exception)
            {

                connection.Close();
                //Baglanti kurulamadi...
            }
            return control;
        }
        protected void FileUpload1_DataBinding(object sender, EventArgs e)
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
    }
}