using HotelM.Views.Admin;
using Microsoft.OData.Edm;
using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace HotelM.Views.Users
{
    public partial class Booking_Premium : System.Web.UI.Page
    {
        private int totalNumberOfRooms = 10; // Numărul total de camere

        protected void BookBtn_Click(object sender, EventArgs e)
        {
            // Preiați valorile introduse de utilizator
            string RId = RoomTb.Value; // Id-ul camerei
            string UserId = Session["UId"]?.ToString(); // Actualizați această linie pentru a prelua corect UserId
            string NrRoomsValue = NrRoomsTb.Value; // Preiați valoarea selectată din meniul derulant
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
                        DateTime DateIn = DateTime.Parse(DateInTb.Value); // Data sosirii
                        DateTime DateOut = DateTime.Parse(DateOutTb.Value); // Data plecării
                        int amount = int.Parse(AmountTb.Value); // Suma

                        // Verificați disponibilitatea în baza de date
                        if (CheckAvailability(roomIds, DateIn, DateOut))
                        {
                            // Camera este disponibilă
                            InsertBooking(roomIds, DateIn, DateOut, amount, UserId, NrRooms);
                            Response.Redirect($"Confirmation.aspx?roomId={RId}&nrRooms={NrRooms}&dateIn={DateIn}&dateOut={DateOut}&amount={amount}&userId={UserId}");
                        }
                        else
                        {
                            // Camera nu este disponibilă
                            ErrMsg.InnerText = "Camera nu este disponibilă pentru datele selectate.";
                        }
                    }
                    else
                    {
                        ErrMsg.InnerText = "Numărul invalid de camere selectat.";
                    }
                }
            }
        }


        private bool CheckAvailability(List<string> roomIds, DateTime dateIn, DateTime dateOut)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\40766\\DOCUMENTS\\HOTELASP.MDF;Integrated Security=True;Connect Timeout=30;";

            string allRoomIds = string.Join(",", roomIds); // Combinați ID-urile camerelor într-un șir separat prin virgule

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Verificați dacă oricare dintre ID-urile camerelor sunt deja rezervate pentru perioada selectată
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM BookingTbl WHERE RId IN (SELECT value FROM STRING_SPLIT(@RId, ',')) AND (@DateIn < DateOut AND @DateOut > DateIn)", conn);
                cmd.Parameters.AddWithValue("@RId", allRoomIds);
                cmd.Parameters.AddWithValue("@DateIn", dateIn);
                cmd.Parameters.AddWithValue("@DateOut", dateOut);

                int count = (int)cmd.ExecuteScalar();

                conn.Close();

                // Returnați true dacă nu s-au găsit rezervări suprapuse
                return count == 0;
            }
        }

        private void InsertBooking(List<string> roomIds, DateTime DateIn, DateTime DateOut, int amount, string UserId, int NrRooms)
        {
            // Stabiliți conexiunea la baza de date
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\40766\\DOCUMENTS\\HOTELASP.MDF;Integrated Security=True;Connect Timeout=30;";
            TimeSpan difference = DateOut - DateIn;
            int differenceInDays = (int)difference.TotalDays;
            int sum = differenceInDays * amount * NrRooms;

            string allRoomIds = string.Join(",", roomIds); // Combinați ID-urile camerelor într-un șir separat prin virgule

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // Deschideți conexiunea
                conn.Open();

                // Verificați disponibilitatea camerelor înainte de a introduce rezervarea
                if (!CheckAvailability(roomIds, DateIn, DateOut))
                {
                    // Camerele nu sunt disponibile pentru perioada selectată, gestionați eroarea sau afișați un mesaj
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

                // Închideți conexiunea
                conn.Close();
            }
        }

    }
}
