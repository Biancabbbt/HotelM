using System;
using System.Web.UI.WebControls;

namespace HotelM.Views.Users
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Recuperează detaliile rezervării din pagina anterioară sau din baza de date
                string roomId = Request.QueryString["roomId"];
                string nrRooms = Request.QueryString["nrRooms"];
                string dateIn = Request.QueryString["dateIn"];
                string dateOut = Request.QueryString["dateOut"];
                string sum = Request.QueryString["amount"];
                // Setează detaliile rezervării în etichetele (Label)
                RoomIdLabel.Text = roomId; 
                NrRoomsLabel.Text = nrRooms; 
                DateInLabel.Text = dateIn; 
                DateOutLabel.Text = dateOut; 
                AmountLabel.Text = sum; 

                // Realizează orice prelucrări suplimentare sau actualizări în baza de date, dacă este necesar

                // Calculează suma totală
                decimal amountPerRoom = decimal.Parse(sum); 
                int numberOfRooms = int.Parse(nrRooms); 
                DateTime checkInDate = DateTime.Parse(dateIn); 
                DateTime checkOutDate = DateTime.Parse(dateOut); 
                int numberOfNights = (int)(checkOutDate - checkInDate).TotalDays;
                decimal totalAmount = amountPerRoom * numberOfRooms * numberOfNights; 


                // Afișează suma totală
                TotalAmountLabel.Text = totalAmount.ToString("C"); 

                ConfirmationLabel.Text = "Rezervarea dvs. a fost confirmată!";
            }
        }

        protected void PayNowButton_Click(object sender, EventArgs e)
        {
            // Recuperează informațiile necesare din etichete (Label)
            string roomId = RoomIdLabel.Text; 
            string nrRooms = NrRoomsLabel.Text; 
            string dateIn = DateInLabel.Text; 
            string dateOut = DateOutLabel.Text;
            string sum = AmountLabel.Text;
            string paypalUrl = "https://www.paypal.com";
            // Adaugă parametrii în URL-ul PayPal utilizând parametrii de interogare
            paypalUrl += "?roomId=" + roomId;
            paypalUrl += "&nrRooms=" + nrRooms;
            paypalUrl += "&dateIn=" + dateIn;
            paypalUrl += "&dateOut=" + dateOut;
            paypalUrl += "&amount=" + sum;

            Response.Redirect(paypalUrl);
        }
    }
}