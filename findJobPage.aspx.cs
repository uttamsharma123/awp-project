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
        string Category = "", Location = "";
        List<string> LJobTitle = new List<string>();
        List<string> LCompanyName = new List<string>();
        List<string> LAddress = new List<string>();
        List<string> LStartDate = new List<string>();
        List<string> LSalary = new List<string>();
        List<string> LApplyDate = new List<string>();
        List<string> LDescription = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible =true;
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

                    LJobTitle.Add(rdr.GetString(1));
                    LCompanyName.Add(rdr.GetString(2));
                    LAddress.Add(rdr.GetString(3));
                    LStartDate.Add(rdr.GetString(4));
                   // LSalary.Add(rdr.GetString(5));
                   // LApplyDate.Add(rdr.GetString(6));
                   // LDescription.Add(rdr.GetString(7));


                }
                 
                if(LJobTitle.Count==2)
                {
                    JobTitle.Text = LJobTitle[0];
                    JobTitle1.Text = LJobTitle[1];
                   
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = false;

                }
                if(LJobTitle.Count==1)
                {
                    JobTitle.Text = LJobTitle[0];
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Panel3.Visible = true;
                }
                if(LJobTitle.Count!=2 && LJobTitle.Count!=1)
                {
                    Response.Write("Jobs Not Available");
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    TitlePanel.Visible = true;
                    Label1.Text = "Jobs Not Found ";
                  
                }

             


            }
        }
    }
   // Business Development Associate
       // Associate Accountant
}