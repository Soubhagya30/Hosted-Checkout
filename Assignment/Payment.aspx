﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPayment.aspx.cs" Inherits="Assignment.OrderPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Razorpay .Net Sample App</title>
</head>
<body>
    <form method="POST" action="https://api.razorpay.com/v1/checkout/embedded">
        <input type="hidden" name="key_id" value="rzp_test_xxxxxxxxxx"> 
        <input type="hidden" name="order_id" value="<%=orderId%>">
        <input type="hidden" name="name" value="Acme Corp">
        <input type="hidden" name="description" value="A Wild Sheep Chase">
        <input type="hidden" name="image" value="https://cdn.razorpay.com/logos/BUVwvgaqVByGp2_large.png">
        <input type="hidden" name="prefill[name]" value="Gaurav Kumar">
        <input type="hidden" name="prefill[contact]" value="9123456780">
        <input type="hidden" name="prefill[email]" value="gaurav.kumar@example.com">
        <input type="hidden" name="notes[shipping address]" value="L-16, The Business Centre, 61 Wellfield Road, New Delhi - 110001">
        <input type="hidden" name="callback_url" value="http://127.0.0.1:8080/Checkout">
        <input type="hidden" name="cancel_url" value="https://example.com/payment-cancel">
        <button>Pay Now</button>
    </form>
</body>
</html>
