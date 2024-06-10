<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="assests/css/1adminlogin.css"> 
    <link rel="stylesheet" href="assests/css/Header.css"> 
     <link rel="stylesheet" href="assests/css/paymentform.css.css"> 
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
    
    <style>
       
    /* Style the <nav> element */
    nav {
        background-color: blue; /* Background color for the navigation bar */
        padding: 10px; /* Add padding for spacing */
    }
    
    /* Style the <ul> element (unordered list) within the navigation */
    ul {
        list-style-type: none; /* Remove default list bullets */
        margin: 0;
        padding: 0;
        display: flex; /* Display list items as flex items */
    }
    
    /* Style the list items (<li>) */
    li {
        margin-right: 5px; /* Add some space between list items */
    }
    
    /* Style the anchor links (<a>) */
    li a {
        text-decoration: none; /* Remove underline from anchor links */
        color: red; /* Text color for the links */
    }

    /* Style the form button */
    input[type="submit"] {
        background-color: #ffcc00; /* Button background color */
        color: #333; /* Button text color */
        border: none; /* Remove button border */
        padding: 8px 16px; /* Add padding to the button */
        cursor: pointer; /* Change cursor to a pointer on hover */
    }
    
    /* Style the form button on hover */
    input[type="submit"]:hover {
        background-color: #ff9900; /* Change button background color on hover */
        color: #fff; /* Change button text color on hover */
        
        
    }
    
     .header-bar {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        .header-bar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }
        .header-bar a:hover {
            text-decoration: underline;
        }
         .footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .footer img {
            margin: 0 10px;
            width: 40px;
            height: 40px;
            animation: bounce 1s infinite alternate;
        }
        @keyframes bounce {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-10px);
            }
</style>
  

    <script>
        function showAlertAndRedirect(message, destination) {
            // Show an alert message
            alert(message);

            // Redirect to the specified destination
            window.location.href = destination;
        }

        function validateForm() {
            // Get form input values
            var method = document.forms["paymentForm"]["method"].value;
            var name = document.forms["paymentForm"]["name"].value;
            var cardnumber = document.forms["paymentForm"]["cardnumber"].value;
            var exp = document.forms["paymentForm"]["exp"].value;
            var cvc = document.forms["paymentForm"]["cvc"].value;

            // Check if any of the fields are empty
            if (method === "" || name === "" || cardnumber === "" || exp === "" || cvc === "") {
                showAlertAndRedirect("Payment was unsuccessful. Please fill in all fields.", "index.jsp");
                return false; // Prevent form submission
            }

            // If all fields are filled, you can show the success message here
            alert("Payment was successful.");

            // Continue with the form submission
            return true;
        }
    </script>
</head>

<body>
    <!--=======================Header Start=======================-->
    <div class="header-bar">
    <a href="#">Login</a>
    <a href="#">Terms and Conditions</a>
    <a href="#">FAQ</a>
    <a href="#">Support</a>
</div>

    <!--=======================Header End=======================-->

    <!-- Your form with required fields -->
    <div class="container p-0">
        <div class="card px-4">
            <p class="h8 py-3">Payment Details</p>
            <form name="paymentForm" action="addPayment" method="post" onsubmit="return validateForm()">
                <!-- Payment Method -->
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Payment Method</p>
                        <input class="form-control mb-3" type="text" name="method" placeholder="Visa / Master" required>
                    </div>
                </div>

                <!-- Person Name -->
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Person Name</p>
                        <input class="form-control mb-3" type="text" name="name" placeholder="Name" required>

                    </div>
                </div>

                <!-- Card Number -->
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Card Number</p>
                        <input class="form-control mb-3" type="text" name="cardnumber" placeholder="1234 5678 435678" required>
                    </div>
                </div>

                <!-- Expiry -->
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Expiry</p>
                        <input class="form-control mb-3" type="text" name="exp" placeholder="MM/YYYY" required>
                    </div>
                </div>

                <!-- CVV/CVC -->
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">CVV/CVC</p>
                        <input class="form-control mb-3 pt-2" type="password" name="cvc" placeholder="***" required>
                    </div>
                </div><br><br>

                <!-- Submit Button -->
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <input type="submit" class="btn btn-primary mb-3" name="submit" value="Add Payment Details">
                    </div>
                </div>
            </form>
        </div>
    </div>
    
    <div class="footer">
   
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/1200px-MasterCard_Logo.svg.png" alt="Mastercard">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/PayPal.svg/1200px-PayPal.svg.png" alt="PayPal">
    <!-- Add more payment method icons as needed -->
</div>
</body>
</html>
