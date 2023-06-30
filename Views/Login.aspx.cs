using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelM.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            Session["UserEmail"] = "";
            Session["UId"] = "";
        }

        Models.Functions Con;

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            // Response.Redirect("Admin/Rooms.aspx");
            if (AdminCb.Checked)
            {
                if (UserTb.Value == "Admin@yahoo.com" && PasswordTb.Value == "Password")
                {
                    Session["UserEmail"] = "Admin@yahoo.com";
                    Response.Redirect("Admin/Rooms.aspx");
                }
                else
                {
                    ErrMsg.InnerText = "Invalid Email address or password!";
                }
            }
            else
            {
                //  Session["UserEmail"] = "Admin";
                string Query = "select UId,UName,UPass from UserTbl where UName='{0}' and UPass='{1}'";
                Query = string.Format(Query, UserTb.Value, PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if (dt.Rows.Count == 0)
                {
                    ErrMsg.InnerText = "Invalid Email address!";
                }
                else
                {
                    Session["UserEmail"] = dt.Rows[0][1].ToString();
                    Session["UId"] = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("Users/About.aspx");
                }
            }
        }
    }
}
