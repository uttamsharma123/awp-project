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
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;

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
                        UserNameTextBox.Text = rdr.GetString(1);

                    }




                }
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if(e.CurrentStepIndex==0)
            {
                
               
            }
        }
    }
}