using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AwP_Project
{
    public partial class RegisterPage : System.Web.UI.Page
    {

        String gender;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Page LoginPage = (Page)Context.Handler;


            }
        }


       protected void Ok_Click(object sender, EventArgs e)
        {

            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "select * from users where Username='" + LoginUsername.Text + "' and Password='" + LoginPassword.Text + "'";
                cmd1.Connection = con;
                con.Open();
                SqlDataReader rdr = cmd1.ExecuteReader();

                string Username = "";
                string UserName1 = "";
                while (rdr.Read())
                {
                    Username = rdr.GetString(1);
                   
                }
                if(Username == "")
                {
                    Response.Write("<script>alert('Username or Password incorrect')</script>");
                }
                else
                {
                    //Response.Write("<script>alert('Logged In Sucessfully')</script>");
                    HttpCookie cookie = new HttpCookie("UserInfo");
                    cookie["username"] = Username;
                    Response.Cookies.Add(cookie);
                    Response.Redirect("~/findJobPage.aspx");
                    
                }
            }
            }





    

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LoginPanel.Visible = false;
            RegisterPanel.Visible = true;
        }

        protected void RegisterLinkButton_Click(object sender, EventArgs e)
        {
            LoginPanel.Visible = true;
            RegisterPanel.Visible = false;
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "Insert into users values('" + FullName.Text + "','" + Username.Text + "','" + Password.Text + "','" + Gmail.Text + "')";
                cmd1.Connection = con;
                con.Open();
                int i = cmd1.ExecuteNonQuery();
                Response.Write(i + " row[s] inserted ");
            }
        }
    }
}