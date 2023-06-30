using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelM.Views
{
    public partial class Register : System.Web.UI.Page
    {
        private Models.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string UName = UNameTb.Value;
                string UPhone = PhoneTb.Value;
                string UGen = GenCb.Value;
                string UAdd = AdressTb.Value;
                string UPass = PasswordTb.Value;

                string Query = "INSERT INTO UserTbl (UName, UPhone, UGen, UAdd, UPass) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')";
                Query = string.Format(Query, UName, UPhone, UGen, UAdd, UPass);
                Con.setData(Query);

                UNameTb.Value = "";
                PhoneTb.Value = "";
                GenCb.SelectedIndex = -1;
                AdressTb.Value = "";
                PasswordTb.Value = "";
                ErrMsg.Text = "Utilizatorul s-a inregistrat cu succes!";

                Response.AddHeader("REFRESH", "2;URL=Login.aspx");
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }
    }
}
