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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string Category = "", Location = "", JOBID="";
        int jobId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                Panel3.Visible = false;
                string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
                using(SqlConnection con=new SqlConnection(CS))
                {
                    /**creating SqlCommand for Category DropDown list to sotre category name from database */
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = "Select CategoryId, CategoryName from JobCategory";
                    cmd1.Connection = con;
                    con.Open();//open connection for all 
                    SqlDataReader rdr1 = cmd1.ExecuteReader();
                    CategoryDropDown.DataTextField = "CategoryName";
                    CategoryDropDown.DataValueField = "CategoryId";
                    CategoryDropDown.DataSource = rdr1;
                    CategoryDropDown.DataBind();
                    ListItem l1 = new ListItem("Select Category","-1");
                    CategoryDropDown.Items.Insert(0,l1);
                   
                    rdr1.Close();//close rdr1 SqlDataReader to write another new Query 
                    /*******************************************************/
                    /** creating SqlCommand for Location dropdown to store city name from database */
                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.CommandText = "Select PinCode,CityName from cities";
                    cmd2.Connection = con;
                    
                    SqlDataReader rdr2 =cmd2.ExecuteReader();
                    LocationDropDownList.DataTextField = "CityName";
                    LocationDropDownList.DataValueField = "PinCode";
                    LocationDropDownList.DataSource = rdr2;
                    LocationDropDownList.DataBind();
                    ListItem selectLocation = new ListItem("Select Location", "-1");
                    LocationDropDownList.Items.Insert(0, selectLocation);
                    rdr2.Close();

                    /***************************************************************/





                }
            }
        }

        protected void CategoryDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

       

       

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if(CategoryDropDown.SelectedItem.Value != "-1")
            {
                Category=CategoryDropDown.SelectedItem.Text;

            }
            if(LocationDropDownList.SelectedValue!="-1")
            {
                Location = LocationDropDownList.SelectedItem.Text;
            }
            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                // Response.Write("Category =" + Category + "<BR> Location " + Location);
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "Select * from Jobs where JobType='" + Category + "' and Address='" + Location + "'";
                cmd1.Connection = con;
                con.Open();
                SqlDataReader rdr = cmd1.ExecuteReader();
               
                while (rdr.Read())
                {
                    jobId = rdr.GetInt32(0);
                  
                    JobTitle.Text = rdr.GetString(1);
                    Address.Text = rdr.GetString(3);
                    CompanyName.Text = rdr.GetString(2);
                    StartDate.Text = rdr.GetString(4);
                    Salary.Text = Convert.ToString(rdr.GetSqlMoney(5));
                    ApplyDate.Text = Convert.ToString(rdr.GetDateTime(6));


                }
                if(jobId==0)
                {
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    Panel3.Visible = true;
                }
                else
                {
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                }
            }

            JobTitle12.Text = "In " + LocationDropDownList.SelectedItem.Text;//this is used to show in which location jobs are available

           // Response.Redirect("~/ViewDetails.aspx?JobId=" + JOBID);






        }
        protected void ViewDetails_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "Select * from Jobs where JobType='" + CategoryDropDown.SelectedItem.Text + "' and Address='" +LocationDropDownList.SelectedItem.Text + "'";
                cmd1.Connection = con;
                con.Open();
                SqlDataReader rdr = cmd1.ExecuteReader();
                while(rdr.Read())
                {
                    JOBID =Convert.ToString( rdr.GetInt32(0));
                }
            }
            Response.Redirect("~/ViewDetails.aspx?JobId=" + JOBID);

        }
    }
    }
   