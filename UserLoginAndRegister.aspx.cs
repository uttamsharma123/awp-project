using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
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

        }


        protected void Ok_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-64FVPV9;Initial Catalog=registration;Integrated Security=True");

                con.Open();
                // con.Close();
                Response.Write("<script>alert'Registered Successfully')</script>");
                //SqlConnection con = new SqlConnection("Data Source=DESKTOP-64FVPV9;Initial Catalog=registration;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("INSERT  INTO users VALUES('" + Username.Text + "', '" + FullName.Text + "','" + Password.Text + "','" + ConfirmPassword.Text + "','" + Gmail.Text + "')", con);


                cmd.ExecuteNonQuery();
                Response.Write("Registered Successfully");
               
               /* TextBox2.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                DropDownList1.SelectedIndex = 0;
                RadioButtonList1.SelectedIndex = 0;*/

            }
            catch (Exception)
            {
                Response.Write("User Already Exists");


            }





        }


        protected void Button2_Click(object sender, EventArgs e)
        {
           /* TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            DropDownList1.SelectedIndex = 0;
            RadioButtonList1.SelectedIndex = -1;*/

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            gender = "male";
            gender = "female";
            gender = "others";
        }

       
    }
}