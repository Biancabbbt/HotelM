using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelM.Views.Admin
{
    public partial class Rooms : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowRooms();
            GetCategories();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowRooms()
        {
            string Query = "select * from RoomTbl";
            RoomsGV.DataSource = Con.GetData(Query);
            RoomsGV.DataBind();
        }
        private void GetCategories()
        {
            string Query = "Select * from CategoryTbl";
            
            RCategoryCb.DataTextField = Con.GetData(Query).Columns["CatName"].ToString();
            RCategoryCb.DataValueField = Con.GetData(Query).Columns["CatId"].ToString();
            RCategoryCb.DataSource = Con.GetData(Query);
            RCategoryCb.DataBind();

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RNumber = RNumberTb.Value;
                string RCategory = RCategoryCb.SelectedValue.ToString();              
                string Cost = CostTb.Value;
                string Rem = RemarksTb.Value;
                string Query = "insert into RoomTbl values('{0}','{1}','{2}','{3}')";
                Query = string.Format(Query, RNumber, RCategory, Cost, Rem);
                Con.setData(Query);
                ShowRooms();
                ErrMsg.InnerText = "Room Added!!!";
                RNumberTb.Value = "";
                RCategoryCb.SelectedIndex = -1;
                CostTb.Value = "";
                RemarksTb.Value = "";

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        public string GetCategoryByRemark(string remark)
        {
            string query = "SELECT RCategory FROM RoomTbl WHERE RRemarks = '{0}'";
            query = string.Format(query, remark);
            DataTable result = Con.GetData(query);
            if (result.Rows.Count > 0)
            {
                return result.Rows[0]["RCategory"].ToString();
            }
            return string.Empty;
        }
        int Key = 0;
        protected void RoomsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            Key = Convert.ToInt32(RoomsGV.SelectedRow.Cells[1].Text);
            RNumberTb.Value = RoomsGV.SelectedRow.Cells[2].Text;
            RCategoryCb.SelectedValue = RoomsGV.SelectedRow.Cells[3].Text;
            CostTb.Value = RoomsGV.SelectedRow.Cells[4].Text;
            RemarksTb.Value = RoomsGV.SelectedRow.Cells[5].Text;

            // Obține RCategory corespunzător RRemarks selectat
            string rRemark = RemarksTb.Value;
            string rCategory = GetCategoryByRemark(rRemark);
            if (!string.IsNullOrEmpty(rCategory))
            {
                RCategoryCb.SelectedValue = rCategory;
            }

            // Populează etichetele cost și remarci pe baza categoriei selectate
            string selectedCategory = RCategoryCb.SelectedValue;
            string query = "SELECT CatRemarks, Cost FROM CategoryTbl WHERE CatId = {0}";
            query = string.Format(query, selectedCategory);
            DataTable categoryData = Con.GetData(query);
            if (categoryData.Rows.Count > 0)
            {
                RemarksTb.Value = categoryData.Rows[0]["CatRemarks"].ToString();
                CostTb.Value = categoryData.Rows[0]["Cost"].ToString();
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {

            try
            {
                string RNumber = RNumberTb.Value;
                string RCategory = RCategoryCb.SelectedValue.ToString();
                string Cost = CostTb.Value;
                string Rem = RemarksTb.Value;
                string Query = "update RoomTbl set RNumber='{0}',RCategory='{1}',RCost='{2}',RRemarks='{3}', where RId={4}";
                Query = string.Format(Query, RNumber, RCategory, Cost, Rem, RoomsGV.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowRooms();
                ErrMsg.InnerText = "Room Updated!!!";
                RNumberTb.Value = "";
                RCategoryCb.SelectedIndex = -1;
                CostTb.Value = "";
                RemarksTb.Value = "";

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Query = "delete from RoomTbl where RId={0}";
                Query = string.Format(Query, RoomsGV.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowRooms();
                ErrMsg.InnerText = "Room Deleted!!!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}