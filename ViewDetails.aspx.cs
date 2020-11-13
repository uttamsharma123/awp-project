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

            int jobId = Convert.ToInt32(Request.QueryString["JobId"]);
            string CS = ConfigurationManager.ConnectionStrings["EnrollInJob"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "Select * from Jobs where JobID='" +jobId + "'";
                cmd1.Connection = con;
                con.Open();
                SqlDataReader rdr = cmd1.ExecuteReader();
                while (rdr.Read())
                {

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
    }
}