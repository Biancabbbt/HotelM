using HotelM.Models;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace HotelM.Views.Admin
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Incarcă istoricul rezervărilor pentru intervalul selectat
                LoadBookingHistory();
            }
            else
            {
                // Deselectează datele selectate dacă nu este selectată nicio dată
                if (DateIn.SelectedDate == DateTime.MinValue)
                    DateIn.SelectedDate = DateTime.Today;

                if (DateOut.SelectedDate == DateTime.MinValue)
                    DateOut.SelectedDate = DateTime.Today;
            }
        }

        protected void CalendarDateSelectionChanged(object sender, EventArgs e)
        {
            // Reîncarcă istoricul rezervărilor
            LoadBookingHistory();
        }

        protected void LoadBookingHistory()
        {
            DateTime startDate;
            DateTime endDate;

            if (DateIn.SelectedDate == DateTime.MinValue || DateOut.SelectedDate == DateTime.MinValue)
            {
                // Dacă nu sunt selectate date, se setează data de început și data de sfârșit la începutul și sfârșitul anului 2023
                startDate = new DateTime(2023, 1, 1);
                endDate = new DateTime(2023, 12, 31);
            }
            else
            {
                startDate = DateIn.SelectedDate;
                endDate = DateOut.SelectedDate;
            }

            string query = @"SELECT RId, COUNT(*) AS BookingCount
                    FROM BookingTbl
                    WHERE DateIn <= '{0}' AND (DateOut >= '{1}' OR DateOut IS NULL)
                    GROUP BY RId";

            query = string.Format(query, endDate.ToString("yyyy-MM-dd"), startDate.ToString("yyyy-MM-dd"));
            Functions Con = new Functions();
            var data = Con.GetData(query);

            DataTable table = new DataTable();
            table.Columns.Add("RId");
            table.Columns.Add("BookingCount");

            foreach (DataRow row in data.Rows)
            {
                string RIds = row["RId"].ToString();
                string[] RIdArray = RIds.Split(',');

                foreach (string RId in RIdArray)
                {
                    table.Rows.Add(RId.Trim(), row["BookingCount"].ToString());
                }
            }

            HistoryGV.DataSource = table;
            HistoryGV.DataBind();
        }
    }
}
