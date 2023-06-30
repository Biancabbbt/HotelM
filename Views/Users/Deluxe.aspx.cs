using HotelM.Views.Admin;
using Microsoft.OData.Edm;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace HotelM.Views.Users
{
    public partial class Deluxe: System.Web.UI.Page
    {
        private int totalNumberOfRooms = 20;

        protected void BookBtn_Click(object sender, EventArgs e)
        {
            // Retrieve values entered by the user
            string RId = RoomTb.Value;
            string UserId = Session["UId"]?.ToString(); // Update this line to correctly retrieve the UserId
            string NrRoomsValue = NrRoomsTb.Value; // Retrieve the selected value from the dropdown
            int NrRooms;
            if (int.TryParse(NrRoomsValue, out NrRooms))
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\40766\\DOCUMENTS\\HOTELASP.MDF;Integrated Security=True;Connect Timeout=30;";
                using (SqlConnection Conn = new SqlConnection(connectionString))
                {
                    Conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT TOP (@NrRooms) RId FROM RoomTbl WHERE RRemarks = @RoomId ORDER BY NEWID()", Conn);
                    cmd.Parameters.AddWithValue("@RoomId", RId);
                    cmd.Parameters.AddWithValue("@NrRooms", NrRooms);
                    SqlDataReader reader = cmd.ExecuteReader();
                    List<string> roomIds = new List<string>();
                    while (reader.Read())
                    {
                        roomIds.Add(reader["RId"].ToString());
                    }
                    reader.Close();

                    if (roomIds.Count == NrRooms)
                    {
                        DateTime DateIn = DateTime.Parse(DateInTb.Value);
                        DateTime DateOut = DateTime.Parse(DateOutTb.Value);
                        int amount = int.Parse(AmountTb.Value);

                        // Check availability in the database
                        if (CheckAvailability(roomIds, DateIn, DateOut))
                        {
                            // Room is available
                            InsertBooking(roomIds, DateIn, DateOut, amount, UserId, NrRooms);
                            Response.Redirect($"Confirmation.aspx?roomId={RId}&nrRooms={NrRooms}&dateIn={DateIn}&dateOut={DateOut}&amount={amount}&userId={UserId}");
                        }
                        else
                        {
                            // Room is not available
                            ErrMsg.InnerText = "Room is not available for the selected dates.";
                        }
                    }
                    else
                    {
                        ErrMsg.InnerText = "Invalid number of rooms selected.";
                    }
                }
            }
        }


        private bool CheckAvailability(List<string> roomIds, DateTime dateIn, DateTime dateOut)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\40766\\DOCUMENTS\\HOTELASP.MDF;Integrated Security=True;Connect Timeout=30;";

            string allRoomIds = string.Join(",", roomIds); // Combine room IDs into a comma-separated string

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Check if any of the room IDs are already booked for the selected period
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM BookingTbl WHERE RId IN (SELECT value FROM STRING_SPLIT(@RId, ',')) AND (@DateIn < DateOut AND @DateOut > DateIn)", conn);
                cmd.Parameters.AddWithValue("@RId", allRoomIds);
                cmd.Parameters.AddWithValue("@DateIn", dateIn);
                cmd.Parameters.AddWithValue("@DateOut", dateOut);

                int count = (int)cmd.ExecuteScalar();

                conn.Close();

                // Return true if no overlapping bookings found
                return count == 0;
            }
        }

        private void InsertBooking(List<string> roomIds, DateTime DateIn, DateTime DateOut, int amount, string UserId, int NrRooms)
        {
            // Establish the database connection
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\40766\\DOCUMENTS\\HOTELASP.MDF;Integrated Security=True;Connect Timeout=30;";
            TimeSpan difference = DateOut - DateIn;
            int differenceInDays = (int)difference.TotalDays;
            int sum = differenceInDays * amount * NrRooms;

            string allRoomIds = string.Join(",", roomIds); // Combine room IDs into a comma-separated string

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // Open the connection
                conn.Open();

                // Check room availability before inserting the booking
                if (!CheckAvailability(roomIds, DateIn, DateOut))
                {
                    // Rooms are not available for the selected period, handle the error or display a message
                    return;
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO BookingTbl (RId, DateIn, DateOut, Amount, UserId, nrRooms) VALUES (@RId, @DateIn, @DateOut, @Amount, @UserId, @nrRooms)", conn);
                cmd.Parameters.AddWithValue("@RId", allRoomIds);
                cmd.Parameters.AddWithValue("@DateIn", DateIn);
                cmd.Parameters.AddWithValue("@DateOut", DateOut);
                cmd.Parameters.AddWithValue("@Amount", sum);
                cmd.Parameters.AddWithValue("@UserId", UserId);
                cmd.Parameters.AddWithValue("@nrRooms", NrRooms);
                cmd.ExecuteNonQuery();

                // Close the connection
                conn.Close();
            }
        }

    }
}

