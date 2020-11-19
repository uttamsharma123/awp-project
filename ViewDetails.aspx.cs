using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AwP_Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MsgPanel.Visible = false;
            /*when page loads at that time msgPagnel visibility will be false
            // TitlePanel.Visible = false;
            */

 /*this jobid is comming from findjobpage when user will click 
  * on view details then that come in the form of query string ?JobID=""
   */
            int jobId = Convert.ToInt32(Request.QueryString["JobId"]);

         
//this is connection string which we have configured in web.config file
            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand();
                //we are retrieving all details of jobs where JobID is equal to queryString which click on 
                //view details button from job
                cmd1.CommandText = "Select * from Jobs where JobID='" +jobId + "'";//
                cmd1.Connection = con;
                con.Open();
                //rdr which holds all details of jobs 
                SqlDataReader rdr = cmd1.ExecuteReader();
                while (rdr.Read())//here we are accessing with the help of Read() method
                {
                    /*
                     *rdr.GetString(1) means 2nd column JobTitle which datatype is varchar() 
                     */
                    
                    JobTitle.Text = rdr.GetString(1);
                    Address.Text = rdr.GetString(3);
                    CompanyName.Text = rdr.GetString(2);
                    CompanyName1.Text = rdr.GetString(2);

                    StartDate.Text = rdr.GetString(4);
                    Salary.Text = Convert.ToString(rdr.GetSqlMoney(5));
                    ApplyDate.Text = Convert.ToString(rdr.GetDateTime(6));
                    AboutCompany.Text = rdr.GetString(9);
                    SkillRequired.Text = rdr.GetString(10);

                }
            }
        }

        protected void ApplyNowBtn_Click(object sender, EventArgs e)
        {
            
            HttpCookie cookie = Request.Cookies["UserInfo"];
            string getUserName = "";
            if (cookie != null)
            {
                /*Here When User will Click on ApplyNow Button  Then he will get msg with his name where name
                 * is stored on his local storage 
                 */


                getUserName = cookie["fullname"];
                HelloName.Text = "Hello "+getUserName;
            }
                MsgPanel.Visible = true;
            TitlePanel.Visible = false;
            
        }

        protected void GoHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FindJobPage.aspx");//Redirect to findJopPage
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FindJobPage.aspx");//Redirect to findJopPage
        }
    }
}