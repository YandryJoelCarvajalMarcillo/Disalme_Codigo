<?php 
session_start();
error_reporting(0);
include('includes/config.php');

require 'vendor/autoload.php';

\Stripe\Stripe::setApiKey("sk_test_51KBNdvAGo4jugqa5x13LLWM5UNGWDc90sa5mamhpeOry2ruTJluCW6sZm0N7NQIZCwIrebvXXixvTh3V7cBUVgMp00Z2MwL1nb");

$token = $_POST["stripeToken"];

$charge = \Stripe\Charge::create([
  "amount" => 1500,
  "currency" => "usd",
  "description" => "Pago en mi tienda...",
  "source" => $token
]);

		mysqli_query($con,"update orders set 	paymentMethod='Debit / Credit card' where userId='".$_SESSION['id']."' and paymentMethod is null ");
		unset($_SESSION['cart']);
		header('location:order-history.php');

	
?>


<?php 