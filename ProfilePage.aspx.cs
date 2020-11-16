using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AwP_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string getGen = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                DropDownList1.Visible = false;
            }

            HttpCookie cookie = Request.Cookies["UserInfo"];
            if (cookie != null)
            {
                string getUserName = cookie["username"];
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "select * from users where Username='" + getUserName + "'";
                    cmd1.Connection = con;
                    con.Open();
                    SqlDataReader rdr = cmd1.ExecuteReader();
                    while (rdr.Read())
                    {
                        NameLabel.Text = rdr.GetString(0);
                        UserNameLabel.Text = rdr.GetString(1);
                        GmailLabel.Text = rdr.GetString(3);
                        NameTextBox.Text = rdr.GetString(0);
                        GmailTextBox.Text = GmailLabel.Text = rdr.GetString(3);
                        GenderLabel1.Text = rdr.GetString(4);
                        getGen=rdr.GetString(4);
                        
                       DOBLabel2.Text = rdr.GetString(7);// this is for profile step in wizard
                      /// DOBTextBox.Text = rdr.GetString(7);//this is for update step in Wizard
                        AddressLabel3.Text = rdr.GetString(5);//this is profile step in wizard
                      ///AddressTextBox.Text = rdr.GetString(5);//this is for update in wizard



                    }
                    



                }
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.CurrentStepIndex == 0)
            {


            }
        }

        protected void UpdateSubmitButton_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
            HttpCookie cookie = Request.Cookies["UserInfo"];
            if (cookie != null)
            {
                string getUserName = cookie["username"];
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "update Users set FullName='" + NameTextBox.Text + "',Gmail='"+GmailTextBox.Text+"',Gender='"+GenderTextBox.SelectedItem.Text+"', DOB='"+DOBTextBox.Text+"',Address='"+AddressTextBox.Text+"' where Username='" + getUserName + "'";
                    cmd1.Connection = con;
                    con.Open();
                    int i = cmd1.ExecuteNonQuery();

                    Response.Redirect("~/ProfilePage.aspx");
                   // Response.Write("one user is updated");
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
                DropDownList1.Visible = false;

            }
            else
            {
                Calendar1.Visible = true;
                DropDownList1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
           DOBTextBox.Text= Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
            DropDownList1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue!="-1")
            {

                int year = Convert.ToInt32(DropDownList1.SelectedItem.Text);
                Calendar1.VisibleDate = new DateTime(year, 1, 1);

            }
        }
    }
}