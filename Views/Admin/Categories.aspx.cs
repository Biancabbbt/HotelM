using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelM.Views.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        Models.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowCategories();
                LogedUser.InnerText = Session["UserName"] as string;
            }
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string CatName = CatNameTb.Value;
                string Rem = RemarksTb.Value;
                string NumRooms = NumRoomsTb.Value;

                string Query = "insert into CategoryTbl values('{0}','{1}','{2}')";
                Query = string.Format(Query, CatName, Rem, NumRooms);
                Con.setData(Query);
                ErrMsg.InnerText = "Category Added!!!";

                // Salvează același număr de camere în baza de date RoomTbl
                int numberOfRooms = Convert.ToInt32(NumRooms);

                // Obțineți ID-ul categoriei inserate ultima dată
                string getLastCategoryIdQuery = "SELECT MAX(CatId) FROM CategoryTbl";
                int categoryId = Convert.ToInt32(Con.GetData(getLastCategoryIdQuery).Rows[0][0]);

                // Generează și inserează camerele
                for (int i = 0; i < numberOfRooms; i++)
                {
                    int roomNumber = i + 1; // Folosește un număr în loc de prefixul "Room"
                    string roomCategory = categoryId.ToString(); // Folosește ID-ul categoriei inserate ultima dată
                    string roomCost = GetCostByRemark(Rem);// Obține costul în funcție de remarca selectată
                    string roomRemarks = Rem; // Setează remarca camerei la valoarea remarcată selectată
                    DateTime startDate = DateTime.Today.AddDays(i);  // Generează date începând de azi

                    string roomQuery = "insert into RoomTbl (RNumber, RCategory, RCost, RRemarks) values('{0}','{1}','{2}','{3}')";
                    roomQuery = string.Format(roomQuery, roomNumber, roomCategory, roomCost, roomRemarks);
                    Con.setData(roomQuery);
                }

                ShowCategories();
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        private string GetCostByRemark(string remark)
        {
            switch (remark)
            {
                case "Double Room":
                    return "259";
                case "Premium King Room":
                    return "359";
                case "Deluxe Room":
                    return "299";
                case "Twin Room":
                    return "139";
                case "Room With View":
                    return "189";
                case "Small View":
                    return "119";
                default:
                    return "0";
            }
        }

        protected void CategoriesGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatNameTb.Value = CategoriesGV.SelectedRow.Cells[2].Text;
            RemarksTb.Value = CategoriesGV.SelectedRow.Cells[3].Text;
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string CatName = CatNameTb.Value;
                string Rem = RemarksTb.Value;
                string NumRooms = NumRoomsTb.Value;

                string Query = "update CategoryTbl set CatName='{0}', CatRemarks='{1}', NumRooms='{2}' where CatId={3}";
                Query = string.Format(Query, CatName, Rem, NumRooms, CategoriesGV.SelectedRow.Cells[1].Text);

                Con.setData(Query);
                ShowCategories();
                ErrMsg.InnerText = "Category Updated!!!";
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
                string categoryId = CategoriesGV.SelectedRow.Cells[1].Text;

                // Șterge camerele asociate categoriei
                string deleteRoomsQuery = "DELETE FROM RoomTbl WHERE RCategory = {0}";
                deleteRoomsQuery = string.Format(deleteRoomsQuery, categoryId);
                Con.setData(deleteRoomsQuery);

                // Șterge categoria
                string deleteCategoryQuery = "DELETE FROM CategoryTbl WHERE CatId = {0}";
                deleteCategoryQuery = string.Format(deleteCategoryQuery, categoryId);
                Con.setData(deleteCategoryQuery);

                ShowCategories();
                ErrMsg.InnerText = "Category Deleted!!!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        private void ShowCategories()
        {
            string Query = "select CatId, CatName as Categories, CatRemarks as RRemarks, NumRooms as NrRooms from CategoryTbl";
            CategoriesGV.DataSource = Con.GetData(Query);
            CategoriesGV.DataBind();
        }
    }
}
