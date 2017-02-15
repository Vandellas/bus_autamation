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
    public partial class AddBus : System.Web.UI.Page
    {
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
                    DropDownList1.DataSource = reader;
                    DropDownList1.DataValueField = "FirmaId";
                    DropDownList1.DataTextField = "FirmaName";
                    DropDownList1.DataBind();
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

 

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {

                if (CheckBox6.Checked == false)
                    CheckBox7.Checked = true;
                else
                    CheckBox7.Checked = false;
        }

        protected void CheckBox7_CheckedChanged1(object sender, EventArgs e)
        {
            
            if (CheckBox7.Checked == false)
                CheckBox6.Checked = true;
            else
                CheckBox6.Checked = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (BusControl() == true)
            {
                if (Page.IsValid == true)
                {
                    string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(cnnStr);
                    SqlCommand sqlCmd = new SqlCommand("INSERT INTO OtobüsÖzelikleriTbl (FirmaId,OtobüsName,LigTv,Tv,Wireless,Priz,Usb,OtobüsTipi,OtobüsKoltukSayısı) VALUES (@FirmaId,@OtobüsName,@LigTv,@Tv,@Wireless,@Priz,@Usb,@OtobüsTipi,@OtobüsKoltukSayısı)", connection);
                    sqlCmd.Parameters.Add("@FirmaId", System.Data.SqlDbType.Int, 20);
                    sqlCmd.Parameters["@FirmaId"].Value = DropDownList1.SelectedValue;
                    sqlCmd.Parameters.Add("@OtobüsName", System.Data.SqlDbType.NVarChar, 20);
                    sqlCmd.Parameters["@OtobüsName"].Value = TextBox1.Text;
                    sqlCmd.Parameters.Add("@Tv", System.Data.SqlDbType.Int, 1);
                    if (CheckBox1.Checked == true)
                        sqlCmd.Parameters["@Tv"].Value = 1;

                    else
                        sqlCmd.Parameters["@Tv"].Value = 0;
                    sqlCmd.Parameters.Add("@Wireless", System.Data.SqlDbType.Int, 1);
                    if (CheckBox5.Checked == true)
                        sqlCmd.Parameters["@Wireless"].Value = 1;
                    else
                        sqlCmd.Parameters["@Wireless"].Value = 0;
                    sqlCmd.Parameters.Add("@Priz", System.Data.SqlDbType.Int, 1);
                    if (CheckBox3.Checked == true)
                        sqlCmd.Parameters["@Priz"].Value = 1;
                    else
                        sqlCmd.Parameters["@Priz"].Value = 0;
                    sqlCmd.Parameters.Add("@LigTv", System.Data.SqlDbType.Int, 1);
                    if (CheckBox2.Checked == true)
                        sqlCmd.Parameters["@LigTv"].Value = 1;
                    else
                        sqlCmd.Parameters["@LigTv"].Value = 0;
                    sqlCmd.Parameters.Add("@Usb", System.Data.SqlDbType.Int, 1);
                    if (CheckBox4.Checked == true)
                        sqlCmd.Parameters["@Usb"].Value = 1;
                    else
                        sqlCmd.Parameters["@Usb"].Value = 0;
                    sqlCmd.Parameters.Add("@OtobüsTipi", System.Data.SqlDbType.NVarChar, 5);
                    if (CheckBox6.Checked == true)
                        sqlCmd.Parameters["@OtobüsTipi"].Value = CheckBox6.Text;
                    else
                        sqlCmd.Parameters["@OtobüsTipi"].Value = CheckBox7.Text;
                    sqlCmd.Parameters.Add("@OtobüsKoltukSayısı", System.Data.SqlDbType.Int, 20);
                    sqlCmd.Parameters["@OtobüsKoltukSayısı"].Value = TextBox2.Text;
                    try
                    {
                        //Bağlantımı açıyorum.
                        connection.Open();
                        //Burada ExcuteNonQuery kullanıyorum, çünkü bana geriye herhangi bir veri listesi geri dönmeyecek.
                        sqlCmd.ExecuteNonQuery();
                        //Komut çalışıp sonlandıktan sonra tekrar aynı sayfaya yönleneceğim.
                        Response.Write("<script>alert('Otobüs Başarılı şekilde kaydedilmiştir.')</script>");

                    }
                    catch
                    {
                        //hata olursa label kontrolümde mesaj yazılacak.
                        Response.Write("<script>alert('Otobüs kaydedilemedi')</script>");

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
                Response.Write("<script>alert('Bu Otobüs adı kullanılmaktadır!!')</script>");
            }
        }
        public bool BusControl()
        {
            bool control = true;
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select OtobüsName from OtobüsÖzelikleriTbl", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    if (TextBox1.Text.CompareTo(reader["OtobüsName"].ToString()) == 0)
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
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
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