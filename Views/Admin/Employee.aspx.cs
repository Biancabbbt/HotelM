using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelM.Views.Admin
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowEmployees();
        }
        Models.Functions Con;
        private void ShowEmployees()
        {
            string Query = "select * from EmployeeTbl";
            EmployeeGV.DataSource = Con.GetData(Query);
            EmployeeGV.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string EName = ENameTb.Value;
                string EPhone = EPhoneTb.Value;
                string EEmail = EEmailTb.Value;
                string Role = RoleCb.SelectedValue;
                string Query = "insert into EmployeeTbl values('{0}','{1}','{2}','{3}')";
                Query = string.Format(Query, EName, EPhone, EEmail, Role);
                Con.setData(Query);
                ShowEmployees();
                ErrMsg.InnerText = "Employee Added!!!";
                ENameTb.Value = "";
                EPhoneTb.Value = "";
                EEmailTb.Value = "";
                RoleCb.SelectedIndex = -1;
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void EmployeeGV_SelectedIndexChanged(object sender, EventArgs e)
        {

            Key = Convert.ToInt32(EmployeeGV.SelectedRow.Cells[1].Text);
            ENameTb.Value = EmployeeGV.SelectedRow.Cells[2].Text;
            EPhoneTb.Value = EmployeeGV.SelectedRow.Cells[3].Text;
            EEmailTb.Value= EmployeeGV.SelectedRow.Cells[4].Text;
            RoleCb.SelectedValue = EmployeeGV.SelectedRow.Cells[5].Text;
        }


        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Query = "delete from EmployeeTbl where EId={0}";
                Query = string.Format(Query, EmployeeGV.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowEmployees();
                ErrMsg.InnerText = "Employee Deleted!!!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}