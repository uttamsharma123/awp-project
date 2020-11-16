using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AwP_Project
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        string userId="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["UserInfo"];
                if(cookie!=null)
                {
                   ProfileHyperLink.Text = cookie["username"];
                }
                //if user is not authenticated then he will redirect to login page
                else
                {
                    Response.Redirect("~/UserLoginAndRegister.aspx");
                }
            }

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Cookies["UserInfo"].Expires=DateTime.Now.AddDays(-1);
            Response.Redirect("~/UserLoginAndRegister.aspx");
        }
    }
}