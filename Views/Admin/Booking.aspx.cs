using HotelM.Views.Admin;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelM.Views.Admin
{
    public partial class Booking : System.Web.UI.Page
    {
        Models.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowBookings();
        }

        private void ShowBookings()
        {
            string Query = "select * from BookingTbl";
            BookingGV.DataSource = Con.GetData(Query);
            BookingGV.DataBind();
        }

        protected void BookingGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            UserTb.Value = BookingGV.SelectedRow.Cells[6].Text;
            AmountTb.Value = BookingGV.SelectedRow.Cells[5].Text;
            RoomTb.Value = BookingGV.SelectedRow.Cells[2].Text;
            NrRoomsTb.Value = BookingGV.SelectedRow.Cells[7].Text;

            DateTime dateIn;
            DateTime dateOut;

            if (DateTime.TryParseExact(DateInTb.Value, "MM/dd/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out dateIn) &&
                DateTime.TryParseExact(DateOutTb.Value, "MM/dd/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out dateOut))
            {
                TimeSpan value = dateOut.Subtract(dateIn);
            }
            else
            {
                // DateTime parsing esec
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string bookingId = BookingGV.SelectedRow.Cells[1].Text;
                string roomId = BookingGV.SelectedRow.Cells[2].Text;
                string deleteQuery = "DELETE FROM BookingTbl WHERE BId = {0}";
                deleteQuery = string.Format(deleteQuery, bookingId);
                Con.setData(deleteQuery);

                ShowBookings();
                ErrMsg.InnerText = "Reservation canceled!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}