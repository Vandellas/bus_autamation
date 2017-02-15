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
    public partial class Kaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (UserControl()== true)
            {
                if (Page.IsValid)
                {
                    string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(cnnStr);
                    SqlCommand sqlCmd = new SqlCommand("INSERT INTO UserTbl (UserName,Password,EnterType,Email,Ad,Soyad,Cinsiyet,Telefonnumarası) VALUES (@UserName,@Password,@EnterType,@Email,@Ad,@Soyad,@Cinsiyet,@Telefonnumarası)", connection);
                    sqlCmd.Parameters.Add("@UserName", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@UserName"].Value = TextBox3.Text;
                    sqlCmd.Parameters.Add("@Email", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@Email"].Value = TextBox4.Text;
                    sqlCmd.Parameters.Add("@Password", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@Password"].Value = TextBox5.Text;
                    sqlCmd.Parameters.Add("@EnterType", System.Data.SqlDbType.Int, 1);
                    sqlCmd.Parameters["@EnterType"].Value = 1;
                    sqlCmd.Parameters.Add("@Cinsiyet", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@Cinsiyet"].Value = DropDownList1.SelectedItem.ToString();
                    sqlCmd.Parameters.Add("@Telefonnumarası", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@Telefonnumarası"].Value = TextBox7.Text;
                    sqlCmd.Parameters.Add("@Ad", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@Ad"].Value = TextBox1.Text;
                    sqlCmd.Parameters.Add("@Soyad", System.Data.SqlDbType.NVarChar, 50);
                    sqlCmd.Parameters["@Soyad"].Value = TextBox2.Text;

                    try
                    {
                        //Bağlantımı açıyorum.
                        connection.Open();
                        //Burada ExcuteNonQuery kullanıyorum, çünkü bana geriye herhangi bir veri listesi geri dönmeyecek.
                        sqlCmd.ExecuteNonQuery();
                        //Komut çalışıp sonlandıktan sonra tekrar aynı sayfaya yönleneceğim.
                        Response.Write("<script>alert('Kaydınız başarılı şekilde gerçekleşti.')</script>");
                    }
                    catch
                    {
                        //hata olursa label kontrolümde mesaj yazılacak.
                        Response.Write("<script>alert('Lütfen bilgilerinizi kontrol ediniz kaydınız gerçekleştirlemedi.')</script>");

                    }
                    finally
                    {
                        //Bağlantımı kapatıyorum.
                        connection.Close();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Lütfen bilgilerinizi kontrol ediniz kaydınız gerçekleştirlemedi.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Bu kullanıcı adı kullanılmaktadır!!')</script>");
            }
        }
        public bool  UserControl()
        {
            bool control=true;
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select UserName from UserTbl", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    if (TextBox3.Text.CompareTo(reader["UserName"].ToString()) == 0)
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Page.IsValid == false)
            {
                Response.Redirect("Anasayfa.aspx");
            }
            else
            {
                Response.Redirect("Anasayfa.aspx");
            }
        }

    }
}