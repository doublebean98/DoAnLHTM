using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace DoanManhTuyen
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void btnlogin_Click(object sender, EventArgs e)
        { string username;
            string pass;
            username = "admin";
            pass = "admin";
            if(username==txtusername.Text && pass==txtpass.Text)
            {
                Session["Username"] = username;
                Response.Redirect("homepage.aspx");
               
            }
            else
            {
                Response.Write("Login Fail!");
                Response.Write(txtusername.ToString());
            }

        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtpass_TextChanged(object sender, EventArgs e)
        {

        }
    }
}