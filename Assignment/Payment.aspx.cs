using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class OrderPayment : System.Web.UI.Page
    {
        public string orderId;
        protected void Page_Load(object sender, EventArgs e)
        {
            //inputs for the orders

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", 100); // this amount should be same as transaction amount
            input.Add("currency", "INR");
            input.Add("receipt", "12121");
            input.Add("payment_capture", 1);

            //RazorPay API ID and secret key
            string key = "rzp_test_2pjQoIV7c1RY6C";
            string secret = "nWwe91xQO3NIDzJUp1mUmr9O";

            RazorpayClient client = new RazorpayClient(key, secret);

            //order creation
            Razorpay.Api.Order order = client.Order.Create(input);

            //order id of new order
            orderId = order["id"].ToString();


        }
    }
}