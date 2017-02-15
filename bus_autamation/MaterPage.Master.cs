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
    public partial class MaterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["UserId"] != null)
            {
                Login1.Visible = false;
                Label1.Visible = true;
                LinkButton1.Visible = false;
                Label1.Text = Session["hosgeldin"].ToString();
                button1.Visible = true;
                if (Convert.ToInt32(Session["type"]) == 0)
                {
                    button3.Visible = true;
                }
                else
                    button3.Visible = false;
            }
            else
            {
                LinkButton1.Visible = true;
                Login1.Visible = true;
                Label1.Visible = false;
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string cnnStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(cnnStr);
            SqlCommand sqlCmd = new SqlCommand("select * from UserTbl", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = sqlCmd.ExecuteReader();
                while (reader.Read())
                {

                    if (Login1.UserName == reader["UserName"].ToString() && Login1.Password == reader["Password"].ToString() && reader["EnterType"].ToString() == "0")
                    {
                        Session["type"] = 0;
                        Session["UserId"] = reader["UserId"].ToString();
                        Session["UserName"] = reader["UserName"].ToString();
                        Login1.Visible = false;
                        Label1.Visible = true;
                        LinkButton1.Visible = false;
                        Label1.Text = Login1.UserName+"  Hoşgeldiniz";
                        Session["hosgeldin"] = Label1.Text;
                        Response.Redirect("Menü.aspx");
                        button3.Visible = true;
                        
                    }
                    else if (Login1.UserName == reader["UserName"].ToString() && Login1.Password == reader["Password"].ToString() && reader["EnterType"].ToString() == "1")
                    {
                        Session["type"] = 1;
                        Session["UserId"] = reader["UserId"].ToString();
                        Session["UserName"] = reader["UserName"].ToString();
                        Login1.Visible = false;
                        Label1.Visible = true;
                        LinkButton1.Visible = false;
                        button3.Visible = false;
                        Label1.Text = Login1.UserName + "  Hoşgeldiniz";
                        Session["hosgeldin"] = Label1.Text;
                        Response.Redirect("Anasayfa.aspx");
                        
                    }
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

        protected void button1_Click(object sender, EventArgs e)
        {
            System.Web.HttpRuntime.UnloadAppDomain();
            Login1.Visible = true;
            Label1.Visible = false;
            button1.Visible = false;
            LinkButton1.Visible = true;
            Response.Redirect("Anasayfa.aspx");
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kaydol.aspx");
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfilGörüntüle.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AnaSayfa.aspx");
        }

        protected void button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menü.aspx");
        }


    }
}